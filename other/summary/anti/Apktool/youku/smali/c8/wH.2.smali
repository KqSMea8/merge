.class public Lc8/wH;
.super Ljava/lang/Object;
.source "WVThreadPool.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1f4

.field private static final MAX_POOL_SIZE:I

.field private static TAG:Ljava/lang/String;

.field private static threadManager:Lc8/wH;


# instance fields
.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "WVThreadPool"

    sput-object v0, Lc8/wH;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 26
    sput v0, Lc8/wH;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/wH;->CORE_POOL_SIZE:I

    .line 27
    sget v0, Lc8/wH;->CPU_COUNT:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/wH;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getInstance()Lc8/wH;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lc8/wH;->threadManager:Lc8/wH;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lc8/wH;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lc8/wH;->threadManager:Lc8/wH;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/wH;

    invoke-direct {v0}, Lc8/wH;-><init>()V

    sput-object v0, Lc8/wH;->threadManager:Lc8/wH;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lc8/wH;->threadManager:Lc8/wH;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 54
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lc8/wH;->CORE_POOL_SIZE:I

    sget v3, Lc8/wH;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 58
    sget-object v0, Lc8/wH;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "execute task is null."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setClientExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/wH;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/wH;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lc8/wH;->executor:Ljava/util/concurrent/Executor;

    .line 40
    :cond_0
    return-void
.end method
