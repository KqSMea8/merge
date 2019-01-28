.class public Lc8/bc;
.super Lc8/pr;
.source "NavigationSubMenu.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Lb;Lc8/Vq;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lc8/Lb;
    .param p3, "item"    # Lc8/Vq;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lc8/pr;-><init>(Landroid/content/Context;Lc8/Rq;Lc8/Vq;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1
    .param p1, "structureChanged"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1}, Lc8/pr;->onItemsChanged(Z)V

    .line 43
    invoke-virtual {p0}, Lc8/bc;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lc8/Rq;

    invoke-virtual {v0, p1}, Lc8/Rq;->onItemsChanged(Z)V

    .line 44
    return-void
.end method
