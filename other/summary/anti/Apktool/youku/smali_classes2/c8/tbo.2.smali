.class public abstract Lc8/tbo;
.super Lc8/obo;
.source "BaseStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lc8/zbo;


# instance fields
.field private mStateView:Lc8/Abo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/obo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getStateView()Lc8/Abo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    return-object v0
.end method

.method protected hideStateView()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v0}, Lc8/Abo;->hideView()V

    .line 60
    :cond_0
    return-void
.end method

.method protected abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected onCreateStateView()Lc8/Abo;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lc8/vbo;

    invoke-direct {v0}, Lc8/vbo;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 23
    invoke-virtual {p0}, Lc8/tbo;->onCreateStateView()Lc8/Abo;

    move-result-object v3

    iput-object v3, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lc8/tbo;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "contentView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 27
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string/jumbo v4, "contentView must be no null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_0
    iget-object v3, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v3, p1, p2, p3}, Lc8/Abo;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, "stateView":Landroid/view/View;
    iget-object v3, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v3, p0}, Lc8/Abo;->attachListener(Lc8/zbo;)V

    .line 33
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/tbo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v1, "fl":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    .end local v2    # "stateView":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public onStateViewClick(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 93
    return-void
.end method

.method protected showEmptyView()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v0}, Lc8/Abo;->showEmptyView()V

    .line 78
    :cond_0
    return-void
.end method

.method protected showErrorView(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v0, p1}, Lc8/Abo;->showErrorView(Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected showLoadingView()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v0}, Lc8/Abo;->showLoadingView()V

    .line 66
    :cond_0
    return-void
.end method

.method protected showNoConnectView()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/tbo;->mStateView:Lc8/Abo;

    invoke-interface {v0}, Lc8/Abo;->showNoConnectView()V

    .line 72
    :cond_0
    return-void
.end method
