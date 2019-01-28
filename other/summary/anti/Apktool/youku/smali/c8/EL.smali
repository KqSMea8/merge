.class public Lc8/EL;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DL;
    }
.end annotation


# static fields
.field private static volatile priorityExecutor:Lc8/CL;

.field private static volatile scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static getPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 5

    .prologue
    .line 66
    sget-object v0, Lc8/EL;->priorityExecutor:Lc8/CL;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lc8/EL;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lc8/EL;->priorityExecutor:Lc8/CL;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lc8/CL;

    const/4 v2, 0x1

    new-instance v3, Lc8/DL;

    const-string/jumbo v4, "AWCN Dispatcher"

    invoke-direct {v3, v4}, Lc8/DL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lc8/CL;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 70
    sput-object v0, Lc8/EL;->priorityExecutor:Lc8/CL;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lc8/CL;->allowCoreThreadTimeOut(Z)V

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lc8/EL;->priorityExecutor:Lc8/CL;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 5

    .prologue
    .line 55
    sget-object v0, Lc8/EL;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lc8/EL;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lc8/EL;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lc8/DL;

    const-string/jumbo v4, "AWCN Scheduler"

    invoke-direct {v3, v4}, Lc8/DL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lc8/EL;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lc8/EL;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static submitPriorityTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 8
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 46
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string/jumbo v1, "awcn.ThreadPoolExecutorFactory"

    const-string/jumbo v2, "submit priority task"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "priority"

    aput-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    new-instance v0, Lc8/AL;

    invoke-direct {v0, p0, p1}, Lc8/AL;-><init>(Ljava/lang/Runnable;I)V

    .line 50
    .local v0, "dispatcherTask":Lc8/AL;
    invoke-static {}, Lc8/EL;->getPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    return-object v0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lc8/EL;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lc8/EL;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
