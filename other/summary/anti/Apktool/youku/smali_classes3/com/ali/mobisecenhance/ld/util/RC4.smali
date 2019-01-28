.class public Lcom/ali/mobisecenhance/ld/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static HexString2Bytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 86
    .local v2, "size":I
    div-int/lit8 v4, v2, 0x2

    new-array v1, v4, [B

    .line 87
    .local v1, "ret":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 88
    .local v3, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v4, v2, 0x2

    if-ge v0, v4, :cond_0

    .line 89
    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v3, v5

    invoke-static {v4, v5}, Lcom/ali/mobisecenhance/ld/util/RC4;->uniteBytes(BB)B

    move-result v4

    aput-byte v4, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

.method private static RC4Base([BLjava/lang/String;)[B
    .locals 9
    .param p0, "input"    # [B
    .param p1, "mKkey"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "x":I
    const/4 v6, 0x0

    .line 105
    .local v6, "y":I
    invoke-static {p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->initKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    .local v1, "key":[B
    array-length v7, p0

    new-array v2, v7, [B

    .line 109
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p0

    if-ge v0, v7, :cond_0

    .line 110
    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    .line 111
    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v6

    and-int/lit16 v6, v7, 0xff

    .line 112
    aget-byte v3, v1, v4

    .line 113
    .local v3, "tmp":B
    aget-byte v7, v1, v6

    aput-byte v7, v1, v4

    .line 114
    aput-byte v3, v1, v6

    .line 115
    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, v1, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    and-int/lit16 v5, v7, 0xff

    .line 116
    .local v5, "xorIndex":I
    aget-byte v7, p0, v0

    aget-byte v8, v1, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "tmp":B
    .end local v5    # "xorIndex":I
    :cond_0
    return-object v2
.end method

.method private static asString([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    .local v1, "strbuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 44
    aget-byte v2, p0, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 13
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ali/mobisecenhance/ld/util/RC4;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decry_RC4([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 6
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/util/RC4;->asString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encry_RC4_byte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 31
    .local v0, "b_data":[B
    invoke-static {v0, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static encry_RC4_byte([BLjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->RC4Base([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encry_RC4_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ld/util/RC4;->encry_RC4_byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/util/RC4;->asString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/util/RC4;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static initKey(Ljava/lang/String;)[B
    .locals 9
    .param p0, "aKey"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 51
    .local v0, "b_key":[B
    new-array v4, v8, [B

    .line 53
    .local v4, "state":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 54
    int-to-byte v6, v1

    aput-byte v6, v4, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "index1":I
    const/4 v3, 0x0

    .line 58
    .local v3, "index2":I
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_3

    .line 59
    :cond_1
    const/4 v4, 0x0

    .line 68
    .end local v4    # "state":[B
    :cond_2
    return-object v4

    .line 61
    .restart local v4    # "state":[B
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_2

    .line 62
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v4, v1

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v3, v6, 0xff

    .line 63
    aget-byte v5, v4, v1

    .line 64
    .local v5, "tmp":B
    aget-byte v6, v4, v3

    aput-byte v6, v4, v1

    .line 65
    aput-byte v5, v4, v3

    .line 66
    add-int/lit8 v6, v2, 0x1

    array-length v7, v0

    rem-int v2, v6, v7

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v3, ""

    .line 73
    .local v3, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 75
    .local v0, "ch":I
    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "s4":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "ch":I
    .end local v2    # "s4":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static uniteBytes(BB)B
    .locals 8
    .param p0, "src0"    # B
    .param p1, "src1"    # B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-char v0, v3

    .line 96
    .local v0, "_b0":C
    shl-int/lit8 v3, v0, 0x4

    int-to-char v0, v3

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p1, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-char v1, v3

    .line 98
    .local v1, "_b1":C
    xor-int v3, v0, v1

    int-to-byte v2, v3

    .line 99
    .local v2, "ret":B
    return v2
.end method
