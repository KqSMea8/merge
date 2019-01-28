.class public Lc8/Bg;
.super Lc8/dh;
.source "FadeKitKat.java"

# interfaces
.implements Lc8/Lh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/dh;-><init>()V

    .line 30
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc8/Bg;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lc8/Zg;I)V
    .locals 1
    .param p1, "transition"    # Lc8/Zg;
    .param p2, "fadingMode"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/dh;-><init>()V

    .line 34
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lc8/Bg;->init(Lc8/Zg;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public isVisible(Lc8/Ch;)Z
    .locals 2
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Bg;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p1}, Lc8/Bg;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Fade;->isVisible(Landroid/transition/TransitionValues;)Z

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
    .line 45
    iget-object v0, p0, Lc8/Bg;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 46
    invoke-static {p2}, Lc8/Bg;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 47
    invoke-static {p4}, Lc8/Bg;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 53
    iget-object v0, p0, Lc8/Bg;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 54
    invoke-static {p2}, Lc8/Bg;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 55
    invoke-static {p4}, Lc8/Bg;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
