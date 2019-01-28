.class public Lc8/Lr;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lc8/gr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nr;


# direct methods
.method constructor <init>(Lc8/Nr;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lc8/Lr;->this$0:Lc8/Nr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 3
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 781
    instance-of v1, p1, Lc8/pr;

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Lc8/Rq;->getRootMenu()Lc8/Rq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/Rq;->close(Z)V

    .line 784
    :cond_0
    iget-object v1, p0, Lc8/Lr;->this$0:Lc8/Nr;

    invoke-virtual {v1}, Lc8/Nr;->getCallback()Lc8/gr;

    move-result-object v0

    .line 785
    .local v0, "cb":Lc8/gr;
    if-eqz v0, :cond_1

    .line 786
    invoke-interface {v0, p1, p2}, Lc8/gr;->onCloseMenu(Lc8/Rq;Z)V

    .line 788
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 4
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    const/4 v2, 0x0

    .line 772
    if-nez p1, :cond_0

    move v1, v2

    .line 776
    :goto_0
    return v1

    .line 774
    :cond_0
    iget-object v3, p0, Lc8/Lr;->this$0:Lc8/Nr;

    move-object v1, p1

    check-cast v1, Lc8/pr;

    invoke-virtual {v1}, Lc8/pr;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Lc8/Nr;->mOpenSubMenuId:I

    .line 775
    iget-object v1, p0, Lc8/Lr;->this$0:Lc8/Nr;

    invoke-virtual {v1}, Lc8/Nr;->getCallback()Lc8/gr;

    move-result-object v0

    .line 776
    .local v0, "cb":Lc8/gr;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lc8/gr;->onOpenSubMenu(Lc8/Rq;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
