.class public final Lc8/oo;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lc8/gr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method constructor <init>(Lc8/vo;)V
    .locals 0

    .prologue
    .line 1870
    iput-object p1, p0, Lc8/oo;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1884
    iget-object v0, p0, Lc8/oo;->this$0:Lc8/vo;

    invoke-virtual {v0, p1}, Lc8/vo;->checkCloseActionMenu(Lc8/Rq;)V

    .line 1885
    return-void
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 2
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 1875
    iget-object v1, p0, Lc8/oo;->this$0:Lc8/vo;

    invoke-virtual {v1}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1876
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 1877
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1879
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
