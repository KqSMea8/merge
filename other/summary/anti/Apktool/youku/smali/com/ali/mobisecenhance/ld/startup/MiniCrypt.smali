.class public Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;
.super Ljava/lang/Object;
.source "MiniCrypt.java"


# static fields
.field private static final legalChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B

    .prologue
    .line 11
    const/4 v7, 0x0

    .line 12
    .local v7, "start":I
    array-length v4, p0

    .line 13
    .local v4, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 15
    .local v0, "buf":Ljava/lang/StringBuffer;
    add-int/lit8 v2, v4, -0x3

    .line 16
    .local v2, "end":I
    move v3, v7

    .line 17
    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "n":I
    move v6, v5

    .line 19
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 20
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v1, v8, v9

    .line 23
    .local v1, "d":I
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    and-int/lit8 v9, v1, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    add-int/lit8 v3, v3, 0x3

    .line 30
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    const/16 v8, 0xe

    if-lt v6, v8, :cond_0

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v6, v5

    .line 34
    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_0

    .line 36
    .end local v1    # "d":I
    :cond_1
    add-int v8, v7, v4

    add-int/lit8 v8, v8, -0x2

    if-ne v3, v8, :cond_3

    .line 37
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v1, v8, v9

    .line 39
    .restart local v1    # "d":I
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .end local v1    # "d":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 43
    :cond_3
    add-int v8, v7, v4

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_2

    .line 44
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v1, v8, 0x10

    .line 46
    .restart local v1    # "d":I
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    const-string v8, "=="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static encry_RC4_byte([BLjava/lang/String;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "mKkey"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 57
    :cond_0
    const/4 v2, 0x0

    .line 75
    :cond_1
    return-object v2

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    .local v4, "x":I
    const/4 v6, 0x0

    .line 61
    .local v6, "y":I
    invoke-static {p1}, Lcom/ali/mobisecenhance/ld/startup/MiniCrypt;->initKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 63
    .local v1, "key":[B
    array-length v7, p0

    new-array v2, v7, [B

    .line 65
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p0

    if-ge v0, v7, :cond_1

    .line 66
    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    .line 67
    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v6

    and-int/lit16 v6, v7, 0xff

    .line 68
    aget-byte v3, v1, v4

    .line 69
    .local v3, "tmp":B
    aget-byte v7, v1, v6

    aput-byte v7, v1, v4

    .line 70
    aput-byte v3, v1, v6

    .line 71
    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, v1, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    and-int/lit16 v5, v7, 0xff

    .line 72
    .local v5, "xorIndex":I
    aget-byte v7, p0, v0

    aget-byte v8, v1, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static initKey(Ljava/lang/String;)[B
    .locals 9
    .param p0, "aKey"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 80
    .local v0, "b_key":[B
    new-array v4, v8, [B

    .line 82
    .local v4, "state":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 83
    int-to-byte v6, v1

    aput-byte v6, v4, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 86
    .local v2, "index1":I
    const/4 v3, 0x0

    .line 87
    .local v3, "index2":I
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_3

    .line 88
    :cond_1
    const/4 v4, 0x0

    .line 97
    .end local v4    # "state":[B
    :cond_2
    return-object v4

    .line 90
    .restart local v4    # "state":[B
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_2

    .line 91
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v4, v1

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    and-int/lit16 v3, v6, 0xff

    .line 92
    aget-byte v5, v4, v1

    .line 93
    .local v5, "tmp":B
    aget-byte v6, v4, v3

    aput-byte v6, v4, v1

    .line 94
    aput-byte v5, v4, v3

    .line 95
    add-int/lit8 v6, v2, 0x1

    array-length v7, v0

    rem-int v2, v6, v7

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
