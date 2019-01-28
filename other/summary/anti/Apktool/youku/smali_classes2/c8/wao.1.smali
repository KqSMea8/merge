.class public Lc8/wao;
.super Ljava/lang/Object;
.source "ExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vao;
    }
.end annotation


# static fields
.field private static executorManager:Lc8/wao;


# instance fields
.field private final pauseLock:Ljava/lang/Object;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private taskExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/wao;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/wao;->pauseLock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private createDefaultExecutor()V
    .locals 3

    .prologue
    .line 31
    const/4 v1, 0x5

    const-string/jumbo v2, "uil-pool-d-"

    invoke-static {v1, v2}, Lc8/wao;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 32
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lc8/wao;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method

.method private createSingerExecutor()V
    .locals 3

    .prologue
    .line 36
    const/4 v1, 0x5

    const-string/jumbo v2, "uil-pool-d-"

    invoke-static {v1, v2}, Lc8/wao;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 41
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lc8/wao;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method private static createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "threadPriority"    # I
    .param p1, "threadNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lc8/vao;

    invoke-direct {v0, p0, p1}, Lc8/vao;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lc8/wao;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/wao;->executorManager:Lc8/wao;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lc8/wao;

    invoke-direct {v0}, Lc8/wao;-><init>()V

    .line 55
    sput-object v0, Lc8/wao;->executorManager:Lc8/wao;

    invoke-direct {v0}, Lc8/wao;->createDefaultExecutor()V

    .line 57
    :cond_0
    sget-object v0, Lc8/wao;->executorManager:Lc8/wao;

    return-object v0
.end method

.method public static getSinglePoolInstance()Lc8/wao;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lc8/wao;->executorManager:Lc8/wao;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lc8/wao;

    invoke-direct {v0}, Lc8/wao;-><init>()V

    .line 68
    sput-object v0, Lc8/wao;->executorManager:Lc8/wao;

    invoke-direct {v0}, Lc8/wao;->createSingerExecutor()V

    .line 70
    :cond_0
    sget-object v0, Lc8/wao;->executorManager:Lc8/wao;

    return-object v0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lc8/wao;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lc8/wao;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    iget-object v1, p0, Lc8/wao;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lc8/wao;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/wao;->taskExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lc8/wao;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method getPauseLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lc8/wao;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lc8/wao;->taskExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lc8/wao;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 128
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lc8/wao;->executorManager:Lc8/wao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
