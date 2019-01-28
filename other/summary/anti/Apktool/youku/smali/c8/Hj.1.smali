.class public Lc8/Hj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ij;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ij;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lc8/Ij;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ij;

    .prologue
    .line 1372
    iput-object p1, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iput-object p2, p0, Lc8/Hj;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1375
    sget-boolean v0, Lc8/Tj;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaServiceConnection.onServiceDisconnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Hj;->val$name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v1, v1, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    invoke-virtual {v0}, Lc8/Jj;->dump()V

    .line 1384
    :cond_0
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Lc8/Ij;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1396
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iput-object v2, v0, Lc8/Jj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1390
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iput-object v2, v0, Lc8/Jj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1391
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-virtual {v0, v2}, Lc8/lj;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1394
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    const/4 v1, 0x3

    iput v1, v0, Lc8/Jj;->mState:I

    .line 1395
    iget-object v0, p0, Lc8/Hj;->this$1:Lc8/Ij;

    iget-object v0, v0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mCallback:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnectionSuspended()V

    goto :goto_0
.end method
