.class public Lc8/lh;
.super Lc8/mh;
.source "TransitionManagerStaticsIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/mh;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-static {p1}, Lc8/kh;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 41
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Lc8/Yg;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 45
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-static {p1, v0}, Lc8/kh;->beginDelayedTransition(Landroid/view/ViewGroup;Lc8/uh;)V

    .line 47
    return-void

    .line 45
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/Xg;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/Xg;->mTransition:Lc8/uh;

    goto :goto_0
.end method

.method public go(Lc8/Kg;)V
    .locals 1
    .param p1, "scene"    # Lc8/Kg;

    .prologue
    .line 29
    check-cast p1, Lc8/Jg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v0, p1, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-static {v0}, Lc8/kh;->go(Lc8/Mg;)V

    .line 30
    return-void
.end method

.method public go(Lc8/Kg;Lc8/Yg;)V
    .locals 2
    .param p1, "scene"    # Lc8/Kg;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 34
    check-cast p1, Lc8/Jg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v1, p1, Lc8/Jg;->mScene:Lc8/Mg;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-static {v1, v0}, Lc8/kh;->go(Lc8/Mg;Lc8/uh;)V

    .line 36
    return-void

    .line 34
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/Xg;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/Xg;->mTransition:Lc8/uh;

    goto :goto_0
.end method
