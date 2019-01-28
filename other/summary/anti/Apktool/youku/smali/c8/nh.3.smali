.class public Lc8/nh;
.super Lc8/mh;
.source "TransitionManagerStaticsKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/mh;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 42
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Lc8/Yg;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 46
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 48
    return-void

    .line 46
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/dh;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/dh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public go(Lc8/Kg;)V
    .locals 1
    .param p1, "scene"    # Lc8/Kg;

    .prologue
    .line 30
    check-cast p1, Lc8/Rg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v0, p1, Lc8/Rg;->mScene:Landroid/transition/Scene;

    invoke-static {v0}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;)V

    .line 31
    return-void
.end method

.method public go(Lc8/Kg;Lc8/Yg;)V
    .locals 2
    .param p1, "scene"    # Lc8/Kg;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 35
    check-cast p1, Lc8/Rg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v1, p1, Lc8/Rg;->mScene:Landroid/transition/Scene;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 37
    return-void

    .line 35
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/dh;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/dh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method
