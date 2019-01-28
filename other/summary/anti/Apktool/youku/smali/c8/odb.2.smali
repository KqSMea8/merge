.class public Lc8/odb;
.super Lc8/hdb;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hdb",
        "<",
        "Lc8/Kdb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/Kdb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/ScaleXY;>;>;"
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getValue(Lc8/Ecb;F)Lc8/Kdb;
    .locals 6
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Lc8/Kdb;",
            ">;F)",
            "Lc8/Kdb;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/ScaleXY;>;"
    iget-object v2, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Missing values for keyframe."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_1
    iget-object v1, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v1, Lc8/Kdb;

    .line 19
    .local v1, "startTransform":Lc8/Kdb;
    iget-object v0, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v0, Lc8/Kdb;

    .line 20
    .local v0, "endTransform":Lc8/Kdb;
    new-instance v2, Lc8/Kdb;

    .line 21
    invoke-virtual {v1}, Lc8/Kdb;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lc8/Kdb;->getScaleX()F

    move-result v4

    invoke-static {v3, v4, p2}, Lc8/Jfb;->lerp(FFF)F

    move-result v3

    .line 22
    invoke-virtual {v1}, Lc8/Kdb;->getScaleY()F

    move-result v4

    invoke-virtual {v0}, Lc8/Kdb;->getScaleY()F

    move-result v5

    invoke-static {v4, v5, p2}, Lc8/Jfb;->lerp(FFF)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lc8/Kdb;-><init>(FF)V

    .line 20
    return-object v2
.end method

.method public bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lc8/odb;->getValue(Lc8/Ecb;F)Lc8/Kdb;

    move-result-object v0

    return-object v0
.end method
