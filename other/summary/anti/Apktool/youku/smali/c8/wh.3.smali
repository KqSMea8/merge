.class public Lc8/wh;
.super Lc8/Xg;
.source "TransitionSetIcs.java"

# interfaces
.implements Lc8/xh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# instance fields
.field private mTransitionSet:Lc8/Bh;


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/Xg;-><init>()V

    .line 29
    new-instance v0, Lc8/Bh;

    invoke-direct {v0}, Lc8/Bh;-><init>()V

    iput-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    .line 30
    iget-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    invoke-virtual {p0, p1, v0}, Lc8/wh;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public addTransition(Lc8/Yg;)Lc8/wh;
    .locals 2
    .param p1, "transition"    # Lc8/Yg;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    check-cast p1, Lc8/Xg;

    .end local p1    # "transition":Lc8/Yg;
    iget-object v1, p1, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, v1}, Lc8/Bh;->addTransition(Lc8/uh;)Lc8/Bh;

    .line 47
    return-object p0
.end method

.method public bridge synthetic addTransition(Lc8/Yg;)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/wh;->addTransition(Lc8/Yg;)Lc8/wh;

    move-result-object v0

    return-object v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    invoke-virtual {v0}, Lc8/Bh;->getOrdering()I

    move-result v0

    return v0
.end method

.method public removeTransition(Lc8/Yg;)Lc8/wh;
    .locals 2
    .param p1, "transition"    # Lc8/Yg;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    check-cast p1, Lc8/Xg;

    .end local p1    # "transition":Lc8/Yg;
    iget-object v1, p1, Lc8/Xg;->mTransition:Lc8/uh;

    invoke-virtual {v0, v1}, Lc8/Bh;->removeTransition(Lc8/uh;)Lc8/Bh;

    .line 53
    return-object p0
.end method

.method public bridge synthetic removeTransition(Lc8/Yg;)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/wh;->removeTransition(Lc8/Yg;)Lc8/wh;

    move-result-object v0

    return-object v0
.end method

.method public setOrdering(I)Lc8/wh;
    .locals 1
    .param p1, "ordering"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lc8/wh;->mTransitionSet:Lc8/Bh;

    invoke-virtual {v0, p1}, Lc8/Bh;->setOrdering(I)Lc8/Bh;

    .line 41
    return-object p0
.end method

.method public bridge synthetic setOrdering(I)Lc8/xh;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lc8/wh;->setOrdering(I)Lc8/wh;

    move-result-object v0

    return-object v0
.end method
