.class public Lc8/pr;
.super Lc8/Rq;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mItem:Lc8/Vq;

.field private mParentMenu:Lc8/Rq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Rq;Lc8/Vq;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lc8/Rq;
    .param p3, "item"    # Lc8/Vq;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    .line 44
    iput-object p3, p0, Lc8/pr;->mItem:Lc8/Vq;

    .line 45
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lc8/Vq;)Z
    .locals 1
    .param p1, "item"    # Lc8/Vq;

    .prologue
    .line 128
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->collapseItemActionView(Lc8/Vq;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lc8/Rq;->dispatchMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    .line 88
    invoke-virtual {v0, p1, p2}, Lc8/Rq;->dispatchMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lc8/Vq;)Z
    .locals 1
    .param p1, "item"    # Lc8/Vq;

    .prologue
    .line 123
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->expandItemActionView(Lc8/Vq;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lc8/pr;->mItem:Lc8/Vq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/pr;->mItem:Lc8/Vq;

    invoke-virtual {v1}, Lc8/Vq;->getItemId()I

    move-result v0

    .line 134
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_1
    return-object v1

    .line 133
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v0    # "itemId":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lc8/Rq;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/pr;->mItem:Lc8/Vq;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    return-object v0
.end method

.method public getRootMenu()Lc8/Rq;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->getRootMenu()Lc8/Rq;

    move-result-object v0

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0}, Lc8/Rq;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lc8/Pq;)V
    .locals 1
    .param p1, "callback"    # Lc8/Pq;

    .prologue
    .line 77
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 78
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 106
    invoke-super {p0, p1}, Lc8/Rq;->setHeaderIconInt(I)Lc8/Rq;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lc8/Rq;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lc8/Rq;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 114
    invoke-super {p0, p1}, Lc8/Rq;->setHeaderTitleInt(I)Lc8/Rq;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lc8/Rq;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lc8/Rq;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lc8/Rq;->setHeaderViewInt(Landroid/view/View;)Lc8/Rq;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lc8/pr;->mItem:Lc8/Vq;

    invoke-virtual {v0, p1}, Lc8/Vq;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iget-object v0, p0, Lc8/pr;->mItem:Lc8/Vq;

    invoke-virtual {v0, p1}, Lc8/Vq;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->setQwertyMode(Z)V

    .line 50
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lc8/pr;->mParentMenu:Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->setShortcutsVisible(Z)V

    .line 60
    return-void
.end method
