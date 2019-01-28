.class public abstract Lc8/ggb;
.super Landroid/support/v4/app/Fragment;
.source "BaseAuthFragment.java"

# interfaces
.implements Lc8/fgb;


# instance fields
.field protected mAuthPresenter:Lc8/egb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lc8/ggb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/ggb;->mAuthPresenter:Lc8/egb;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lc8/ggb;->mAuthPresenter:Lc8/egb;

    invoke-virtual {v0}, Lc8/egb;->onCancel()V

    .line 30
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lc8/egb;

    invoke-direct {v0, p0}, Lc8/egb;-><init>(Lc8/fgb;)V

    iput-object v0, p0, Lc8/ggb;->mAuthPresenter:Lc8/egb;

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 35
    iget-object v0, p0, Lc8/ggb;->mAuthPresenter:Lc8/egb;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ggb;->mAuthPresenter:Lc8/egb;

    .line 38
    :cond_0
    return-void
.end method
