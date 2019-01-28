.class public Lc8/Nh;
.super Landroid/transition/Visibility;
.source "VisibilityKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Oh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityWrapper"
.end annotation


# instance fields
.field private final mVisibility:Lc8/Mh;


# direct methods
.method constructor <init>(Lc8/Mh;)V
    .locals 0
    .param p1, "visibility"    # Lc8/Mh;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 65
    iput-object p1, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    .line 66
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-static {v0, p1}, Lc8/dh;->wrapCaptureEndValues(Lc8/Zg;Landroid/transition/TransitionValues;)V

    .line 76
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-static {v0, p1}, Lc8/dh;->wrapCaptureStartValues(Lc8/Zg;Landroid/transition/TransitionValues;)V

    .line 71
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 82
    iget-object v0, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-static {p2}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v1

    .line 83
    invoke-static {p3}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v2

    .line 82
    invoke-interface {v0, p1, v1, v2}, Lc8/Mh;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 93
    :goto_0
    return v1

    .line 91
    :cond_0
    new-instance v0, Lc8/Ch;

    invoke-direct {v0}, Lc8/Ch;-><init>()V

    .line 92
    .local v0, "externalValues":Lc8/Ch;
    invoke-static {p1, v0}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 93
    iget-object v1, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-interface {v1, v0}, Lc8/Mh;->isVisible(Lc8/Ch;)Z

    move-result v1

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-static {p2}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v2

    .line 101
    invoke-static {p4}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 100
    invoke-interface/range {v0 .. v5}, Lc8/Mh;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lc8/Nh;->mVisibility:Lc8/Mh;

    invoke-static {p2}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v2

    .line 110
    invoke-static {p4}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 108
    invoke-interface/range {v0 .. v5}, Lc8/Mh;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
