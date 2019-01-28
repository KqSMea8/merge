.class public Lc8/Gj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ij;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ij;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lc8/Ij;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ij;

    .prologue
    .line 1322
    iput-object p1, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iput-object p2, p0, Lc8/Gj;->val$name:Landroid/content/ComponentName;

    iput-object p3, p0, Lc8/Gj;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1325
    sget-boolean v0, Lc8/Tj;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaServiceConnection.onServiceConnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gj;->val$name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gj;->val$binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    invoke-virtual {v0}, Lc8/Jj;->dump()V

    .line 1333
    :cond_0
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    const-string/jumbo v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Lc8/Ij;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1366
    :cond_1
    :goto_0
    return-void

    .line 1338
    :cond_2
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    new-instance v1, Lc8/Oj;

    iget-object v2, p0, Lc8/Gj;->val$binder:Landroid/os/IBinder;

    iget-object v3, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v3, v3, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v3, v3, Lc8/Jj;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lc8/Oj;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v1, v0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1342
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v2, v2, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v2, v2, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1343
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mHandler:Lc8/lj;

    iget-object v1, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v1, v1, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lc8/lj;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1345
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    const/4 v1, 0x1

    iput v1, v0, Lc8/Jj;->mState:I

    .line 1350
    :try_start_0
    sget-boolean v0, Lc8/Tj;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1352
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    invoke-virtual {v0}, Lc8/Jj;->dump()V

    .line 1354
    :cond_3
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v1, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v1, v1, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v2, v2, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v2, v2, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Lc8/Oj;->connect(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoteException during connect for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v1, v1, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1361
    sget-boolean v0, Lc8/Tj;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lc8/Gj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    invoke-virtual {v0}, Lc8/Jj;->dump()V

    goto/16 :goto_0
.end method
