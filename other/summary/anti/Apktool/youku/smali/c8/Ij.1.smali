.class public Lc8/Ij;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jj;


# direct methods
.method constructor <init>(Lc8/Jj;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lc8/Ij;->this$0:Lc8/Jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-virtual {v1}, Lc8/lj;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1402
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mHandler:Lc8/lj;

    invoke-virtual {v0, p1}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method isCurrent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "funcName"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v0, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    if-eq v0, p0, :cond_1

    .line 1413
    iget-object v0, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget v0, v0, Lc8/Jj;->mState:I

    if-eqz v0, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Ij;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1418
    :cond_0
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1322
    new-instance v0, Lc8/Gj;

    invoke-direct {v0, p0, p1, p2}, Lc8/Gj;-><init>(Lc8/Ij;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lc8/Ij;->postOrRun(Ljava/lang/Runnable;)V

    .line 1368
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1372
    new-instance v0, Lc8/Hj;

    invoke-direct {v0, p0, p1}, Lc8/Hj;-><init>(Lc8/Ij;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lc8/Ij;->postOrRun(Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method
