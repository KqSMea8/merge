.class public abstract Lc8/Bq;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lc8/hr;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lc8/gr;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lc8/Rq;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lc8/jr;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lc8/Bq;->mSystemContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Bq;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Lc8/Bq;->mMenuLayoutRes:I

    .line 65
    iput p3, p0, Lc8/Bq;->mItemLayoutRes:I

    .line 66
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public abstract bindItemView(Lc8/Vq;Lc8/ir;)V
.end method

.method public collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lc8/ir;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/Bq;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lc8/Bq;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/ir;

    return-object v0
.end method

.method public expandItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lc8/gr;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Bq;->mCallback:Lc8/gr;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lc8/Bq;->mId:I

    return v0
.end method

.method public getItemView(Lc8/Vq;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lc8/Vq;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    instance-of v1, p2, Lc8/ir;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 182
    check-cast v0, Lc8/ir;

    .line 186
    .local v0, "itemView":Lc8/ir;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lc8/Bq;->bindItemView(Lc8/Vq;Lc8/ir;)V

    .line 187
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lc8/ir;
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0, p3}, Lc8/Bq;->createItemView(Landroid/view/ViewGroup;)Lc8/ir;

    move-result-object v0

    .restart local v0    # "itemView":Lc8/ir;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lc8/jr;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lc8/Bq;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lc8/Bq;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/jr;

    iput-object v0, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    .line 79
    iget-object v0, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    iget-object v1, p0, Lc8/Bq;->mMenu:Lc8/Rq;

    invoke-interface {v0, v1}, Lc8/jr;->initialize(Lc8/Rq;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Bq;->updateMenuView(Z)V

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lc8/Rq;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lc8/Rq;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/Bq;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lc8/Bq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/Bq;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lc8/Bq;->mMenu:Lc8/Rq;

    .line 73
    return-void
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lc8/Bq;->mCallback:Lc8/gr;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lc8/Bq;->mCallback:Lc8/gr;

    invoke-interface {v0, p1, p2}, Lc8/gr;->onCloseMenu(Lc8/Rq;Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 1
    .param p1, "menu"    # Lc8/pr;

    .prologue
    .line 216
    iget-object v0, p0, Lc8/Bq;->mCallback:Lc8/gr;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lc8/Bq;->mCallback:Lc8/gr;

    invoke-interface {v0, p1}, Lc8/gr;->onOpenSubMenu(Lc8/Rq;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lc8/gr;)V
    .locals 0
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 152
    iput-object p1, p0, Lc8/Bq;->mCallback:Lc8/gr;

    .line 153
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 239
    iput p1, p0, Lc8/Bq;->mId:I

    .line 240
    return-void
.end method

.method public shouldIncludeItem(ILc8/Vq;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lc8/Vq;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 90
    iget-object v7, p0, Lc8/Bq;->mMenuView:Lc8/jr;

    check-cast v7, Landroid/view/ViewGroup;

    .line 91
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 124
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "childIndex":I
    iget-object v9, p0, Lc8/Bq;->mMenu:Lc8/Rq;

    if-eqz v9, :cond_6

    .line 95
    iget-object v9, p0, Lc8/Bq;->mMenu:Lc8/Rq;

    invoke-virtual {v9}, Lc8/Rq;->flagActionItems()V

    .line 96
    iget-object v9, p0, Lc8/Bq;->mMenu:Lc8/Rq;

    invoke-virtual {v9}, Lc8/Rq;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 97
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 98
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 99
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Vq;

    .line 100
    .local v3, "item":Lc8/Vq;
    invoke-virtual {p0, v0, v3}, Lc8/Bq;->shouldIncludeItem(ILc8/Vq;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 101
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lc8/ir;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lc8/ir;

    .line 103
    invoke-interface {v9}, Lc8/ir;->getItemData()Lc8/Vq;

    move-result-object v6

    .line 104
    .local v6, "oldItem":Lc8/Vq;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lc8/Bq;->getItemView(Lc8/Vq;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 105
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 108
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 110
    :cond_2
    if-eq v5, v1, :cond_3

    .line 111
    invoke-virtual {p0, v5, v0}, Lc8/Bq;->addItemView(Landroid/view/View;I)V

    .line 113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 98
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lc8/Vq;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 119
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lc8/Vq;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 120
    invoke-virtual {p0, v7, v0}, Lc8/Bq;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
