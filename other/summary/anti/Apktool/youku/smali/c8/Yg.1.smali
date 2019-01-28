.class public abstract Lc8/Yg;
.super Ljava/lang/Object;
.source "TransitionImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addListener(Lc8/ah;)Lc8/Yg;
.end method

.method public abstract addTarget(I)Lc8/Yg;
.end method

.method public abstract addTarget(Landroid/view/View;)Lc8/Yg;
.end method

.method public abstract captureEndValues(Lc8/Ch;)V
.end method

.method public abstract captureStartValues(Lc8/Ch;)V
.end method

.method public abstract createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
.end method

.method public abstract excludeChildren(IZ)Lc8/Yg;
.end method

.method public abstract excludeChildren(Landroid/view/View;Z)Lc8/Yg;
.end method

.method public abstract excludeChildren(Ljava/lang/Class;Z)Lc8/Yg;
.end method

.method public abstract excludeTarget(IZ)Lc8/Yg;
.end method

.method public abstract excludeTarget(Landroid/view/View;Z)Lc8/Yg;
.end method

.method public abstract excludeTarget(Ljava/lang/Class;Z)Lc8/Yg;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getInterpolator()Landroid/animation/TimeInterpolator;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract getTargetIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransitionProperties()[Ljava/lang/String;
.end method

.method public abstract getTransitionValues(Landroid/view/View;Z)Lc8/Ch;
.end method

.method public init(Lc8/Zg;)V
    .locals 1
    .param p1, "external"    # Lc8/Zg;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Yg;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public abstract init(Lc8/Zg;Ljava/lang/Object;)V
.end method

.method public abstract removeListener(Lc8/ah;)Lc8/Yg;
.end method

.method public abstract removeTarget(I)Lc8/Yg;
.end method

.method public abstract removeTarget(Landroid/view/View;)Lc8/Yg;
.end method

.method public abstract setDuration(J)Lc8/Yg;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Yg;
.end method

.method public abstract setStartDelay(J)Lc8/Yg;
.end method
