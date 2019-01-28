.class public Lc8/HL;
.super Ljava/lang/Object;
.source "WorkerTheadPoolExecutors.java"


# static fields
.field private static volatile highPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile lowPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 24
    sget-object v0, Lc8/HL;->highPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 25
    const-class v9, Lc8/EL;

    monitor-enter v9

    .line 26
    :try_start_0
    sget-object v0, Lc8/HL;->highPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 27
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x8

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lc8/DL;

    const-string/jumbo v0, "AWCN Worker(H)"

    invoke-direct {v8, v0}, Lc8/DL;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 29
    sput-object v1, Lc8/HL;->highPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    invoke-static {}, Lc8/HL;->registerSlowSpeedListener()V

    .line 32
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lc8/HL;->highPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getLowPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 38
    sget-object v0, Lc8/HL;->lowPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 39
    const-class v9, Lc8/EL;

    monitor-enter v9

    .line 40
    :try_start_0
    sget-object v0, Lc8/HL;->lowPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 41
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v8, Lc8/DL;

    const-string/jumbo v0, "AWCN Worker(L)"

    invoke-direct {v8, v0}, Lc8/DL;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 43
    sput-object v1, Lc8/HL;->lowPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lc8/HL;->lowPriorityWorks:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static registerSlowSpeedListener()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lc8/QJ;->getInstance()Lc8/QJ;

    move-result-object v0

    new-instance v1, Lc8/FL;

    invoke-direct {v1}, Lc8/FL;-><init>()V

    new-instance v2, Lc8/GL;

    invoke-direct {v2}, Lc8/GL;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/QJ;->addQualityChangeListener(Lc8/VJ;Lc8/XJ;)V

    .line 65
    return-void
.end method
