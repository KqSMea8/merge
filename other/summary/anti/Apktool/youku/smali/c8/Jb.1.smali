.class public Lc8/Jb;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lc8/hr;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mId:I

.field private mMenu:Lc8/Rq;

.field private mMenuView:Lc8/Hb;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Jb;->mUpdateSuspended:Z

    .line 121
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lc8/Jb;->mId:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lc8/jr;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lc8/Rq;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lc8/Rq;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    iget-object v1, p0, Lc8/Jb;->mMenu:Lc8/Rq;

    invoke-virtual {v0, v1}, Lc8/Hb;->initialize(Lc8/Rq;)V

    .line 50
    iput-object p2, p0, Lc8/Jb;->mMenu:Lc8/Rq;

    .line 51
    return-void
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 112
    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iget v1, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lc8/Hb;->tryRestoreSelectedItemId(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    .local v0, "savedState":Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    iget-object v1, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    invoke-virtual {v1}, Lc8/Hb;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    .line 107
    return-object v0
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 1
    .param p1, "subMenu"    # Lc8/pr;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lc8/Hb;)V
    .locals 0
    .param p1, "menuView"    # Lc8/Hb;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    .line 45
    return-void
.end method

.method public setCallback(Lc8/gr;)V
    .locals 0
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 69
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 95
    iput p1, p0, Lc8/Jb;->mId:I

    .line 96
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lc8/Jb;->mUpdateSuspended:Z

    .line 119
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Lc8/Jb;->mUpdateSuspended:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->buildMenuView()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lc8/Jb;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->updateMenuView()V

    goto :goto_0
.end method
