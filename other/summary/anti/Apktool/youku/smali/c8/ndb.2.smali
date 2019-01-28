.class public Lc8/ndb;
.super Lc8/hdb;
.source "PointKeyframeAnimation.java"


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
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/ndb;->point:Landroid/graphics/PointF;

    .line 14
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
    .line 17
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    iget-object v2, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Missing values for keyframe."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_1
    iget-object v1, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    .line 22
    .local v1, "startPoint":Landroid/graphics/PointF;
    iget-object v0, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .local v0, "endPoint":Landroid/graphics/PointF;
    iget-object v2, p0, Lc8/ndb;->point:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    iget-object v2, p0, Lc8/ndb;->point:Landroid/graphics/PointF;

    return-object v2
.end method

.method public bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lc8/ndb;->getValue(Lc8/Ecb;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
