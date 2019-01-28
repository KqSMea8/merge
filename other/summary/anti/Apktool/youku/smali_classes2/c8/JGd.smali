.class public Lc8/JGd;
.super Ljava/lang/Object;
.source "EncryptBase64.java"


# static fields
.field private static final base64_table:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C


# instance fields
.field private mBase64Table:[C

.field private offset:I

.field private private_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/JGd;->base64_table:[C

    .line 13
    const-string/jumbo v0, "00000011"

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lc8/JGd;->last2byte:C

    .line 15
    const-string/jumbo v0, "00001111"

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lc8/JGd;->last4byte:C

    .line 17
    const-string/jumbo v0, "00111111"

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lc8/JGd;->last6byte:C

    .line 17
    return-void

    .line 6
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lc8/JGd;->offset:I

    .line 25
    iput-object p1, p0, Lc8/JGd;->private_key:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lc8/JGd;->initPrivateTable()V

    .line 27
    return-void
.end method

.method private initPrivateTable()V
    .locals 5

    .prologue
    .line 84
    sget-object v2, Lc8/JGd;->base64_table:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 85
    .local v1, "private_base64_table":[C
    iget-object v2, p0, Lc8/JGd;->private_key:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    rem-int/lit8 v2, v2, 0xd

    iput v2, p0, Lc8/JGd;->offset:I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lc8/JGd;->base64_table:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 87
    sget-object v2, Lc8/JGd;->base64_table:[C

    iget v3, p0, Lc8/JGd;->offset:I

    add-int/2addr v3, v0

    sget-object v4, Lc8/JGd;->base64_table:[C

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iput-object v1, p0, Lc8/JGd;->mBase64Table:[C

    .line 91
    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .locals 10
    .param p1, "contents"    # [B

    .prologue
    .line 30
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 59
    :goto_0
    return-object v7

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v7, p1

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x2

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .local v0, "_sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 35
    .local v4, "i":I
    array-length v6, p1

    .local v6, "len":I
    move v5, v4

    .line 36
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 37
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v7, p1, v5

    and-int/lit16 v1, v7, 0xff

    .line 38
    .local v1, "b1":I
    if-ne v4, v6, :cond_2

    .line 39
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    ushr-int/lit8 v8, v1, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last2byte:C

    and-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v7, "=="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .end local v1    # "b1":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 44
    .restart local v1    # "b1":I
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-byte v7, p1, v4

    and-int/lit16 v2, v7, 0xff

    .line 45
    .local v2, "b2":I
    if-ne v5, v6, :cond_3

    .line 46
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    ushr-int/lit8 v8, v1, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last2byte:C

    and-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v9, v2, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last4byte:C

    and-int/2addr v8, v2

    shl-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 50
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 52
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v7, p1, v5

    and-int/lit16 v3, v7, 0xff

    .line 53
    .local v3, "b3":I
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    ushr-int/lit8 v8, v1, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last2byte:C

    and-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v9, v2, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last4byte:C

    and-int/2addr v8, v2

    shl-int/lit8 v8, v8, 0x2

    ushr-int/lit8 v9, v3, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v7, p0, Lc8/JGd;->mBase64Table:[C

    sget-char v8, Lc8/JGd;->last6byte:C

    and-int/2addr v8, v3

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1

    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    :cond_4
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2
.end method
