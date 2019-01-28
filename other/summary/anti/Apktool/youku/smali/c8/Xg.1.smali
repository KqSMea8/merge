.class public Lc8/Xg;
.super Lc8/Yg;
.source "TransitionIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vg;,
        Lc8/Wg;
    }
.end annotation


# instance fields
.field private mCompatListener:Lc8/Vg;

.field mExternalTransition:Lc8/Zg;

.field mTransition:Lc8/uh;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/Yg;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public addListener(Lc8/ah;)Lc8/Yg;
    .locals 2
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/Vg;

    invoke-direct {v0, p0}, Lc8/Vg;-><init>(Lc8/Xg;)V

    iput-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    .line 53
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    iget-object v1, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    invoke-virtual {v0, v1}, Lc8/uh;->addListener(Lc8/sh;)Lc8/uh;

    .line 55
    :cond_0
    iget-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    invoke-virtual {v0, p1}, Lc8/Vg;->addListener(Lc8/ah;)V

    .line 56
    return-object p0
.end method

.method public addTarget(I)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->addTarget(I)Lc8/uh;

    .line 81
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->addTarget(Landroid/view/View;)Lc8/uh;

    .line 75
    return-object p0
.end method

.method public captureEndValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->captureEndValues(Lc8/Ch;)V

    .line 87
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 91
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->captureStartValues(Lc8/Ch;)V

    .line 92
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2, p3}, Lc8/uh;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public excludeChildren(IZ)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeChildren(IZ)Lc8/uh;

    .line 109
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeChildren(Landroid/view/View;Z)Lc8/uh;

    .line 103
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lc8/Yg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeChildren(Ljava/lang/Class;Z)Lc8/uh;

    .line 115
    return-object p0
.end method

.method public excludeTarget(IZ)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeTarget(IZ)Lc8/uh;

    .line 127
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeTarget(Landroid/view/View;Z)Lc8/uh;

    .line 121
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lc8/Yg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->excludeTarget(Ljava/lang/Class;Z)Lc8/uh;

    .line 133
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
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
    .line 176
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
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
    .line 181
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lc8/Ch;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->getTransitionValues(Landroid/view/View;Z)Lc8/Ch;

    move-result-object v0

    return-object v0
.end method

.method public init(Lc8/Zg;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Lc8/Zg;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Lc8/Wg;

    invoke-direct {v0, p1}, Lc8/Wg;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    .line 47
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 45
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lc8/uh;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Lc8/Xg;->mTransition:Lc8/uh;

    goto :goto_0
.end method

.method public removeListener(Lc8/ah;)Lc8/Yg;
    .locals 2
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object p0

    .line 64
    :cond_1
    iget-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    invoke-virtual {v0, p1}, Lc8/Vg;->removeListener(Lc8/ah;)V

    .line 65
    iget-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    invoke-virtual {v0}, Lc8/Vg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    iget-object v1, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    invoke-virtual {v0, v1}, Lc8/uh;->removeListener(Lc8/sh;)Lc8/uh;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Xg;->mCompatListener:Lc8/Vg;

    goto :goto_0
.end method

.method public removeTarget(I)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->removeTarget(I)Lc8/uh;

    .line 203
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->removeTarget(Landroid/view/View;)Lc8/uh;

    .line 197
    return-object p0
.end method

.method public setDuration(J)Lc8/Yg;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 143
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->setDuration(J)Lc8/uh;

    .line 144
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Yg;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 154
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1}, Lc8/uh;->setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/uh;

    .line 155
    return-object p0
.end method

.method public setStartDelay(J)Lc8/Yg;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 170
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, p1, p2}, Lc8/uh;->setStartDelay(J)Lc8/uh;

    .line 171
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
