.class public Lc8/FOf;
.super Ljava/lang/Object;
.source "TZoomScroller.java"


# instance fields
.field private mCurrX:F

.field private mCurrY:F

.field private mCurrZ:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDeltaZ:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:F

.field private mFinalY:F

.field private mFinalZ:F

.field private mFinished:Z

.field private mInterPolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field private mStartZ:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/FOf;->mFinished:Z

    .line 37
    iput-object p1, p0, Lc8/FOf;->mInterPolator:Landroid/view/animation/Interpolator;

    .line 38
    iget-object v0, p0, Lc8/FOf;->mInterPolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lc8/FOf;->mInterPolator:Landroid/view/animation/Interpolator;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-boolean v3, p0, Lc8/FOf;->mFinished:Z

    if-eqz v3, :cond_0

    .line 65
    const/4 v2, 0x0

    .line 80
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/FOf;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 68
    .local v0, "time":I
    iget v3, p0, Lc8/FOf;->mDuration:I

    if-ge v0, v3, :cond_1

    .line 69
    int-to-float v3, v0

    iget v4, p0, Lc8/FOf;->mDurationReciprocal:F

    mul-float v1, v3, v4

    .line 70
    .local v1, "x":F
    iget-object v3, p0, Lc8/FOf;->mInterPolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 71
    iget v3, p0, Lc8/FOf;->mStartX:F

    iget v4, p0, Lc8/FOf;->mDeltaX:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lc8/FOf;->mCurrX:F

    .line 72
    iget v3, p0, Lc8/FOf;->mStartY:F

    iget v4, p0, Lc8/FOf;->mDeltaY:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lc8/FOf;->mCurrY:F

    .line 73
    iget v3, p0, Lc8/FOf;->mStartZ:F

    iget v4, p0, Lc8/FOf;->mDeltaZ:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lc8/FOf;->mCurrZ:F

    goto :goto_0

    .line 75
    .end local v1    # "x":F
    :cond_1
    iget v3, p0, Lc8/FOf;->mFinalX:F

    iput v3, p0, Lc8/FOf;->mCurrX:F

    .line 76
    iget v3, p0, Lc8/FOf;->mFinalY:F

    iput v3, p0, Lc8/FOf;->mCurrY:F

    .line 77
    iget v3, p0, Lc8/FOf;->mFinalZ:F

    iput v3, p0, Lc8/FOf;->mCurrZ:F

    .line 78
    iput-boolean v2, p0, Lc8/FOf;->mFinished:Z

    goto :goto_0
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lc8/FOf;->mCurrX:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lc8/FOf;->mCurrY:F

    return v0
.end method

.method public getCurrZ()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lc8/FOf;->mCurrZ:F

    return v0
.end method

.method public startScroll(FFFFFFI)V
    .locals 2
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "startZ"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F
    .param p6, "dz"    # F
    .param p7, "duration"    # I

    .prologue
    .line 45
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/FOf;->mStartTime:J

    .line 46
    iput p7, p0, Lc8/FOf;->mDuration:I

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lc8/FOf;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lc8/FOf;->mDurationReciprocal:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/FOf;->mFinished:Z

    .line 50
    iput p1, p0, Lc8/FOf;->mStartX:F

    .line 51
    iput p2, p0, Lc8/FOf;->mStartY:F

    .line 52
    iput p3, p0, Lc8/FOf;->mStartZ:F

    .line 54
    iget v0, p0, Lc8/FOf;->mStartX:F

    add-float/2addr v0, p4

    iput v0, p0, Lc8/FOf;->mFinalX:F

    .line 55
    iget v0, p0, Lc8/FOf;->mStartY:F

    add-float/2addr v0, p5

    iput v0, p0, Lc8/FOf;->mFinalY:F

    .line 56
    iget v0, p0, Lc8/FOf;->mStartZ:F

    add-float/2addr v0, p6

    iput v0, p0, Lc8/FOf;->mFinalZ:F

    .line 58
    iput p4, p0, Lc8/FOf;->mDeltaX:F

    .line 59
    iput p5, p0, Lc8/FOf;->mDeltaY:F

    .line 60
    iput p6, p0, Lc8/FOf;->mDeltaZ:F

    .line 61
    return-void
.end method
