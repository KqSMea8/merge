.class public Lc8/UZn;
.super Ljava/lang/Object;
.source "Radixes.java"


# static fields
.field static final MAXRADIX:I

.field static final SS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lc8/UZn;->MAXRADIX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)J
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 42
    const-wide/16 v4, 0x0

    .line 49
    :cond_0
    return-wide v4

    .line 44
    :cond_1
    const-wide/16 v4, 0x0

    .local v4, "result":J
    const-wide/16 v0, 0x1

    .line 45
    .local v0, "multiplier":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "pos":I
    :goto_0
    if-lez v2, :cond_0

    .line 46
    const-string/jumbo v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 47
    int-to-long v6, p1

    mul-long/2addr v0, v6

    .line 45
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static decodeNegative(Ljava/lang/String;I)J
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .prologue
    .line 53
    if-nez p0, :cond_1

    .line 54
    const-wide/16 v4, 0x0

    .line 62
    :cond_0
    return-wide v4

    .line 56
    :cond_1
    const-wide/16 v4, 0x0

    .local v4, "result":J
    const-wide/16 v0, 0x1

    .line 58
    .local v0, "multiplier":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "pos":I
    :goto_0
    if-lez v2, :cond_0

    .line 59
    const-string/jumbo v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    int-to-long v6, v3

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 60
    int-to-long v6, p1

    mul-long/2addr v0, v6

    .line 58
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static digest16(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 16
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lc8/UZn;->encode(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static digest32(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 12
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lc8/UZn;->encode(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static digest62(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 8
    sget v0, Lc8/UZn;->MAXRADIX:I

    invoke-static {p0, p1, v0}, Lc8/UZn;->encode(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(JI)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J
    .param p2, "radix"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 20
    sget v3, Lc8/UZn;->MAXRADIX:I

    if-le p2, v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The parameter \'radix\' cannot greater than ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lc8/UZn;->MAXRADIX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, "revert":Z
    cmp-long v3, p0, v6

    if-gez v3, :cond_1

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 27
    const/4 v1, 0x1

    .line 30
    :cond_1
    cmp-long v3, p0, v6

    if-nez v3, :cond_2

    const-string/jumbo v0, "0"

    .line 31
    .local v0, "result":Ljava/lang/String;
    :goto_0
    cmp-long v3, p0, v6

    if-lez v3, :cond_4

    .line 32
    int-to-long v4, p2

    rem-long v4, p0, v4

    long-to-int v2, v4

    .line 33
    .local v2, "v":I
    int-to-long v4, p2

    div-long/2addr p0, v4

    .line 34
    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sub-int v5, p2, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_1
    goto :goto_0

    .line 30
    .end local v0    # "result":Ljava/lang/String;
    .end local v2    # "v":I
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 34
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v2    # "v":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 37
    .end local v2    # "v":I
    :cond_4
    if-eqz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_5
    return-object v0
.end method
