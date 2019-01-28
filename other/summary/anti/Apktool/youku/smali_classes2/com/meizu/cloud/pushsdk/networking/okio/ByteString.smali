.class public Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->EMPTY:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    return-void

    .line 48
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    .line 61
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "base64 == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    invoke-static {p0}, Lc8/vJd;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    .local v0, "decoded":[B
    if-eqz v0, :cond_1

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "hex == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 161
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 162
    shl-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v0, v4, 0x4

    .line 163
    .local v0, "d1":I
    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->decodeHexDigit(C)I

    move-result v1

    .line 164
    .local v1, "d2":I
    add-int v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_2
    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v4

    return-object v4
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 170
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 172
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 3
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "s == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    sget-object v1, Lc8/PJd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 88
    .local v0, "byteString":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    iput-object p0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public static varargs of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 67
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 76
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lc8/PJd;->checkOffsetAndCount(JJJ)V

    .line 79
    new-array v6, p2, [B

    .line 80
    .local v6, "copy":[B
    const/4 v0, 0x0

    invoke-static {p0, p1, v6, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "in == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_0
    if-gez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_1
    new-array v2, p1, [B

    .line 187
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 188
    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 189
    .local v1, "read":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 187
    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 191
    .end local v1    # "read":I
    :cond_3
    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v3, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 364
    .local v1, "dataLength":I
    invoke-static {p1, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    .line 366
    .local v0, "byteString":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :try_start_0
    const-class v3, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 367
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v2, p0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    return-void

    .line 370
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 372
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 379
    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v0}, Lc8/vJd;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v0}, Lc8/vJd;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)I
    .locals 9
    .param p1, "byteString"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 338
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v4

    .line 339
    .local v4, "sizeA":I
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v5

    .line 340
    .local v5, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 341
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 342
    .local v0, "byteA":I
    invoke-virtual {p1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 343
    .local v1, "byteB":I
    if-eq v0, v1, :cond_2

    .line 344
    if-ge v0, v1, :cond_1

    .line 347
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_0
    :goto_1
    return v6

    .restart local v0    # "byteA":I
    .restart local v1    # "byteB":I
    :cond_1
    move v6, v7

    .line 344
    goto :goto_1

    .line 340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    .line 347
    :cond_4
    if-lt v4, v5, :cond_0

    move v6, v7

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->compareTo(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 329
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 327
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .line 328
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v3, v3

    .line 329
    invoke-virtual {p1, v2, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 327
    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hashCode:I

    .line 334
    .local v0, "result":I
    if-eqz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .end local v0    # "result":I
    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .prologue
    .line 146
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v3, v4, [C

    .line 147
    .local v3, "result":[C
    const/4 v1, 0x0

    .line 148
    .local v1, "c":I
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    .end local v1    # "c":I
    .local v2, "c":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v0, v5, v4

    .line 149
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "c":I
    .restart local v1    # "c":I
    sget-object v7, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v2

    .line 150
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .restart local v2    # "c":I
    sget-object v7, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v0, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v1

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "b":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public md5()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "MD5"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/meizu/cloud/pushsdk/networking/okio/ByteString;II)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    .line 322
    invoke-static {v0, p1, p2, p3, p4}, Lc8/PJd;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 320
    goto :goto_0
.end method

.method public sha256()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public substring(I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->substring(II)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 258
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "beginIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    if-le p2, v2, :cond_1

    .line 260
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_1
    sub-int v1, p2, p1

    .line 264
    .local v1, "subLen":I
    if-gez v1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "endIndex < beginIndex"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    if-ne p2, v2, :cond_3

    .line 272
    .end local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :goto_0
    return-object p0

    .line 270
    .restart local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :cond_3
    new-array v0, v1, [B

    .line 271
    .local v0, "copy":[B
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .end local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    goto :goto_0
.end method

.method public toAsciiLowercase()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x41

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 203
    .local v0, "c":B
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    .line 207
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 208
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 209
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 210
    aget-byte v0, v3, v1

    .line 211
    if-lt v0, v5, :cond_0

    if-gt v0, v6, :cond_0

    .line 212
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_1
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .end local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 216
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_2
    return-object p0

    .line 201
    .restart local v0    # "c":B
    .restart local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toAsciiUppercase()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 226
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 228
    .local v0, "c":B
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    .line 232
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 233
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 234
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 235
    aget-byte v0, v3, v1

    .line 236
    if-lt v0, v5, :cond_0

    if-gt v0, v6, :cond_0

    .line 237
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_1
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .end local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 241
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_2
    return-object p0

    .line 226
    .restart local v0    # "c":B
    .restart local p0    # "this":Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 352
    const-string/jumbo v0, "ByteString[size=0]"

    .line 359
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 356
    const-string/jumbo v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    const-string/jumbo v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->md5()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    .line 96
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    sget-object v2, Lc8/PJd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Lc8/yJd;)V
    .locals 3
    .param p1, "buffer"    # Lc8/yJd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lc8/yJd;->write([BII)Lc8/yJd;

    .line 303
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 298
    return-void
.end method