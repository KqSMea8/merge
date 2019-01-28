.class public Lc8/qdb;
.super Lc8/cdb;
.source "SplitDimensionPathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/cdb",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;

.field private final xAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/cdb;Lc8/cdb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "xAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Float;Ljava/lang/Float;>;"
    .local p2, "yAnimation":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/cdb;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/qdb;->point:Landroid/graphics/PointF;

    .line 19
    iput-object p1, p0, Lc8/qdb;->xAnimation:Lc8/cdb;

    .line 20
    iput-object p2, p0, Lc8/qdb;->yAnimation:Lc8/cdb;

    .line 21
    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/qdb;->getValue(Lc8/Ecb;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lc8/Ecb;F)Landroid/graphics/PointF;
    .locals 1
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
    .line 37
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    iget-object v0, p0, Lc8/qdb;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lc8/qdb;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lc8/qdb;->getValue(Lc8/Ecb;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 24
    iget-object v1, p0, Lc8/qdb;->xAnimation:Lc8/cdb;

    invoke-virtual {v1, p1}, Lc8/cdb;->setProgress(F)V

    .line 25
    iget-object v1, p0, Lc8/qdb;->yAnimation:Lc8/cdb;

    invoke-virtual {v1, p1}, Lc8/cdb;->setProgress(F)V

    .line 26
    iget-object v2, p0, Lc8/qdb;->point:Landroid/graphics/PointF;

    iget-object v1, p0, Lc8/qdb;->xAnimation:Lc8/cdb;

    invoke-virtual {v1}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, p0, Lc8/qdb;->yAnimation:Lc8/cdb;

    invoke-virtual {v1}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/qdb;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lc8/qdb;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/bdb;

    invoke-interface {v1}, Lc8/bdb;->onValueChanged()V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
