.class public Lc8/Hr;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lc8/Kr;

.field final synthetic this$0:Lc8/Nr;


# direct methods
.method public constructor <init>(Lc8/Nr;Lc8/Kr;)V
    .locals 0
    .param p2, "popup"    # Lc8/Kr;

    .prologue
    .line 794
    iput-object p1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p2, p0, Lc8/Hr;->mPopup:Lc8/Kr;

    .line 796
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    invoke-static {v1}, Lc8/Nr;->access$300(Lc8/Nr;)Lc8/Rq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    invoke-static {v1}, Lc8/Nr;->access$400(Lc8/Nr;)Lc8/Rq;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Rq;->changeMenuMode()V

    .line 802
    :cond_0
    iget-object v1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    invoke-static {v1}, Lc8/Nr;->access$500(Lc8/Nr;)Lc8/jr;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 803
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Hr;->mPopup:Lc8/Kr;

    invoke-virtual {v1}, Lc8/Kr;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    iget-object v2, p0, Lc8/Hr;->mPopup:Lc8/Kr;

    iput-object v2, v1, Lc8/Nr;->mOverflowPopup:Lc8/Kr;

    .line 806
    :cond_1
    iget-object v1, p0, Lc8/Hr;->this$0:Lc8/Nr;

    const/4 v2, 0x0

    iput-object v2, v1, Lc8/Nr;->mPostedOpenRunnable:Lc8/Hr;

    .line 807
    return-void
.end method
