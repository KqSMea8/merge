.class public Lc8/hh;
.super Lc8/gh;
.source "TransitionManagerKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# instance fields
.field private final mTransitionManager:Landroid/transition/TransitionManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/gh;-><init>()V

    .line 28
    new-instance v0, Landroid/transition/TransitionManager;

    invoke-direct {v0}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v0, p0, Lc8/hh;->mTransitionManager:Landroid/transition/TransitionManager;

    return-void
.end method


# virtual methods
.method public setTransition(Lc8/Kg;Lc8/Kg;Lc8/Yg;)V
    .locals 4
    .param p1, "fromScene"    # Lc8/Kg;
    .param p2, "toScene"    # Lc8/Kg;
    .param p3, "transition"    # Lc8/Yg;

    .prologue
    .line 38
    iget-object v1, p0, Lc8/hh;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Lc8/Rg;

    .end local p1    # "fromScene":Lc8/Kg;
    iget-object v2, p1, Lc8/Rg;->mScene:Landroid/transition/Scene;

    check-cast p2, Lc8/Rg;

    .end local p2    # "toScene":Lc8/Kg;
    iget-object v3, p2, Lc8/Rg;->mScene:Landroid/transition/Scene;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    .end local p3    # "transition":Lc8/Yg;
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 41
    return-void

    .line 38
    .restart local p3    # "transition":Lc8/Yg;
    :cond_0
    check-cast p3, Lc8/dh;

    .end local p3    # "transition":Lc8/Yg;
    iget-object v0, p3, Lc8/dh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public setTransition(Lc8/Kg;Lc8/Yg;)V
    .locals 3
    .param p1, "scene"    # Lc8/Kg;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 32
    iget-object v1, p0, Lc8/hh;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Lc8/Rg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v2, p1, Lc8/Rg;->mScene:Landroid/transition/Scene;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 34
    return-void

    .line 32
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/dh;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/dh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public transitionTo(Lc8/Kg;)V
    .locals 2
    .param p1, "scene"    # Lc8/Kg;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/hh;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Lc8/Rg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v1, p1, Lc8/Rg;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 46
    return-void
.end method
