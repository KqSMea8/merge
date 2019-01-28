.class public Lc8/hJj;
.super Ljava/lang/Object;
.source "YKThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gJj;
    }
.end annotation


# static fields
.field private static priority:I

.field private static volatile requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xa

    sput v0, Lc8/hJj;->priority:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "coreSize"    # I
    .param p1, "maxSize"    # I
    .param p2, "keepAliveTime"    # I
    .param p3, "queenSize"    # I
    .param p4, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 80
    if-lez p3, :cond_1

    .line 81
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 85
    .local v7, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, p0

    move v3, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 86
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    if-lez p2, :cond_0

    .line 87
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 89
    :cond_0
    return-object v1

    .line 83
    .end local v1    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    goto :goto_0
.end method

.method public static getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    .line 57
    sget-object v0, Lc8/hJj;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lc8/hJj;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lc8/hJj;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x5

    const/16 v2, 0x1e

    const/16 v3, 0x3c

    const/4 v4, 0x0

    new-instance v5, Lc8/gJj;

    sget v6, Lc8/hJj;->priority:I

    invoke-direct {v5, v6}, Lc8/gJj;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/hJj;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lc8/hJj;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lc8/hJj;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    .line 68
    sget-object v0, Lc8/hJj;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lc8/hJj;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lc8/hJj;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x5

    const/4 v2, 0x5

    const/16 v3, 0x3c

    const/4 v4, 0x0

    new-instance v5, Lc8/gJj;

    sget v6, Lc8/hJj;->priority:I

    invoke-direct {v5, v6}, Lc8/gJj;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/hJj;->createExecutor(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lc8/hJj;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lc8/hJj;->requestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
