.class public Lc8/Qyf;
.super Ljava/lang/Object;
.source "UiThreadScheduler.java"

# interfaces
.implements Lc8/Nyf;
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_RECURSIVE_DEPTH:I = 0xa

.field private static final PRIORITY_QUEUE_CAPACITY:I = 0xc8


# instance fields
.field private mCurrRecursiveDepth:I

.field private mExecutionInProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPriorityQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lc8/Kyf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Qyf;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ui thread scheduler status:\nqueue size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lc8/Qyf;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nexecuting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Qyf;->mExecutionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    iget v1, p0, Lc8/Qyf;->mCurrRecursiveDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Qyf;->mCurrRecursiveDepth:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 23
    iput v3, p0, Lc8/Qyf;->mCurrRecursiveDepth:I

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v1, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 26
    iget-object v1, p0, Lc8/Qyf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :goto_0
    monitor-exit p0

    .line 43
    :goto_1
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/Qyf;->mExecutionInProgress:Z

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v1, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kyf;

    .line 36
    .local v0, "action":Lc8/Kyf;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Lc8/Kyf;->run()V

    .line 39
    invoke-virtual {p0}, Lc8/Qyf;->run()V

    goto :goto_1

    .line 36
    .end local v0    # "action":Lc8/Kyf;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 41
    .restart local v0    # "action":Lc8/Kyf;
    :cond_2
    monitor-enter p0

    .line 42
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lc8/Qyf;->mExecutionInProgress:Z

    .line 43
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public declared-synchronized schedule(Lc8/Kyf;)V
    .locals 1
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 51
    iget-boolean v0, p0, Lc8/Qyf;->mExecutionInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Qyf;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/Qyf;->mExecutionInProgress:Z

    .line 55
    iget-object v0, p0, Lc8/Qyf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
