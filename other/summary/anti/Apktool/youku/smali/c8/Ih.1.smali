.class public abstract Lc8/Ih;
.super Lc8/Tg;
.source "Visibility.java"

# interfaces
.implements Lc8/Mh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Ih;-><init>(Z)V

    .line 40
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "deferred"    # Z

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Tg;-><init>(Z)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Lc8/Oh;

    invoke-direct {v0}, Lc8/Oh;-><init>()V

    iput-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    .line 50
    :goto_0
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p0}, Lc8/Yg;->init(Lc8/Zg;)V

    .line 52
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Lc8/Kh;

    invoke-direct {v0}, Lc8/Kh;-><init>()V

    iput-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

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
    .line 56
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureEndValues(Lc8/Ch;)V

    .line 57
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureStartValues(Lc8/Ch;)V

    .line 62
    return-void
.end method

.method public isVisible(Lc8/Ch;)Z
    .locals 1
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/Lh;

    invoke-interface {v0, p1}, Lc8/Lh;->isVisible(Lc8/Ch;)Z

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
    .line 102
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/Lh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/Lh;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

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
    .line 124
    iget-object v0, p0, Lc8/Ih;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/Lh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/Lh;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
