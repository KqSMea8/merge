.class public Lc8/vh;
.super Lc8/Tg;
.source "TransitionSet.java"


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Tg;-><init>(Z)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 60
    new-instance v0, Lc8/wh;

    invoke-direct {v0, p0}, Lc8/wh;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lc8/yh;

    invoke-direct {v0, p0}, Lc8/yh;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    goto :goto_0
.end method


# virtual methods
.method public addTransition(Lc8/Tg;)Lc8/vh;
    .locals 2
    .param p1, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/xh;

    iget-object v1, p1, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-interface {v0, v1}, Lc8/xh;->addTransition(Lc8/Yg;)Lc8/xh;

    .line 108
    return-object p0
.end method

.method public captureEndValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureEndValues(Lc8/Ch;)V

    .line 126
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1}, Lc8/Yg;->captureStartValues(Lc8/Ch;)V

    .line 131
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
    .line 137
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Yg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/xh;

    invoke-interface {v0}, Lc8/xh;->getOrdering()I

    move-result v0

    return v0
.end method

.method public removeTransition(Lc8/Tg;)Lc8/vh;
    .locals 2
    .param p1, "transition"    # Lc8/Tg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/xh;

    iget-object v1, p1, Lc8/Tg;->mImpl:Lc8/Yg;

    invoke-interface {v0, v1}, Lc8/xh;->removeTransition(Lc8/Yg;)Lc8/xh;

    .line 120
    return-object p0
.end method

.method public setOrdering(I)Lc8/vh;
    .locals 1
    .param p1, "ordering"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lc8/vh;->mImpl:Lc8/Yg;

    check-cast v0, Lc8/xh;

    invoke-interface {v0, p1}, Lc8/xh;->setOrdering(I)Lc8/xh;

    .line 89
    return-object p0
.end method
