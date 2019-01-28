.class public Lc8/Lb;
.super Lc8/Rq;
.source "NavigationMenu.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Lb;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lc8/Vq;

    .line 44
    .local v0, "item":Lc8/Vq;
    new-instance v1, Lc8/bc;

    invoke-virtual {p0}, Lc8/Lb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lc8/bc;-><init>(Landroid/content/Context;Lc8/Lb;Lc8/Vq;)V

    .line 45
    .local v1, "subMenu":Lc8/pr;
    invoke-virtual {v0, v1}, Lc8/Vq;->setSubMenu(Lc8/pr;)V

    .line 46
    return-object v1
.end method
