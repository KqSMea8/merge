.class public Lc8/Wq;
.super Landroid/support/v4/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Landroid/view/ActionProvider;

.field final synthetic this$0:Lc8/ar;


# direct methods
.method public constructor <init>(Lc8/ar;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .prologue
    .line 351
    iput-object p1, p0, Lc8/Wq;->this$0:Lc8/ar;

    .line 352
    invoke-direct {p0, p2}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 353
    iput-object p3, p0, Lc8/Wq;->mInner:Landroid/view/ActionProvider;

    .line 354
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lc8/Wq;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lc8/Wq;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lc8/Wq;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 373
    iget-object v0, p0, Lc8/Wq;->mInner:Landroid/view/ActionProvider;

    iget-object v1, p0, Lc8/Wq;->this$0:Lc8/ar;

    invoke-virtual {v1, p1}, Lc8/ar;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 374
    return-void
.end method
