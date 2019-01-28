.class public abstract Lc8/cdb;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bdb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lc8/Ecb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ecb",
            "<TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lc8/Ecb",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/bdb;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lc8/Ecb",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<TK;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/cdb;->listeners:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/cdb;->isDiscrete:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/cdb;->progress:F

    .line 30
    iput-object p1, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    .line 31
    return-void
.end method

.method private getCurrentKeyframe()Lc8/Ecb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Ecb",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v2, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "There are no keyframes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    iget-object v2, p0, Lc8/cdb;->cachedKeyframe:Lc8/Ecb;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/cdb;->cachedKeyframe:Lc8/Ecb;

    iget v3, p0, Lc8/cdb;->progress:F

    invoke-virtual {v2, v3}, Lc8/Ecb;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v1, p0, Lc8/cdb;->cachedKeyframe:Lc8/Ecb;

    .line 78
    :goto_0
    return-object v1

    .line 67
    :cond_1
    iget-object v2, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    iget-object v3, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ecb;

    .line 68
    .local v1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    iget v2, p0, Lc8/cdb;->progress:F

    invoke-virtual {v1}, Lc8/Ecb;->getStartProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 69
    iget-object v2, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 70
    iget-object v2, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    check-cast v1, Lc8/Ecb;

    .line 71
    .restart local v1    # "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    iget v2, p0, Lc8/cdb;->progress:F

    invoke-virtual {v1, v2}, Lc8/Ecb;->containsProgress(F)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 77
    .end local v0    # "i":I
    :cond_2
    iput-object v1, p0, Lc8/cdb;->cachedKeyframe:Lc8/Ecb;

    goto :goto_0
.end method

.method private getCurrentKeyframeProgress()F
    .locals 5

    .prologue
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v3, 0x0

    .line 86
    iget-boolean v4, p0, Lc8/cdb;->isDiscrete:Z

    if-eqz v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    invoke-direct {p0}, Lc8/cdb;->getCurrentKeyframe()Lc8/Ecb;

    move-result-object v0

    .line 91
    .local v0, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    invoke-virtual {v0}, Lc8/Ecb;->isStatic()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    iget v3, p0, Lc8/cdb;->progress:F

    invoke-virtual {v0}, Lc8/Ecb;->getStartProgress()F

    move-result v4

    sub-float v2, v3, v4

    .line 95
    .local v2, "progressIntoFrame":F
    invoke-virtual {v0}, Lc8/Ecb;->getEndProgress()F

    move-result v3

    invoke-virtual {v0}, Lc8/Ecb;->getStartProgress()F

    move-result v4

    sub-float v1, v3, v4

    .line 97
    .local v1, "keyframeProgress":F
    iget-object v3, v0, Lc8/Ecb;->interpolator:Landroid/view/animation/Interpolator;

    div-float v4, v2, v1

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_0
.end method

.method private getEndProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ecb;

    invoke-virtual {v0}, Lc8/Ecb;->getEndProgress()F

    move-result v0

    goto :goto_0
.end method

.method private getStartDelayProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/cdb;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ecb;

    invoke-virtual {v0}, Lc8/Ecb;->getStartProgress()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Lc8/bdb;)V
    .locals 1
    .param p1, "listener"    # Lc8/bdb;

    .prologue
    .line 38
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lc8/cdb;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    iget v0, p0, Lc8/cdb;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    invoke-direct {p0}, Lc8/cdb;->getCurrentKeyframe()Lc8/Ecb;

    move-result-object v0

    invoke-direct {p0}, Lc8/cdb;->getCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/cdb;->getValue(Lc8/Ecb;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public setIsDiscrete()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/cdb;->isDiscrete:Z

    .line 35
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 42
    .local p0, "this":Lc8/cdb;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<TK;TA;>;"
    invoke-direct {p0}, Lc8/cdb;->getStartDelayProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 43
    const/4 p1, 0x0

    .line 48
    :cond_0
    :goto_0
    iget v1, p0, Lc8/cdb;->progress:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 56
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-direct {p0}, Lc8/cdb;->getEndProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 45
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 51
    :cond_3
    iput p1, p0, Lc8/cdb;->progress:F

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lc8/cdb;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 54
    iget-object v1, p0, Lc8/cdb;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/bdb;

    invoke-interface {v1}, Lc8/bdb;->onValueChanged()V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
