.class public Lc8/NWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OWp;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/OWp;


# direct methods
.method constructor <init>(Lc8/OWp;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 639
    :try_start_0
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnected running tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v1}, Lc8/OWp;->access$300(Lc8/OWp;)Lc8/lXp;

    move-result-object v1

    iget-object v2, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v2}, Lc8/OWp;->access$200(Lc8/OWp;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/lXp;->doSend(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send finish. close this connection"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v1, v7}, Lc8/OWp;->access$302(Lc8/OWp;Lc8/lXp;)Lc8/lXp;

    .line 648
    invoke-static {}, Lc8/QWp;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v2}, Lc8/OWp;->access$400(Lc8/OWp;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 649
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "send finish. close this connection"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v1, v7}, Lc8/OWp;->access$302(Lc8/OWp;Lc8/lXp;)Lc8/lXp;

    .line 648
    invoke-static {}, Lc8/QWp;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v2}, Lc8/OWp;->access$400(Lc8/OWp;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 646
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "AgooFactory"

    const-string/jumbo v3, "send finish. close this connection"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v2, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v2, v7}, Lc8/OWp;->access$302(Lc8/OWp;Lc8/lXp;)Lc8/lXp;

    .line 648
    invoke-static {}, Lc8/QWp;->access$000()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc8/NWp;->this$1:Lc8/OWp;

    invoke-static {v3}, Lc8/OWp;->access$400(Lc8/OWp;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method
