.class public Lc8/yZe;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xZe;
    }
.end annotation


# static fields
.field private static volatile threadPoolManager:Lc8/yZe;


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private maxConcurrentCount:I


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lc8/yZe;->maxConcurrentCount:I

    .line 24
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lc8/yZe;->maxConcurrentCount:I

    iget v3, p0, Lc8/yZe;->maxConcurrentCount:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lc8/xZe;

    invoke-direct {v8}, Lc8/xZe;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/yZe;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    iget-object v0, p0, Lc8/yZe;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 29
    return-void
.end method

.method public static getInstance()Lc8/yZe;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lc8/yZe;->threadPoolManager:Lc8/yZe;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lc8/yZe;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lc8/yZe;->threadPoolManager:Lc8/yZe;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lc8/yZe;

    invoke-direct {v0}, Lc8/yZe;-><init>()V

    sput-object v0, Lc8/yZe;->threadPoolManager:Lc8/yZe;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lc8/yZe;->threadPoolManager:Lc8/yZe;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/yZe;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getMaxConcurrentCount()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lc8/yZe;->maxConcurrentCount:I

    return v0
.end method

.method public setMaxConcurrentCount(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 51
    if-lez p1, :cond_0

    .line 52
    iget-object v0, p0, Lc8/yZe;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 53
    iput p1, p0, Lc8/yZe;->maxConcurrentCount:I

    .line 55
    :cond_0
    return-void
.end method
