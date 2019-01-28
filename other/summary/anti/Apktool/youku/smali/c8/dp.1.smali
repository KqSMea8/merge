.class public Lc8/dp;
.super Lc8/lq;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lc8/Pq;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Lc8/kq;

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

.field private final mMenu:Lc8/Rq;

.field final synthetic this$0:Lc8/fp;


# direct methods
.method public constructor <init>(Lc8/fp;Landroid/content/Context;Lc8/kq;)V
    .locals 2
    .param p1, "this$0"    # Lc8/fp;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lc8/kq;

    .prologue
    .line 972
    iput-object p1, p0, Lc8/dp;->this$0:Lc8/fp;

    invoke-direct {p0}, Lc8/lq;-><init>()V

    .line 973
    iput-object p2, p0, Lc8/dp;->mActionModeContext:Landroid/content/Context;

    .line 974
    iput-object p3, p0, Lc8/dp;->mCallback:Lc8/kq;

    .line 975
    new-instance v0, Lc8/Rq;

    invoke-direct {v0, p2}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 976
    invoke-virtual {v0, v1}, Lc8/Rq;->setDefaultShowAsAction(I)Lc8/Rq;

    move-result-object v0

    iput-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    .line 977
    iget-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v0, p0}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 978
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->stopDispatchingItemsChanged()V

    .line 1041
    :try_start_0
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    iget-object v1, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-interface {v0, p0, v1}, Lc8/kq;->onCreateActionMode(Lc8/lq;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1043
    iget-object v1, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v1}, Lc8/Rq;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v1}, Lc8/Rq;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 992
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mActionMode:Lc8/dp;

    if-eq v0, p0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-boolean v0, v0, Lc8/fp;->mHiddenByApp:Z

    iget-object v1, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-boolean v1, v1, Lc8/fp;->mHiddenBySystem:Z

    invoke-static {v0, v1, v2}, Lc8/fp;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iput-object p0, v0, Lc8/fp;->mDeferredDestroyActionMode:Lc8/lq;

    .line 1005
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v1, p0, Lc8/dp;->mCallback:Lc8/kq;

    iput-object v1, v0, Lc8/fp;->mDeferredModeDestroyCallback:Lc8/kq;

    .line 1009
    :goto_1
    iput-object v3, p0, Lc8/dp;->mCallback:Lc8/kq;

    .line 1010
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    invoke-virtual {v0, v2}, Lc8/fp;->animateToMode(Z)V

    .line 1013
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->closeMode()V

    .line 1014
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1016
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    iget-object v1, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-boolean v1, v1, Lc8/fp;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lc8/Er;->setHideOnContentScrollEnabled(Z)V

    .line 1018
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iput-object v3, v0, Lc8/fp;->mActionMode:Lc8/dp;

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    invoke-interface {v0, p0}, Lc8/kq;->onDestroyActionMode(Lc8/lq;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lc8/dp;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/dp;->mCustomView:Ljava/lang/ref/WeakReference;

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
    .line 987
    iget-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 982
    new-instance v0, Lc8/tq;

    iget-object v1, p0, Lc8/dp;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/tq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mActionMode:Lc8/dp;

    if-eq v0, p0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->stopDispatchingItemsChanged()V

    .line 1032
    :try_start_0
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    iget-object v1, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-interface {v0, p0, v1}, Lc8/kq;->onPrepareActionMode(Lc8/lq;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    iget-object v0, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/dp;->mMenu:Lc8/Rq;

    invoke-virtual {v1}, Lc8/Rq;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1108
    return-void
.end method

.method public onCloseSubMenu(Lc8/pr;)V
    .locals 0
    .param p1, "menu"    # Lc8/pr;

    .prologue
    .line 1124
    return-void
.end method

.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1100
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    invoke-interface {v0, p0, p2}, Lc8/kq;->onActionItemClicked(Lc8/lq;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 1127
    iget-object v0, p0, Lc8/dp;->mCallback:Lc8/kq;

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lc8/dp;->invalidate()V

    .line 1131
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 3
    .param p1, "subMenu"    # Lc8/pr;

    .prologue
    const/4 v0, 0x1

    .line 1111
    iget-object v1, p0, Lc8/dp;->mCallback:Lc8/kq;

    if-nez v1, :cond_1

    .line 1112
    const/4 v0, 0x0

    .line 1120
    :cond_0
    :goto_0
    return v0

    .line 1115
    :cond_1
    invoke-virtual {p1}, Lc8/pr;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    new-instance v1, Lc8/fr;

    iget-object v2, p0, Lc8/dp;->this$0:Lc8/fp;

    invoke-virtual {v2}, Lc8/fp;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lc8/fr;-><init>(Landroid/content/Context;Lc8/Rq;)V

    invoke-virtual {v1}, Lc8/fr;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1049
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setCustomView(Landroid/view/View;)V

    .line 1050
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/dp;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1051
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/dp;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1071
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1055
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1056
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/dp;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1060
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setTitle(Ljava/lang/CharSequence;)V

    .line 1061
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1085
    invoke-super {p0, p1}, Lc8/lq;->setTitleOptionalHint(Z)V

    .line 1086
    iget-object v0, p0, Lc8/dp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v0, p1}, Lc8/yr;->setTitleOptional(Z)V

    .line 1087
    return-void
.end method
