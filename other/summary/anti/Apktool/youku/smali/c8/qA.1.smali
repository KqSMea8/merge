.class public Lc8/qA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sA;


# direct methods
.method constructor <init>(Lc8/sA;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sA;

    .prologue
    .line 239
    iput-object p1, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 248
    iget-object v1, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-static {p2}, Lc8/iA;->asInterface(Landroid/os/IBinder;)Lc8/jA;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/sA;->access$102(Lc8/sA;Lc8/jA;)Lc8/jA;

    .line 250
    :try_start_0
    iget-object v1, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-static {v1}, Lc8/sA;->access$100(Lc8/sA;)Lc8/jA;

    move-result-object v1

    invoke-interface {v1}, Lc8/jA;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-static {v2}, Lc8/sA;->access$200(Lc8/sA;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iget-object v1, p0, Lc8/qA;->this$0:Lc8/sA;

    iget-object v2, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-static {v2}, Lc8/sA;->access$100(Lc8/sA;)Lc8/jA;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/sA;->access$300(Lc8/sA;Lc8/jA;)V

    .line 255
    iget-object v1, p0, Lc8/qA;->this$0:Lc8/sA;

    invoke-static {v1}, Lc8/sA;->access$400(Lc8/sA;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 244
    return-void
.end method
