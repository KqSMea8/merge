.class public Lc8/NTb;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/LTb;,
        Lc8/MTb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static _prepareKey(Ljava/lang/String;)Lc8/MTb;
    .locals 9
    .param p0, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    new-instance v3, Lc8/MTb;

    invoke-direct {v3, v5}, Lc8/MTb;-><init>(Lc8/LTb;)V

    .line 33
    .local v3, "lRC4Key":Lc8/MTb;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 34
    iget-object v6, v3, Lc8/MTb;->state:[I

    aput v0, v6, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput v7, v3, Lc8/MTb;->x:I

    .line 37
    iput v7, v3, Lc8/MTb;->y:I

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 41
    .local v2, "index2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v3, Lc8/MTb;->state:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x100

    .line 43
    iget-object v6, v3, Lc8/MTb;->state:[I

    aget v4, v6, v0

    .line 44
    .local v4, "swapInt":I
    iget-object v6, v3, Lc8/MTb;->state:[I

    iget-object v7, v3, Lc8/MTb;->state:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 45
    iget-object v6, v3, Lc8/MTb;->state:[I

    aput v4, v6, v2

    .line 46
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v1, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    .end local v4    # "swapInt":I
    :catch_0
    move-exception v6

    move-object v3, v5

    .line 53
    .end local v0    # "counter":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "lRC4Key":Lc8/MTb;
    :cond_1
    :goto_2
    return-object v3

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method

.method private static _rc4([BLc8/MTb;)[B
    .locals 7
    .param p0, "pData"    # [B
    .param p1, "pKey"    # Lc8/MTb;

    .prologue
    .line 57
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 62
    iget v2, p1, Lc8/MTb;->x:I

    .line 63
    .local v2, "x":I
    iget v4, p1, Lc8/MTb;->y:I

    .line 65
    .local v4, "y":I
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 67
    add-int/lit8 v5, v2, 0x1

    rem-int/lit16 v2, v5, 0x100

    .line 68
    iget-object v5, p1, Lc8/MTb;->state:[I

    aget v5, v5, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x100

    .line 69
    iget-object v5, p1, Lc8/MTb;->state:[I

    aget v1, v5, v2

    .line 70
    .local v1, "lSwapInt":I
    iget-object v5, p1, Lc8/MTb;->state:[I

    iget-object v6, p1, Lc8/MTb;->state:[I

    aget v6, v6, v4

    aput v6, v5, v2

    .line 71
    iget-object v5, p1, Lc8/MTb;->state:[I

    aput v1, v5, v4

    .line 72
    iget-object v5, p1, Lc8/MTb;->state:[I

    aget v5, v5, v2

    iget-object v6, p1, Lc8/MTb;->state:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    rem-int/lit16 v3, v5, 0x100

    .line 74
    .local v3, "xorIndex":I
    aget-byte v5, p0, v0

    iget-object v6, p1, Lc8/MTb;->state:[I

    aget v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "lSwapInt":I
    .end local v3    # "xorIndex":I
    :cond_0
    iput v2, p1, Lc8/MTb;->x:I

    .line 77
    iput v4, p1, Lc8/MTb;->y:I

    .line 80
    .end local v0    # "counter":I
    .end local v2    # "x":I
    .end local v4    # "y":I
    .end local p0    # "pData":[B
    :goto_1
    return-object p0

    .restart local p0    # "pData":[B
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static rc4([BLjava/lang/String;)[B
    .locals 2
    .param p0, "pData"    # [B
    .param p1, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 19
    invoke-static {p1}, Lc8/NTb;->_prepareKey(Ljava/lang/String;)Lc8/MTb;

    move-result-object v0

    .line 20
    .local v0, "lRC4Key":Lc8/MTb;
    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, v0}, Lc8/NTb;->_rc4([BLc8/MTb;)[B

    move-result-object v1

    .line 24
    .end local v0    # "lRC4Key":Lc8/MTb;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
