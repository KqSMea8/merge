.class public Lc8/fh;
.super Lc8/gh;
.source "TransitionManagerIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# instance fields
.field private final mTransitionManager:Lc8/kh;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/gh;-><init>()V

    .line 26
    new-instance v0, Lc8/kh;

    invoke-direct {v0}, Lc8/kh;-><init>()V

    iput-object v0, p0, Lc8/fh;->mTransitionManager:Lc8/kh;

    return-void
.end method


# virtual methods
.method public setTransition(Lc8/Kg;Lc8/Kg;Lc8/Yg;)V
    .locals 4
    .param p1, "fromScene"    # Lc8/Kg;
    .param p2, "toScene"    # Lc8/Kg;
    .param p3, "transition"    # Lc8/Yg;

    .prologue
    .line 36
    iget-object v1, p0, Lc8/fh;->mTransitionManager:Lc8/kh;

    check-cast p1, Lc8/Jg;

    .end local p1    # "fromScene":Lc8/Kg;
    iget-object v2, p1, Lc8/Jg;->mScene:Lc8/Mg;

    check-cast p2, Lc8/Jg;

    .end local p2    # "toScene":Lc8/Kg;
    iget-object v3, p2, Lc8/Jg;->mScene:Lc8/Mg;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    .end local p3    # "transition":Lc8/Yg;
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lc8/kh;->setTransition(Lc8/Mg;Lc8/Mg;Lc8/uh;)V

    .line 38
    return-void

    .line 36
    .restart local p3    # "transition":Lc8/Yg;
    :cond_0
    check-cast p3, Lc8/Xg;

    .end local p3    # "transition":Lc8/Yg;
    iget-object v0, p3, Lc8/Xg;->mTransition:Lc8/uh;

    goto :goto_0
.end method

.method public setTransition(Lc8/Kg;Lc8/Yg;)V
    .locals 3
    .param p1, "scene"    # Lc8/Kg;
    .param p2, "transition"    # Lc8/Yg;

    .prologue
    .line 30
    iget-object v1, p0, Lc8/fh;->mTransitionManager:Lc8/kh;

    check-cast p1, Lc8/Jg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v2, p1, Lc8/Jg;->mScene:Lc8/Mg;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Lc8/Yg;
    :goto_0
    invoke-virtual {v1, v2, v0}, Lc8/kh;->setTransition(Lc8/Mg;Lc8/uh;)V

    .line 32
    return-void

    .line 30
    .restart local p2    # "transition":Lc8/Yg;
    :cond_0
    check-cast p2, Lc8/Xg;

    .end local p2    # "transition":Lc8/Yg;
    iget-object v0, p2, Lc8/Xg;->mTransition:Lc8/uh;

    goto :goto_0
.end method

.method public transitionTo(Lc8/Kg;)V
    .locals 2
    .param p1, "scene"    # Lc8/Kg;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/fh;->mTransitionManager:Lc8/kh;

    check-cast p1, Lc8/Jg;

    .end local p1    # "scene":Lc8/Kg;
    iget-object v1, p1, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0, v1}, Lc8/kh;->transitionTo(Lc8/Mg;)V

    .line 43
    return-void
.end method
