.class public abstract Lc8/Tg;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Lc8/Zg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Sg;
    }
.end annotation


# instance fields
.field mImpl:Lc8/Yg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Tg;-><init>(Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "deferred"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 75
    new-instance v0, Lc8/Ug;

    invoke-direct {v0}, Lc8/Ug;-><init>()V

    iput-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    .line 81
    :goto_0
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p0}, Lc8/Yg;->init(Lc8/Zg;)V

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 77
    new-instance v0, Lc8/dh;

    invoke-direct {v0}, Lc8/dh;-><init>()V

    iput-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Lc8/Xg;

    invoke-direct {v0}, Lc8/Xg;-><init>()V

    iput-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lc8/Sg;)Lc8/Tg;
    .locals 1
    .param p1, "listener"    # Lc8/Sg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->addListener(Lc8/ah;)Lc8/Yg;

    .line 96
    return-object p0
.end method

.method public addTarget(I)Lc8/Tg;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->addTarget(I)Lc8/Yg;

    .line 152
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lc8/Tg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->addTarget(Landroid/view/View;)Lc8/Yg;

    .line 128
    return-object p0
.end method

.method public abstract captureEndValues(Lc8/Ch;)V
    .param p1    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract captureStartValues(Lc8/Ch;)V
    .param p1    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public excludeChildren(IZ)Lc8/Tg;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeChildren(IZ)Lc8/Yg;

    .line 320
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lc8/Tg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeChildren(Landroid/view/View;Z)Lc8/Yg;

    .line 290
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lc8/Tg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeChildren(Ljava/lang/Class;Z)Lc8/Yg;

    .line 347
    return-object p0
.end method

.method public excludeTarget(IZ)Lc8/Tg;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeTarget(IZ)Lc8/Yg;

    .line 399
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lc8/Tg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeTarget(Landroid/view/View;Z)Lc8/Yg;

    .line 373
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lc8/Tg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->excludeTarget(Ljava/lang/Class;Z)Lc8/Yg;

    .line 425
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Lc8/Yg;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lc8/Ch;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->getTransitionValues(Landroid/view/View;Z)Lc8/Ch;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lc8/Sg;)Lc8/Tg;
    .locals 1
    .param p1, "listener"    # Lc8/Sg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->removeListener(Lc8/ah;)Lc8/Yg;

    .line 605
    return-object p0
.end method

.method public removeTarget(I)Lc8/Tg;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->removeTarget(I)Lc8/Yg;

    .line 637
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lc8/Tg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->removeTarget(Landroid/view/View;)Lc8/Yg;

    .line 621
    return-object p0
.end method

.method public setDuration(J)Lc8/Tg;
    .locals 1
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->setDuration(J)Lc8/Yg;

    .line 453
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Tg;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Yg;

    .line 482
    return-object p0
.end method

.method public setStartDelay(J)Lc8/Tg;
    .locals 1
    .param p1, "startDelay"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2}, Lc8/Yg;->setStartDelay(J)Lc8/Yg;

    .line 527
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
