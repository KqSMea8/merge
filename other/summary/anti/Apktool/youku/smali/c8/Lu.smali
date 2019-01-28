.class public Lc8/Lu;
.super Lc8/Bt;
.source "MenuPopupWindow.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lc8/Ku;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 137
    invoke-direct {p0, p1, p2}, Lc8/Bt;-><init>(Landroid/content/Context;Z)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 141
    .local v0, "config":Landroid/content/res/Configuration;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 143
    iput v4, p0, Lc8/Lu;->mAdvanceKey:I

    .line 144
    iput v5, p0, Lc8/Lu;->mRetreatKey:I

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iput v5, p0, Lc8/Lu;->mAdvanceKey:I

    .line 147
    iput v4, p0, Lc8/Lu;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lc8/Lu;->setSelection(I)V

    .line 157
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lc8/Bt;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lc8/Bt;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lc8/Bt;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lc8/Bt;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lc8/Bt;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    iget-object v9, p0, Lc8/Lu;->mHoverListener:Lc8/Ku;

    if-eqz v9, :cond_2

    .line 187
    invoke-virtual {p0}, Lc8/Lu;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 188
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_3

    move-object v1, v0

    .line 189
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 190
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 191
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lc8/Oq;

    .line 198
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Lc8/Oq;
    :goto_0
    const/4 v6, 0x0

    .line 199
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lc8/Lu;->pointToPosition(II)I

    move-result v8

    .line 201
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 202
    sub-int v3, v8, v2

    .line 203
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    invoke-virtual {v5}, Lc8/Oq;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 204
    invoke-virtual {v5, v3}, Lc8/Oq;->getItem(I)Lc8/Vq;

    move-result-object v6

    .line 209
    .end local v3    # "itemPosition":I
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Lc8/Lu;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 210
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    .line 211
    invoke-virtual {v5}, Lc8/Oq;->getAdapterMenu()Lc8/Rq;

    move-result-object v4

    .line 212
    .local v4, "menu":Lc8/Rq;
    if-eqz v7, :cond_1

    .line 213
    iget-object v9, p0, Lc8/Lu;->mHoverListener:Lc8/Ku;

    invoke-interface {v9, v4, v7}, Lc8/Ku;->onItemHoverExit(Lc8/Rq;Landroid/view/MenuItem;)V

    .line 216
    :cond_1
    iput-object v6, p0, Lc8/Lu;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 218
    if-eqz v6, :cond_2

    .line 219
    iget-object v9, p0, Lc8/Lu;->mHoverListener:Lc8/Ku;

    invoke-interface {v9, v4, v6}, Lc8/Ku;->onItemHoverEnter(Lc8/Rq;Landroid/view/MenuItem;)V

    .line 224
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Lc8/Rq;
    .end local v5    # "menuAdapter":Lc8/Oq;
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lc8/Bt;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 193
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 194
    check-cast v5, Lc8/Oq;

    .restart local v5    # "menuAdapter":Lc8/Oq;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-virtual {p0}, Lc8/Lu;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Lq;

    .line 162
    .local v0, "selectedItem":Lc8/Lq;
    if-eqz v0, :cond_1

    iget v1, p0, Lc8/Lu;->mAdvanceKey:I

    if-ne p1, v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lc8/Lq;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc8/Lq;->getItemData()Lc8/Vq;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Vq;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lc8/Lu;->getSelectedItemPosition()I

    move-result v1

    .line 167
    invoke-virtual {p0}, Lc8/Lu;->getSelectedItemId()J

    move-result-wide v4

    .line 164
    invoke-virtual {p0, v0, v1, v4, v5}, Lc8/Lu;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v1, v2

    .line 177
    :goto_0
    return v1

    .line 170
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lc8/Lu;->mRetreatKey:I

    if-ne p1, v1, :cond_2

    .line 171
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lc8/Lu;->setSelection(I)V

    .line 174
    invoke-virtual {p0}, Lc8/Lu;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lc8/Oq;

    invoke-virtual {v1}, Lc8/Oq;->getAdapterMenu()Lc8/Rq;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/Rq;->close(Z)V

    move v1, v2

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    invoke-super {p0, p1, p2}, Lc8/Bt;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setHoverListener(Lc8/Ku;)V
    .locals 0
    .param p1, "hoverListener"    # Lc8/Ku;

    .prologue
    .line 152
    iput-object p1, p0, Lc8/Lu;->mHoverListener:Lc8/Ku;

    .line 153
    return-void
.end method