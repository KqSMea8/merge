.class public final Lc8/So;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lc8/gr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lc8/Wo;


# direct methods
.method constructor <init>(Lc8/Wo;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lc8/So;->this$0:Lc8/Wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 2
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 615
    iget-boolean v0, p0, Lc8/So;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/So;->mClosingActionMenu:Z

    .line 620
    iget-object v0, p0, Lc8/So;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->dismissPopupMenus()V

    .line 621
    iget-object v0, p0, Lc8/So;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lc8/So;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 624
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/So;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 2
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 606
    iget-object v0, p0, Lc8/So;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lc8/So;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
