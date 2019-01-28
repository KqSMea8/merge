.class public Lc8/xao;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field static instance:Lc8/xao;


# instance fields
.field mDBHandler:Landroid/os/Handler;

.field mDBThread:Landroid/os/HandlerThread;

.field mUiHandler:Landroid/os/Handler;

.field mWorkerHandler:Landroid/os/Handler;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/xao;->mUiHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/xao;->mWorkerThread:Landroid/os/HandlerThread;

    .line 31
    iget-object v0, p0, Lc8/xao;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/xao;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/xao;->mWorkerHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public static getInstance()Lc8/xao;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lc8/xao;->instance:Lc8/xao;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lc8/xao;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lc8/xao;->instance:Lc8/xao;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lc8/xao;

    invoke-direct {v0}, Lc8/xao;-><init>()V

    sput-object v0, Lc8/xao;->instance:Lc8/xao;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lc8/xao;->instance:Lc8/xao;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/xao;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public removeRunnableOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/xao;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public removeRunnableOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/xao;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/xao;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 40
    iget-object v0, p0, Lc8/xao;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    return-void
.end method

.method public runOnWorkerThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 48
    iget-object v0, p0, Lc8/xao;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method
