.class public Lc8/Ag;
.super Lc8/Xg;
.source "FadeIcs.java"

# interfaces
.implements Lc8/Lh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/Xg;-><init>()V

    .line 29
    new-instance v0, Lc8/Fg;

    invoke-direct {v0}, Lc8/Fg;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc8/Ag;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lc8/Zg;I)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;
    .param p2, "fadingMode"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/Xg;-><init>()V

    .line 33
    new-instance v0, Lc8/Fg;

    invoke-direct {v0, p2}, Lc8/Fg;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lc8/Ag;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isVisible(Lc8/Ch;)Z
    .locals 1
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Ag;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Fg;

    invoke-virtual {v0, p1}, Lc8/Fg;->isVisible(Lc8/Ch;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lc8/Ag;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Fg;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Fg;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Ag;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Fg;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/Fg;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
