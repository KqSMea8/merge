.class public Lc8/Oh;
.super Lc8/dh;
.source "VisibilityKitKat.java"

# interfaces
.implements Lc8/Lh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Nh;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/dh;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public init(Lc8/Zg;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Lc8/Zg;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Oh;->mExternalTransition:Lc8/Zg;

    .line 32
    if-nez p2, :cond_0

    .line 33
    new-instance v0, Lc8/Nh;

    check-cast p1, Lc8/Mh;

    .end local p1    # "external":Lc8/Zg;
    invoke-direct {v0, p1}, Lc8/Nh;-><init>(Lc8/Mh;)V

    iput-object v0, p0, Lc8/Oh;->mTransition:Landroid/transition/Transition;

    .line 37
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local p1    # "external":Lc8/Zg;
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/transition/Visibility;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Lc8/Oh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public isVisible(Lc8/Ch;)Z
    .locals 2
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Oh;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p1}, Lc8/Oh;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->isVisible(Landroid/transition/TransitionValues;)Z

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
    .line 47
    iget-object v0, p0, Lc8/Oh;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 48
    invoke-static {p2}, Lc8/Oh;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 49
    invoke-static {p4}, Lc8/Oh;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 55
    iget-object v0, p0, Lc8/Oh;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    .line 56
    invoke-static {p2}, Lc8/Oh;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 57
    invoke-static {p4}, Lc8/Oh;->convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
