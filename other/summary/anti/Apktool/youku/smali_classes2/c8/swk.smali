.class public Lc8/swk;
.super Lc8/uwk;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/swk;->CHUNK_SEPARATOR:[B

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/swk;->STANDARD_ENCODE_TABLE:[B

    .line 40
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc8/swk;->URL_SAFE_ENCODE_TABLE:[B

    .line 53
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lc8/swk;->DECODE_TABLE:[B

    return-void

    .line 26
    .line 33
    .line 40
    .line 53
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/swk;-><init>(I)V

    .line 115
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 158
    sget-object v0, Lc8/swk;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lc8/swk;-><init>(I[B)V

    .line 159
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/swk;-><init>(I[BZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 8
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 218
    const/4 v4, 0x3

    if-nez p2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v6, p1, v2}, Lc8/uwk;-><init>(IIII)V

    .line 79
    sget-object v2, Lc8/swk;->DECODE_TABLE:[B

    iput-object v2, p0, Lc8/swk;->decodeTable:[B

    .line 222
    if-eqz p2, :cond_3

    .line 223
    invoke-virtual {p0, p2}, Lc8/swk;->containsAlphabetOrPad([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 226
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "sep":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-lez p1, :cond_2

    .line 233
    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lc8/swk;->encodeSize:I

    .line 234
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lc8/swk;->lineSeparator:[B

    .line 235
    iget-object v2, p0, Lc8/swk;->lineSeparator:[B

    array-length v4, p2

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    :goto_1
    iget v2, p0, Lc8/swk;->encodeSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lc8/swk;->decodeSize:I

    .line 245
    if-eqz p3, :cond_4

    sget-object v2, Lc8/swk;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v2, p0, Lc8/swk;->encodeTable:[B

    .line 246
    return-void

    .line 218
    :cond_1
    array-length v2, p2

    goto :goto_0

    .line 237
    :cond_2
    iput v6, p0, Lc8/swk;->encodeSize:I

    .line 238
    iput-object v7, p0, Lc8/swk;->lineSeparator:[B

    goto :goto_1

    .line 241
    :cond_3
    iput v6, p0, Lc8/swk;->encodeSize:I

    .line 242
    iput-object v7, p0, Lc8/swk;->lineSeparator:[B

    goto :goto_1

    .line 245
    :cond_4
    sget-object v2, Lc8/swk;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 134
    const/16 v0, 0x4c

    sget-object v1, Lc8/swk;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lc8/swk;-><init>(I[BZ)V

    .line 135
    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 569
    new-instance v0, Lc8/swk;

    invoke-direct {v0}, Lc8/swk;-><init>()V

    invoke-virtual {v0, p0}, Lc8/swk;->decode([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method decode([BIILc8/twk;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lc8/twk;

    .prologue
    const/4 v7, 0x1

    .line 363
    iget-boolean v5, p4, Lc8/twk;->eof:Z

    if-eqz v5, :cond_1

    .line 420
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 366
    :cond_1
    if-gez p3, :cond_2

    .line 367
    iput-boolean v7, p4, Lc8/twk;->eof:Z

    .line 369
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 370
    iget v5, p0, Lc8/swk;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lc8/swk;->ensureBufferSize(ILc8/twk;)[B

    move-result-object v1

    .line 371
    .local v1, "buffer":[B
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 372
    .local v0, "b":B
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_3

    .line 374
    iput-boolean v7, p4, Lc8/twk;->eof:Z

    .line 395
    .end local v0    # "b":B
    .end local v1    # "buffer":[B
    :goto_2
    iget-boolean v5, p4, Lc8/twk;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lc8/twk;->modulus:I

    if-eqz v5, :cond_0

    .line 396
    iget v5, p0, Lc8/swk;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lc8/swk;->ensureBufferSize(ILc8/twk;)[B

    move-result-object v1

    .line 400
    .restart local v1    # "buffer":[B
    iget v5, p4, Lc8/twk;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 417
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lc8/twk;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 377
    .restart local v0    # "b":B
    :cond_3
    if-ltz v0, :cond_4

    sget-object v5, Lc8/swk;->DECODE_TABLE:[B

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 378
    sget-object v5, Lc8/swk;->DECODE_TABLE:[B

    aget-byte v4, v5, v0

    .line 379
    .local v4, "result":I
    if-ltz v4, :cond_4

    .line 380
    iget v5, p4, Lc8/twk;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x4

    iput v5, p4, Lc8/twk;->modulus:I

    .line 381
    iget v5, p4, Lc8/twk;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    iput v5, p4, Lc8/twk;->ibitWorkArea:I

    .line 382
    iget v5, p4, Lc8/twk;->modulus:I

    if-nez v5, :cond_4

    .line 383
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 384
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 385
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 369
    .end local v4    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 406
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v5, p4, Lc8/twk;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    iput v5, p4, Lc8/twk;->ibitWorkArea:I

    .line 409
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 412
    :pswitch_2
    iget v5, p4, Lc8/twk;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p4, Lc8/twk;->ibitWorkArea:I

    .line 413
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 414
    iget v5, p4, Lc8/twk;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lc8/twk;->pos:I

    iget v6, p4, Lc8/twk;->ibitWorkArea:I

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic decode([B)[B
    .locals 1
    .param p1, "x0"    # [B

    .prologue
    .line 7
    invoke-super {p0, p1}, Lc8/uwk;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 582
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/swk;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lc8/swk;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
