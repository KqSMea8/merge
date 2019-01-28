.class public Lc8/qg;
.super Lc8/Tg;
.source "ChangeBounds.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Tg;-><init>(Z)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Lc8/rg;

    invoke-direct {v0, p0}, Lc8/rg;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lc8/tg;

    invoke-direct {v0, p0}, Lc8/tg;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureEndValues(Lc8/Ch;)V

    .line 45
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureStartValues(Lc8/Ch;)V

    .line 50
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "endValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Yg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 1
    .param p1, "resizeClip"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lc8/qg;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/sg;

    invoke-interface {v0, p1}, Lc8/sg;->setResizeClip(Z)V

    .line 74
    return-void
.end method
