.class public Lc8/Hfb;
.super Landroid/animation/ValueAnimator;
.source "LottieValueAnimator.java"


# instance fields
.field private compositionDuration:J

.field private maxValue:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private minValue:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private speed:F

.field private systemAnimationsAreDisabled:Z

.field private value:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hfb;->systemAnimationsAreDisabled:Z

    .line 13
    iput v2, p0, Lc8/Hfb;->speed:F

    .line 14
    iput v1, p0, Lc8/Hfb;->value:F

    .line 15
    iput v1, p0, Lc8/Hfb;->minValue:F

    .line 16
    iput v2, p0, Lc8/Hfb;->maxValue:F

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Hfb;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance v0, Lc8/Gfb;

    invoke-direct {v0, p0}, Lc8/Gfb;-><init>(Lc8/Hfb;)V

    invoke-virtual {p0, v0}, Lc8/Hfb;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    invoke-direct {p0}, Lc8/Hfb;->updateValues()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lc8/Hfb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Hfb;

    .prologue
    .line 10
    iget-boolean v0, p0, Lc8/Hfb;->systemAnimationsAreDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lc8/Hfb;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Hfb;
    .param p1, "x1"    # F

    .prologue
    .line 10
    iput p1, p0, Lc8/Hfb;->value:F

    return p1
.end method

.method private isReversed()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lc8/Hfb;->speed:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-wide v0, p0, Lc8/Hfb;->compositionDuration:J

    long-to-float v0, v0

    iget v1, p0, Lc8/Hfb;->maxValue:F

    iget v2, p0, Lc8/Hfb;->minValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lc8/Hfb;->speed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/Hfb;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    iget v0, p0, Lc8/Hfb;->speed:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lc8/Hfb;->maxValue:F

    :goto_0
    aput v0, v1, v2

    const/4 v2, 0x1

    iget v0, p0, Lc8/Hfb;->speed:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lc8/Hfb;->minValue:F

    :goto_1
    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lc8/Hfb;->setFloatValues([F)V

    .line 132
    iget v0, p0, Lc8/Hfb;->value:F

    invoke-virtual {p0, v0}, Lc8/Hfb;->setValue(F)V

    .line 133
    return-void

    .line 127
    :cond_0
    iget v0, p0, Lc8/Hfb;->minValue:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lc8/Hfb;->maxValue:F

    goto :goto_1
.end method


# virtual methods
.method public getMinValue()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lc8/Hfb;->minValue:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lc8/Hfb;->speed:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lc8/Hfb;->value:F

    return v0
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lc8/Hfb;->value:F

    .line 102
    .local v0, "value":F
    invoke-virtual {p0}, Lc8/Hfb;->cancel()V

    .line 103
    invoke-virtual {p0, v0}, Lc8/Hfb;->setValue(F)V

    .line 104
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lc8/Hfb;->start()V

    .line 97
    invoke-direct {p0}, Lc8/Hfb;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/Hfb;->maxValue:F

    :goto_0
    invoke-virtual {p0, v0}, Lc8/Hfb;->setValue(F)V

    .line 98
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lc8/Hfb;->minValue:F

    goto :goto_0
.end method

.method public resumeAnimation()V
    .locals 3

    .prologue
    .line 107
    iget v0, p0, Lc8/Hfb;->value:F

    .line 108
    .local v0, "value":F
    invoke-direct {p0}, Lc8/Hfb;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/Hfb;->value:F

    iget v2, p0, Lc8/Hfb;->minValue:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 109
    iget v0, p0, Lc8/Hfb;->maxValue:F

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/Hfb;->start()V

    .line 114
    invoke-virtual {p0, v0}, Lc8/Hfb;->setValue(F)V

    .line 115
    return-void

    .line 110
    :cond_1
    invoke-direct {p0}, Lc8/Hfb;->isReversed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lc8/Hfb;->value:F

    iget v2, p0, Lc8/Hfb;->maxValue:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 111
    iget v0, p0, Lc8/Hfb;->minValue:F

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lc8/Hfb;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lc8/Hfb;->setSpeed(F)V

    .line 84
    return-void
.end method

.method public setCompositionDuration(J)V
    .locals 1
    .param p1, "compositionDuration"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lc8/Hfb;->compositionDuration:J

    .line 38
    invoke-direct {p0}, Lc8/Hfb;->updateValues()V

    .line 39
    return-void
.end method

.method public setMaxValue(F)V
    .locals 2
    .param p1, "maxValue"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 75
    iget v0, p0, Lc8/Hfb;->minValue:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Max value must be greater than min value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput p1, p0, Lc8/Hfb;->maxValue:F

    .line 79
    invoke-direct {p0}, Lc8/Hfb;->updateValues()V

    .line 80
    return-void
.end method

.method public setMinValue(F)V
    .locals 2
    .param p1, "minValue"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 63
    iget v0, p0, Lc8/Hfb;->maxValue:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Min value must be smaller then max value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput p1, p0, Lc8/Hfb;->minValue:F

    .line 67
    invoke-direct {p0}, Lc8/Hfb;->updateValues()V

    .line 68
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 87
    iput p1, p0, Lc8/Hfb;->speed:F

    .line 88
    invoke-direct {p0}, Lc8/Hfb;->updateValues()V

    .line 89
    return-void
.end method

.method public setValue(F)V
    .locals 8
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 47
    iget v3, p0, Lc8/Hfb;->minValue:F

    iget v4, p0, Lc8/Hfb;->maxValue:F

    invoke-static {p1, v3, v4}, Lc8/Jfb;->clamp(FFF)F

    move-result p1

    .line 49
    iput p1, p0, Lc8/Hfb;->value:F

    .line 50
    invoke-direct {p0}, Lc8/Hfb;->isReversed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lc8/Hfb;->maxValue:F

    sub-float v1, v3, p1

    .line 51
    .local v1, "distFromStart":F
    :goto_0
    iget v3, p0, Lc8/Hfb;->maxValue:F

    iget v4, p0, Lc8/Hfb;->minValue:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 52
    .local v2, "range":F
    div-float v0, v1, v2

    .line 53
    .local v0, "animatedPercentage":F
    invoke-virtual {p0}, Lc8/Hfb;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lc8/Hfb;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v3, v0

    float-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lc8/Hfb;->setCurrentPlayTime(J)V

    .line 56
    :cond_0
    return-void

    .line 50
    .end local v0    # "animatedPercentage":F
    .end local v1    # "distFromStart":F
    .end local v2    # "range":F
    :cond_1
    iget v3, p0, Lc8/Hfb;->minValue:F

    sub-float v1, p1, v3

    goto :goto_0
.end method

.method public systemAnimationsAreDisabled()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hfb;->systemAnimationsAreDisabled:Z

    .line 34
    return-void
.end method
