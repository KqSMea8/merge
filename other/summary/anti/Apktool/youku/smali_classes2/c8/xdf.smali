.class public final Lc8/xdf;
.super Landroid/os/Handler;
.source "HandlerPoster.java"


# instance fields
.field private final eventCenter:Lc8/kdf;

.field private handlerActive:Z

.field private final maxMillisInsideHandleMessage:I

.field private final queue:Lc8/zdf;


# direct methods
.method constructor <init>(Lc8/kdf;Landroid/os/Looper;I)V
    .locals 1
    .param p1, "eventCenter"    # Lc8/kdf;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "maxMillisInsideHandleMessage"    # I

    .prologue
    .line 16
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    iput-object p1, p0, Lc8/xdf;->eventCenter:Lc8/kdf;

    .line 18
    iput p3, p0, Lc8/xdf;->maxMillisInsideHandleMessage:I

    .line 19
    new-instance v0, Lc8/zdf;

    invoke-direct {v0}, Lc8/zdf;-><init>()V

    iput-object v0, p0, Lc8/xdf;->queue:Lc8/zdf;

    .line 20
    return-void
.end method


# virtual methods
.method enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V
    .locals 3
    .param p1, "subscription"    # Lc8/Bdf;
    .param p2, "event"    # Lc8/fdf;
    .param p3, "callback"    # Lc8/gdf;

    .prologue
    .line 23
    invoke-static {p1, p2, p3}, Lc8/ydf;->obtainPendingPost(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)Lc8/ydf;

    move-result-object v0

    .line 24
    .local v0, "pendingPost":Lc8/ydf;
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v1, p0, Lc8/xdf;->queue:Lc8/zdf;

    invoke-virtual {v1, v0}, Lc8/zdf;->enqueue(Lc8/ydf;)V

    .line 26
    iget-boolean v1, p0, Lc8/xdf;->handlerActive:Z

    if-nez v1, :cond_0

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/xdf;->handlerActive:Z

    .line 28
    invoke-virtual {p0}, Lc8/xdf;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/xdf;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not send handler message"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "rescheduled":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, "started":J
    :cond_0
    iget-object v6, p0, Lc8/xdf;->queue:Lc8/zdf;

    invoke-virtual {v6}, Lc8/zdf;->poll()Lc8/ydf;

    move-result-object v0

    .line 42
    .local v0, "pendingPost":Lc8/ydf;
    if-nez v0, :cond_2

    .line 43
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v6, p0, Lc8/xdf;->queue:Lc8/zdf;

    invoke-virtual {v6}, Lc8/zdf;->poll()Lc8/ydf;

    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    const/4 v6, 0x0

    iput-boolean v6, p0, Lc8/xdf;->handlerActive:Z

    .line 48
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    iput-boolean v1, p0, Lc8/xdf;->handlerActive:Z

    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :cond_2
    :try_start_3
    iget-object v6, p0, Lc8/xdf;->eventCenter:Lc8/kdf;

    invoke-virtual {v6, v0}, Lc8/kdf;->invokeSubscriber(Lc8/ydf;)V

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 54
    .local v4, "timeInMethod":J
    iget v6, p0, Lc8/xdf;->maxMillisInsideHandleMessage:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 55
    invoke-virtual {p0}, Lc8/xdf;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lc8/xdf;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 56
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Could not send handler message"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v0    # "pendingPost":Lc8/ydf;
    .end local v2    # "started":J
    .end local v4    # "timeInMethod":J
    :catchall_0
    move-exception v6

    iput-boolean v1, p0, Lc8/xdf;->handlerActive:Z

    throw v6

    .line 50
    .restart local v0    # "pendingPost":Lc8/ydf;
    .restart local v2    # "started":J
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 58
    .restart local v4    # "timeInMethod":J
    :cond_3
    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lc8/xdf;->handlerActive:Z

    goto :goto_0
.end method
