.class public Lc8/Nq;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lc8/hr;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mq;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lc8/Mq;

.field private mCallback:Lc8/gr;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lc8/Rq;

.field mMenuView:Lc8/Kq;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lc8/Nq;->mItemLayoutRes:I

    .line 82
    iput p2, p0, Lc8/Nq;->mThemeRes:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lc8/Nq;-><init>(II)V

    .line 71
    iput-object p1, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Nq;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lc8/Mq;

    invoke-direct {v0, p0}, Lc8/Mq;-><init>(Lc8/Nq;)V

    iput-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    .line 127
    :cond_0
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lc8/Nq;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lc8/Nq;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lc8/jr;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    iget-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lc8/Nq;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/phone/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Kq;

    iput-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    .line 107
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lc8/Mq;

    invoke-direct {v0, p0}, Lc8/Mq;-><init>(Lc8/Nq;)V

    iput-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    .line 110
    :cond_0
    iget-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    iget-object v1, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    invoke-virtual {v0, v1}, Lc8/Kq;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    invoke-virtual {v0, p0}, Lc8/Kq;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lc8/Rq;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lc8/Rq;

    .prologue
    .line 87
    iget v0, p0, Lc8/Nq;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lc8/Nq;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Nq;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    :cond_0
    :goto_0
    iput-object p2, p0, Lc8/Nq;->mMenu:Lc8/Rq;

    .line 97
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    invoke-virtual {v0}, Lc8/Mq;->notifyDataSetChanged()V

    .line 100
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 91
    iput-object p1, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lc8/Nq;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lc8/Nq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Nq;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lc8/Nq;->mCallback:Lc8/gr;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lc8/Nq;->mCallback:Lc8/gr;

    invoke-interface {v0, p1, p2}, Lc8/gr;->onCloseMenu(Lc8/Rq;Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lc8/Nq;->mMenu:Lc8/Rq;

    iget-object v1, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    invoke-virtual {v1, p3}, Lc8/Mq;->getItem(I)Lc8/Vq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;Lc8/hr;I)Z

    .line 173
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 225
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lc8/Nq;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    if-nez v1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lc8/Nq;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 2
    .param p1, "subMenu"    # Lc8/pr;

    .prologue
    .line 142
    invoke-virtual {p1}, Lc8/pr;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    new-instance v0, Lc8/Sq;

    invoke-direct {v0, p1}, Lc8/Sq;-><init>(Lc8/Rq;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Sq;->show(Landroid/os/IBinder;)V

    .line 146
    iget-object v0, p0, Lc8/Nq;->mCallback:Lc8/gr;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lc8/Nq;->mCallback:Lc8/gr;

    invoke-interface {v0, p1}, Lc8/gr;->onOpenSubMenu(Lc8/Rq;)Z

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string/jumbo v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 198
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 201
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 193
    :cond_0
    const-string/jumbo v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 194
    return-void
.end method

.method public setCallback(Lc8/gr;)V
    .locals 0
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/Nq;->mCallback:Lc8/gr;

    .line 138
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 204
    iput p1, p0, Lc8/Nq;->mId:I

    .line 205
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 164
    iput p1, p0, Lc8/Nq;->mItemIndexOffset:I

    .line 165
    iget-object v0, p0, Lc8/Nq;->mMenuView:Lc8/Kq;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Nq;->updateMenuView(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nq;->mAdapter:Lc8/Mq;

    invoke-virtual {v0}, Lc8/Mq;->notifyDataSetChanged()V

    .line 133
    :cond_0
    return-void
.end method
