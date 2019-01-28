.class public Lc8/zk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hk;->connect(Ljava/lang/String;ILandroid/os/Bundle;Lc8/Ik;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hk;

.field final synthetic val$callbacks:Lc8/Ik;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$1"    # Lc8/Hk;

    .prologue
    .line 596
    iput-object p1, p0, Lc8/zk;->this$1:Lc8/Hk;

    iput-object p2, p0, Lc8/zk;->val$callbacks:Lc8/Ik;

    iput-object p3, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lc8/zk;->val$rootHints:Landroid/os/Bundle;

    iput p5, p0, Lc8/zk;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 599
    iget-object v2, p0, Lc8/zk;->val$callbacks:Lc8/Ik;

    invoke-interface {v2}, Lc8/Ik;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 602
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Lc8/mk;

    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    invoke-direct {v1, v2}, Lc8/mk;-><init>(Lc8/Lk;)V

    .line 605
    .local v1, "connection":Lc8/mk;
    iget-object v2, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    iput-object v2, v1, Lc8/mk;->pkg:Ljava/lang/String;

    .line 606
    iget-object v2, p0, Lc8/zk;->val$rootHints:Landroid/os/Bundle;

    iput-object v2, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    .line 607
    iget-object v2, p0, Lc8/zk;->val$callbacks:Lc8/Ik;

    iput-object v2, v1, Lc8/mk;->callbacks:Lc8/Ik;

    .line 609
    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v3, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lc8/zk;->val$uid:I

    iget-object v5, p0, Lc8/zk;->val$rootHints:Landroid/os/Bundle;

    .line 610
    invoke-virtual {v2, v3, v4, v5}, Lc8/Lk;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Lc8/lk;

    move-result-object v2

    iput-object v2, v1, Lc8/mk;->root:Lc8/lk;

    .line 613
    iget-object v2, v1, Lc8/mk;->root:Lc8/lk;

    if-nez v2, :cond_1

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No root for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    :try_start_0
    iget-object v2, p0, Lc8/zk;->val$callbacks:Lc8/Ik;

    invoke-interface {v2}, Lc8/Ik;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lc8/zk;->val$callbacks:Lc8/Ik;

    iget-object v3, v1, Lc8/mk;->root:Lc8/lk;

    invoke-virtual {v3}, Lc8/lk;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v4, v4, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v4, v4, Lc8/Lk;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v5, v1, Lc8/mk;->root:Lc8/lk;

    .line 627
    invoke-virtual {v5}, Lc8/lk;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 626
    invoke-interface {v2, v3, v4, v5}, Lc8/Ik;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 630
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/zk;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    iget-object v2, p0, Lc8/zk;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
