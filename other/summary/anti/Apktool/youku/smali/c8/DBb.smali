.class public Lc8/DBb;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2UTF8String([B)Ljava/lang/String;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "dst":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "dst":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    .restart local v0    # "dst":Ljava/lang/String;
    goto :goto_0
.end method

.method public static bytes2UTF8string([BII)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    .line 49
    :cond_0
    const-string/jumbo v2, ""

    .line 57
    :goto_0
    return-object v2

    .line 52
    :cond_1
    new-array v1, p2, [B

    .line 53
    .local v1, "tempbuf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 54
    aget-byte v2, p0, p1

    aput-byte v2, v1, v0

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_2
    invoke-static {v1}, Lc8/DBb;->bytes2UTF8String([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static bytesToInt([B)I
    .locals 4
    .param p0, "buf"    # [B

    .prologue
    .line 24
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 32
    :cond_1
    return v1

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 30
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v3, v3, 0x3

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bytesToInt([BII)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 10
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    return v2

    .line 14
    :cond_1
    new-array v1, p2, [B

    .line 15
    .local v1, "tempbuf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 16
    aget-byte v2, p0, p1

    aput-byte v2, v1, v0

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {v1}, Lc8/DBb;->bytesToInt([B)I

    move-result v2

    goto :goto_0
.end method

.method public static intToBytes(II)[B
    .locals 3
    .param p0, "i"    # I
    .param p1, "n"    # I

    .prologue
    .line 61
    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    if-gtz p1, :cond_2

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 69
    :cond_1
    return-object v0

    .line 65
    :cond_2
    new-array v0, p1, [B

    .line 66
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 67
    sub-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToBytes1(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 73
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 74
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 75
    return-object v0
.end method

.method public static intToBytes2(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 79
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 80
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 82
    return-object v0
.end method

.method public static intToBytes3(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 86
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 87
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 89
    const/4 v1, 0x2

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 90
    return-object v0
.end method

.method public static intToBytes4(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 94
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 95
    .local v0, "result":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 99
    return-object v0
.end method

.method public static subBytes([BII)[B
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 103
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_2

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 111
    :cond_1
    return-object v0

    .line 107
    :cond_2
    new-array v0, p2, [B

    .line 108
    .local v0, "bs":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 109
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
