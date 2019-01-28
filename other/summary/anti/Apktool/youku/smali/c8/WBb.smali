.class public Lc8/WBb;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UBb;,
        Lc8/VBb;
    }
.end annotation


# static fields
.field private static final RC4_PK:Ljava/lang/String; = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static doRc4([BLc8/VBb;)[B
    .locals 7
    .param p0, "pData"    # [B
    .param p1, "pKey"    # Lc8/VBb;

    .prologue
    .line 64
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 69
    iget v2, p1, Lc8/VBb;->x:I

    .line 70
    .local v2, "x":I
    iget v4, p1, Lc8/VBb;->y:I

    .line 72
    .local v4, "y":I
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 74
    add-int/lit8 v5, v2, 0x1

    rem-int/lit16 v2, v5, 0x100

    .line 75
    iget-object v5, p1, Lc8/VBb;->state:[I

    aget v5, v5, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x100

    .line 76
    iget-object v5, p1, Lc8/VBb;->state:[I

    aget v1, v5, v2

    .line 77
    .local v1, "lSwapInt":I
    iget-object v5, p1, Lc8/VBb;->state:[I

    iget-object v6, p1, Lc8/VBb;->state:[I

    aget v6, v6, v4

    aput v6, v5, v2

    .line 78
    iget-object v5, p1, Lc8/VBb;->state:[I

    aput v1, v5, v4

    .line 79
    iget-object v5, p1, Lc8/VBb;->state:[I

    aget v5, v5, v2

    iget-object v6, p1, Lc8/VBb;->state:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    rem-int/lit16 v3, v5, 0x100

    .line 81
    .local v3, "xorIndex":I
    aget-byte v5, p0, v0

    iget-object v6, p1, Lc8/VBb;->state:[I

    aget v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "lSwapInt":I
    .end local v3    # "xorIndex":I
    :cond_0
    iput v2, p1, Lc8/VBb;->x:I

    .line 84
    iput v4, p1, Lc8/VBb;->y:I

    .line 87
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

.method private static prepareKey(Ljava/lang/String;)Lc8/VBb;
    .locals 9
    .param p0, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    new-instance v3, Lc8/VBb;

    invoke-direct {v3, v5}, Lc8/VBb;-><init>(Lc8/UBb;)V

    .line 40
    .local v3, "lRC4Key":Lc8/VBb;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 41
    iget-object v6, v3, Lc8/VBb;->state:[I

    aput v0, v6, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iput v7, v3, Lc8/VBb;->x:I

    .line 44
    iput v7, v3, Lc8/VBb;->y:I

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 48
    .local v2, "index2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v3, Lc8/VBb;->state:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x100

    .line 50
    iget-object v6, v3, Lc8/VBb;->state:[I

    aget v4, v6, v0

    .line 51
    .local v4, "swapInt":I
    iget-object v6, v3, Lc8/VBb;->state:[I

    iget-object v7, v3, Lc8/VBb;->state:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 52
    iget-object v6, v3, Lc8/VBb;->state:[I

    aput v4, v6, v2

    .line 53
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v1, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v4    # "swapInt":I
    :catch_0
    move-exception v6

    move-object v3, v5

    .line 60
    .end local v0    # "counter":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "lRC4Key":Lc8/VBb;
    :cond_1
    :goto_2
    return-object v3

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method

.method public static rc4([B)[B
    .locals 1
    .param p0, "pData"    # [B

    .prologue
    .line 21
    const-string/jumbo v0, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {p0, v0}, Lc8/WBb;->rc4([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static rc4([BLjava/lang/String;)[B
    .locals 2
    .param p0, "pData"    # [B
    .param p1, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 26
    invoke-static {p1}, Lc8/WBb;->prepareKey(Ljava/lang/String;)Lc8/VBb;

    move-result-object v0

    .line 27
    .local v0, "lRC4Key":Lc8/VBb;
    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0, v0}, Lc8/WBb;->doRc4([BLc8/VBb;)[B

    move-result-object v1

    .line 31
    .end local v0    # "lRC4Key":Lc8/VBb;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
