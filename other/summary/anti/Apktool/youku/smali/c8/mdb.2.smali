.class public Lc8/mdb;
.super Lc8/hdb;
.source "PathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hdb",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pathMeasureKeyframe:Lc8/ldb;

.field private final point:Landroid/graphics/PointF;

.field private final pos:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lc8/Ecb",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/mdb;->point:Landroid/graphics/PointF;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/mdb;->pos:[F

    .line 19
    return-void
.end method


# virtual methods
.method public getValue(Lc8/Ecb;F)Landroid/graphics/PointF;
    .locals 7
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 22
    move-object v1, p1

    check-cast v1, Lc8/ldb;

    .line 23
    .local v1, "pathKeyframe":Lc8/ldb;
    invoke-virtual {v1}, Lc8/ldb;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 24
    .local v0, "path":Landroid/graphics/Path;
    if-nez v0, :cond_0

    .line 25
    iget-object v2, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    .line 35
    :goto_0
    return-object v2

    .line 28
    :cond_0
    iget-object v2, p0, Lc8/mdb;->pathMeasureKeyframe:Lc8/ldb;

    if-eq v2, v1, :cond_1

    .line 29
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lc8/mdb;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 30
    iput-object v1, p0, Lc8/mdb;->pathMeasureKeyframe:Lc8/ldb;

    .line 33
    :cond_1
    iget-object v2, p0, Lc8/mdb;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lc8/mdb;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lc8/mdb;->pos:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 34
    iget-object v2, p0, Lc8/mdb;->point:Landroid/graphics/PointF;

    iget-object v3, p0, Lc8/mdb;->pos:[F

    aget v3, v3, v6

    iget-object v4, p0, Lc8/mdb;->pos:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    iget-object v2, p0, Lc8/mdb;->point:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method public bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lc8/mdb;->getValue(Lc8/Ecb;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
