.class public Lc8/oq;
.super Lc8/lq;
.source "StandaloneActionMode.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lc8/kq;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lc8/yr;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lc8/Rq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/yr;Lc8/kq;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lc8/yr;
    .param p3, "callback"    # Lc8/kq;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/lq;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/oq;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lc8/oq;->mContextView:Lc8/yr;

    .line 53
    iput-object p3, p0, Lc8/oq;->mCallback:Lc8/kq;

    .line 55
    new-instance v0, Lc8/Rq;

    invoke-virtual {p2}, Lc8/yr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Rq;->setDefaultShowAsAction(I)Lc8/Rq;

    move-result-object v0

    iput-object v0, p0, Lc8/oq;->mMenu:Lc8/Rq;

    .line 57
    iget-object v0, p0, Lc8/oq;->mMenu:Lc8/Rq;

    invoke-virtual {v0, p0}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 58
    iput-boolean p4, p0, Lc8/oq;->mFocusable:Z

    .line 59
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lc8/oq;->mFinished:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oq;->mFinished:Z

    .line 110
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lc8/yr;->sendAccessibilityEvent(I)V

    .line 111
    iget-object v0, p0, Lc8/oq;->mCallback:Lc8/kq;

    invoke-interface {v0, p0}, Lc8/kq;->onDestroyActionMode(Lc8/lq;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/oq;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oq;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/oq;->mMenu:Lc8/Rq;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lc8/tq;

    iget-object v1, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v1}, Lc8/yr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/tq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lc8/oq;->mCallback:Lc8/kq;

    iget-object v1, p0, Lc8/oq;->mMenu:Lc8/Rq;

    invoke-interface {v0, p0, v1}, Lc8/kq;->onPrepareActionMode(Lc8/lq;Landroid/view/Menu;)Z

    .line 101
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lc8/oq;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public onCloseSubMenu(Lc8/pr;)V
    .locals 0
    .param p1, "menu"    # Lc8/pr;

    .prologue
    .line 156
    return-void
.end method

.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 140
    iget-object v0, p0, Lc8/oq;->mCallback:Lc8/kq;

    invoke-interface {v0, p0, p2}, Lc8/kq;->onActionItemClicked(Lc8/lq;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 159
    invoke-virtual {p0}, Lc8/oq;->invalidate()V

    .line 160
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->showOverflowMenu()Z

    .line 161
    return-void
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 3
    .param p1, "subMenu"    # Lc8/pr;

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1}, Lc8/pr;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return v2

    .line 151
    :cond_0
    new-instance v0, Lc8/fr;

    iget-object v1, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v1}, Lc8/yr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/fr;-><init>(Landroid/content/Context;Lc8/Rq;)V

    invoke-virtual {v0}, Lc8/fr;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setCustomView(Landroid/view/View;)V

    .line 95
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lc8/oq;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lc8/oq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/oq;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lc8/oq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/oq;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Lc8/lq;->setTitleOptionalHint(Z)V

    .line 84
    iget-object v0, p0, Lc8/oq;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setTitleOptional(Z)V

    .line 85
    return-void
.end method
