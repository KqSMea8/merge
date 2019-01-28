.class public final Lc8/Uo;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wo;


# direct methods
.method constructor <init>(Lc8/Wo;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lc8/Uo;->this$0:Lc8/Wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 2
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lc8/Uo;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lc8/Uo;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 637
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 2
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 641
    if-nez p1, :cond_0

    iget-object v0, p0, Lc8/Uo;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lc8/Uo;->this$0:Lc8/Wo;

    iget-object v0, v0, Lc8/Wo;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 644
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
