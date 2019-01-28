.class public Lc8/bZe;
.super Ljava/lang/Object;
.source "CallbackThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aZe;
    }
.end annotation


# static fields
.field private static volatile callbackThreadPool:Lc8/bZe;


# instance fields
.field private callbackThreadPoolsize:I

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v9, p0, Lc8/bZe;->callbackThreadPoolsize:I

    .line 21
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lc8/bZe;->callbackThreadPoolsize:I

    iget v3, p0, Lc8/bZe;->callbackThreadPoolsize:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lc8/aZe;

    invoke-direct {v8}, Lc8/aZe;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/bZe;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    iget-object v0, p0, Lc8/bZe;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    return-void
.end method

.method public static getInstance()Lc8/bZe;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lc8/bZe;->callbackThreadPool:Lc8/bZe;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lc8/bZe;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lc8/bZe;->callbackThreadPool:Lc8/bZe;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lc8/bZe;

    invoke-direct {v0}, Lc8/bZe;-><init>()V

    sput-object v0, Lc8/bZe;->callbackThreadPool:Lc8/bZe;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lc8/bZe;->callbackThreadPool:Lc8/bZe;

    return-object v0

    .line 34
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
    .line 40
    iget-object v0, p0, Lc8/bZe;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
