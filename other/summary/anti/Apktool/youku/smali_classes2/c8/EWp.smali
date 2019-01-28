.class public final Lc8/EWp;
.super Ljava/lang/Object;
.source "MurmurHashUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRandom(JLjava/lang/String;)I
    .locals 8
    .param p0, "n"    # J
    .param p2, "utdId"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 85
    .local v0, "bs":[B
    const/4 v4, 0x0

    array-length v5, v0

    const v6, 0x7fffffff

    invoke-static {v0, v4, v5, v6}, Lc8/EWp;->hash([BIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v2, v4

    .line 86
    .local v2, "hash":J
    rem-long v4, v2, p0

    long-to-int v1, v4

    .line 90
    .end local v0    # "bs":[B
    .end local v2    # "hash":J
    .local v1, "random":I
    :goto_0
    return v1

    .line 88
    .end local v1    # "random":I
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    long-to-double v6, p0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .restart local v1    # "random":I
    goto :goto_0
.end method

.method public static final hash([BIII)I
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 33
    const v7, 0x5bd1e995

    .line 34
    .local v7, "m":I
    const/16 v8, 0x18

    .line 36
    .local v8, "r":I
    xor-int v0, p3, p2

    .line 38
    .local v0, "h":I
    shr-int/lit8 v5, p2, 0x2

    .line 40
    .local v5, "len_4":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 41
    shl-int/lit8 v2, v1, 0x2

    .line 42
    .local v2, "i_4":I
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x3

    aget-byte v3, p0, v9

    .line 43
    .local v3, "k":I
    shl-int/lit8 v3, v3, 0x8

    .line 44
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 45
    shl-int/lit8 v3, v3, 0x8

    .line 46
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 47
    shl-int/lit8 v3, v3, 0x8

    .line 48
    add-int v9, p1, v2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 49
    mul-int/2addr v3, v7

    .line 50
    ushr-int v9, v3, v8

    xor-int/2addr v3, v9

    .line 51
    mul-int/2addr v3, v7

    .line 52
    mul-int/2addr v0, v7

    .line 53
    xor-int/2addr v0, v3

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i_4":I
    .end local v3    # "k":I
    :cond_0
    shl-int/lit8 v6, v5, 0x2

    .line 58
    .local v6, "len_m":I
    sub-int v4, p2, v6

    .line 60
    .local v4, "left":I
    if-eqz v4, :cond_4

    .line 61
    const/4 v9, 0x3

    if-lt v4, v9, :cond_1

    .line 62
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x3

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v0, v9

    .line 64
    :cond_1
    const/4 v9, 0x2

    if-lt v4, v9, :cond_2

    .line 65
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v0, v9

    .line 67
    :cond_2
    if-lez v4, :cond_3

    .line 68
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, p0, v9

    xor-int/2addr v0, v9

    .line 71
    :cond_3
    mul-int/2addr v0, v7

    .line 74
    :cond_4
    ushr-int/lit8 v9, v0, 0xd

    xor-int/2addr v0, v9

    .line 75
    mul-int/2addr v0, v7

    .line 76
    ushr-int/lit8 v9, v0, 0xf

    xor-int/2addr v0, v9

    .line 78
    return v0
.end method
