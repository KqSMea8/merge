.class public Lc8/tdb;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private final anchorPoint:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final endOpacity:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private final opacity:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lc8/cdb;
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

.field private final scale:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Lc8/Kdb;",
            "Lc8/Kdb;",
            ">;"
        }
    .end annotation
.end field

.field private final startOpacity:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/teb;)V
    .locals 2
    .param p1, "animatableTransform"    # Lc8/teb;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    .line 25
    invoke-virtual {p1}, Lc8/teb;->getAnchorPoint()Lc8/beb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/beb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->anchorPoint:Lc8/cdb;

    .line 26
    invoke-virtual {p1}, Lc8/teb;->getPosition()Lc8/veb;

    move-result-object v0

    invoke-interface {v0}, Lc8/veb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->position:Lc8/cdb;

    .line 27
    invoke-virtual {p1}, Lc8/teb;->getScale()Lc8/heb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/heb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->scale:Lc8/cdb;

    .line 28
    invoke-virtual {p1}, Lc8/teb;->getRotation()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->rotation:Lc8/cdb;

    .line 29
    invoke-virtual {p1}, Lc8/teb;->getOpacity()Lc8/Zdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Zdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->opacity:Lc8/cdb;

    .line 30
    invoke-virtual {p1}, Lc8/teb;->getStartOpacity()Lc8/Rdb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lc8/teb;->getStartOpacity()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    .line 35
    :goto_0
    invoke-virtual {p1}, Lc8/teb;->getEndOpacity()Lc8/Rdb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lc8/teb;->getEndOpacity()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    .line 40
    :goto_1
    return-void

    .line 33
    :cond_0
    iput-object v1, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    goto :goto_0

    .line 38
    :cond_1
    iput-object v1, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    goto :goto_1
.end method


# virtual methods
.method public addAnimationsToLayer(Lc8/rfb;)V
    .locals 1
    .param p1, "layer"    # Lc8/rfb;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/tdb;->anchorPoint:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 44
    iget-object v0, p0, Lc8/tdb;->position:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 45
    iget-object v0, p0, Lc8/tdb;->scale:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 46
    iget-object v0, p0, Lc8/tdb;->rotation:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 47
    iget-object v0, p0, Lc8/tdb;->opacity:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 48
    iget-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 54
    :cond_1
    return-void
.end method

.method public addListener(Lc8/bdb;)V
    .locals 1
    .param p1, "listener"    # Lc8/bdb;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/tdb;->anchorPoint:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 58
    iget-object v0, p0, Lc8/tdb;->position:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 59
    iget-object v0, p0, Lc8/tdb;->scale:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 60
    iget-object v0, p0, Lc8/tdb;->rotation:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 61
    iget-object v0, p0, Lc8/tdb;->opacity:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 62
    iget-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    invoke-virtual {v0, p1}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 68
    :cond_1
    return-void
.end method

.method public getEndOpacity()Lc8/cdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lc8/tdb;->endOpacity:Lc8/cdb;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 84
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 85
    iget-object v4, p0, Lc8/tdb;->position:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 86
    .local v1, "position":Landroid/graphics/PointF;
    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 90
    :cond_1
    iget-object v4, p0, Lc8/tdb;->rotation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 91
    .local v2, "rotation":F
    cmpl-float v4, v2, v7

    if-eqz v4, :cond_2

    .line 92
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 95
    :cond_2
    iget-object v4, p0, Lc8/tdb;->scale:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Kdb;

    .line 96
    .local v3, "scaleTransform":Lc8/Kdb;
    invoke-virtual {v3}, Lc8/Kdb;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lc8/Kdb;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_4

    .line 97
    :cond_3
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Lc8/Kdb;->getScaleX()F

    move-result v5

    invoke-virtual {v3}, Lc8/Kdb;->getScaleY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 100
    :cond_4
    iget-object v4, p0, Lc8/tdb;->anchorPoint:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 101
    .local v0, "anchorPoint":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_6

    .line 102
    :cond_5
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 104
    :cond_6
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    return-object v4
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 10
    .param p1, "amount"    # F

    .prologue
    .line 111
    iget-object v4, p0, Lc8/tdb;->position:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 112
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v4, p0, Lc8/tdb;->anchorPoint:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 113
    .local v0, "anchorPoint":Landroid/graphics/PointF;
    iget-object v4, p0, Lc8/tdb;->scale:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Kdb;

    .line 114
    .local v3, "scale":Lc8/Kdb;
    iget-object v4, p0, Lc8/tdb;->rotation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 116
    .local v2, "rotation":F
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 117
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p1

    iget v6, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 118
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    .line 119
    invoke-virtual {v3}, Lc8/Kdb;->getScaleX()F

    move-result v5

    float-to-double v6, v5

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 120
    invoke-virtual {v3}, Lc8/Kdb;->getScaleY()F

    move-result v6

    float-to-double v6, v6

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 118
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 121
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    mul-float v5, v2, p1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 123
    iget-object v4, p0, Lc8/tdb;->matrix:Landroid/graphics/Matrix;

    return-object v4
.end method

.method public getOpacity()Lc8/cdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/tdb;->opacity:Lc8/cdb;

    return-object v0
.end method

.method public getStartOpacity()Lc8/cdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lc8/tdb;->startOpacity:Lc8/cdb;

    return-object v0
.end method
