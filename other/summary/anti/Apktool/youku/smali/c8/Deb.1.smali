.class public Lc8/Deb;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 0
    .param p1, "positions"    # [F
    .param p2, "colors"    # [I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lc8/Deb;->positions:[F

    .line 13
    iput-object p2, p0, Lc8/Deb;->colors:[I

    .line 14
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lc8/Deb;->colors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lc8/Deb;->positions:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Deb;->colors:[I

    array-length v0, v0

    return v0
.end method

.method public lerp(Lc8/Deb;Lc8/Deb;F)V
    .locals 4
    .param p1, "gc1"    # Lc8/Deb;
    .param p2, "gc2"    # Lc8/Deb;
    .param p3, "progress"    # F

    .prologue
    .line 29
    iget-object v1, p1, Lc8/Deb;->colors:[I

    array-length v1, v1

    iget-object v2, p2, Lc8/Deb;->colors:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/Deb;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lc8/Deb;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lc8/Deb;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lc8/Deb;->positions:[F

    iget-object v2, p1, Lc8/Deb;->positions:[F

    aget v2, v2, v0

    iget-object v3, p2, Lc8/Deb;->positions:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lc8/Jfb;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 36
    iget-object v1, p0, Lc8/Deb;->colors:[I

    iget-object v2, p1, Lc8/Deb;->colors:[I

    aget v2, v2, v0

    iget-object v3, p2, Lc8/Deb;->colors:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lc8/Efb;->evaluate(FII)I

    move-result v2

    aput v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
