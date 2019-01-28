.class public final Lc8/edf;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventCenter:Lc8/kdf;

.field private volatile executorRunning:Z

.field private final queue:Lc8/zdf;


# direct methods
.method constructor <init>(Lc8/kdf;)V
    .locals 1
    .param p1, "eventCenter"    # Lc8/kdf;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lc8/edf;->eventCenter:Lc8/kdf;

    .line 14
    new-instance v0, Lc8/zdf;

    invoke-direct {v0}, Lc8/zdf;-><init>()V

    iput-object v0, p0, Lc8/edf;->queue:Lc8/zdf;

    .line 15
    return-void
.end method


# virtual methods
.method public enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V
    .locals 2
    .param p1, "subscription"    # Lc8/Bdf;
    .param p2, "event"    # Lc8/fdf;
    .param p3, "callback"    # Lc8/gdf;

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Lc8/ydf;->obtainPendingPost(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)Lc8/ydf;

    move-result-object v0

    .line 19
    .local v0, "pendingPost":Lc8/ydf;
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v1, p0, Lc8/edf;->queue:Lc8/zdf;

    invoke-virtual {v1, v0}, Lc8/zdf;->enqueue(Lc8/ydf;)V

    .line 21
    iget-boolean v1, p0, Lc8/edf;->executorRunning:Z

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/edf;->executorRunning:Z

    .line 23
    iget-object v1, p0, Lc8/edf;->eventCenter:Lc8/kdf;

    invoke-virtual {v1}, Lc8/kdf;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/edf;->queue:Lc8/zdf;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lc8/zdf;->poll(I)Lc8/ydf;

    move-result-object v0

    .line 33
    .local v0, "pendingPost":Lc8/ydf;
    if-nez v0, :cond_1

    .line 34
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v1, p0, Lc8/edf;->queue:Lc8/zdf;

    invoke-virtual {v1}, Lc8/zdf;->poll()Lc8/ydf;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/edf;->executorRunning:Z

    .line 39
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iput-boolean v3, p0, Lc8/edf;->executorRunning:Z

    .line 50
    .end local v0    # "pendingPost":Lc8/ydf;
    :goto_1
    return-void

    .line 41
    .restart local v0    # "pendingPost":Lc8/ydf;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :cond_1
    :try_start_3
    iget-object v1, p0, Lc8/edf;->eventCenter:Lc8/kdf;

    invoke-virtual {v1, v0}, Lc8/kdf;->invokeSubscriber(Lc8/ydf;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 46
    .end local v0    # "pendingPost":Lc8/ydf;
    :catch_0
    move-exception v1

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was interruppted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    iput-boolean v3, p0, Lc8/edf;->executorRunning:Z

    goto :goto_1

    .line 41
    .restart local v0    # "pendingPost":Lc8/ydf;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 49
    .end local v0    # "pendingPost":Lc8/ydf;
    :catchall_1
    move-exception v1

    iput-boolean v3, p0, Lc8/edf;->executorRunning:Z

    throw v1
.end method
