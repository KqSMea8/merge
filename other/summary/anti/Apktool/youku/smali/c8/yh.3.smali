.class public Lc8/yh;
.super Lc8/dh;
.source "TransitionSetKitKat.java"

# interfaces
.implements Lc8/xh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# instance fields
.field private mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/dh;-><init>()V

    .line 29
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 30
    iget-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, v0}, Lc8/yh;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic addTransition(Lc8/Yg;)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/yh;->addTransition(Lc8/Yg;)Lc8/yh;

    move-result-object v0

    return-object v0
.end method

.method public addTransition(Lc8/Yg;)Lc8/yh;
    .locals 2
    .param p1, "transition"    # Lc8/Yg;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    check-cast p1, Lc8/dh;

    .end local p1    # "transition":Lc8/Yg;
    iget-object v1, p1, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 47
    return-object p0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getOrdering()I

    move-result v0

    return v0
.end method

.method public bridge synthetic removeTransition(Lc8/Yg;)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/yh;->removeTransition(Lc8/Yg;)Lc8/yh;

    move-result-object v0

    return-object v0
.end method

.method public removeTransition(Lc8/Yg;)Lc8/yh;
    .locals 2
    .param p1, "transition"    # Lc8/Yg;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    check-cast p1, Lc8/dh;

    .end local p1    # "transition":Lc8/Yg;
    iget-object v1, p1, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 53
    return-object p0
.end method

.method public bridge synthetic setOrdering(I)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/yh;->setOrdering(I)Lc8/yh;

    move-result-object v0

    return-object v0
.end method

.method public setOrdering(I)Lc8/yh;
    .locals 1
    .param p1, "ordering"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lc8/yh;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 41
    return-object p0
.end method
