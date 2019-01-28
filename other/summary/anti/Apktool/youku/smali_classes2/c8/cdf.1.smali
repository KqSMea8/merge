.class public Lc8/cdf;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SaturativeExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bdf;,
        Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x80

.field private static final MIN_THREADS_BEFORE_SATURATION:I = 0x3

.field private static final PATTERN_CPU_ENTRIES:Ljava/util/regex/Pattern;

.field private static final QUEUE_CAPACITY:I = 0x400

.field static final TAG:Ljava/lang/String; = "SatuExec"

.field private static mQueue:Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final mThreads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "cpu[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/cdf;->PATTERN_CPU_ENTRIES:Ljava/util/regex/Pattern;

    .line 165
    new-instance v0, Lc8/adf;

    invoke-direct {v0}, Lc8/adf;-><init>()V

    sput-object v0, Lc8/cdf;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lc8/cdf;->determineBestMinPoolSize()I

    move-result v0

    invoke-direct {p0, v0}, Lc8/cdf;-><init>(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 10
    .param p1, "minPoolSize"    # I

    .prologue
    .line 89
    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;-><init>(I)V

    sput-object v7, Lc8/cdf;->mQueue:Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;

    sget-object v8, Lc8/cdf;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 92
    invoke-virtual {p0}, Lc8/cdf;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;

    invoke-virtual {v0, p0}, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;->setExecutor(Lc8/cdf;)V

    .line 93
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lc8/cdf;->PATTERN_CPU_ENTRIES:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method protected static collectThread(Ljava/lang/Thread;)V
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 139
    sget-object v1, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static countCpuCores()I
    .locals 3

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Lc8/Zcf;

    invoke-direct {v2}, Lc8/Zcf;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 158
    .local v0, "cpu_entries":[Ljava/io/File;
    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "cpu_entries":[Ljava/io/File;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static determineBestMinPoolSize()I
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lc8/cdf;->countCpuCores()I

    move-result v0

    .line 148
    .local v0, "cores":I
    if-lez v0, :cond_0

    .end local v0    # "cores":I
    :goto_0
    return v0

    .restart local v0    # "cores":I
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method public static final installAsDefaultAsyncTaskExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    .locals 10
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 51
    :try_start_0
    const-class v5, Landroid/os/AsyncTask;

    const-string/jumbo v6, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    .local v1, "poolexecutor":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    const/4 v5, 0x0

    invoke-static {v1, v5, p0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 60
    .end local v1    # "poolexecutor":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    :try_start_1
    const-class v5, Landroid/os/AsyncTask;

    const-string/jumbo v6, "setDefaultExecutor"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/concurrent/Executor;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 61
    .local v2, "setter":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v2, v5, v6}, Lc8/cdf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .end local v2    # "setter":Ljava/lang/reflect/Method;
    :goto_1
    return v3

    :catch_0
    move-exception v5

    .line 66
    :try_start_2
    const-class v5, Landroid/os/AsyncTask;

    const-string/jumbo v6, "sDefaultExecutor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 67
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    const/4 v5, 0x0

    invoke-static {v0, v5, p0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v5

    .line 72
    :try_start_3
    const-class v5, Landroid/os/AsyncTask;

    const-string/jumbo v6, "sExecutor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const/4 v5, 0x0

    invoke-static {v0, v5, p0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 78
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v3

    move v3, v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    new-instance v0, Lc8/bdf;

    invoke-direct {v0, p1}, Lc8/bdf;-><init>(Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public isReallyUnsaturated()Z
    .locals 4
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Lc8/cdf;->isSaturated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 100
    invoke-virtual {p0}, Lc8/cdf;->isSaturated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSaturated()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    invoke-virtual {p0}, Lc8/cdf;->getPoolSize()I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v7

    .line 110
    :cond_1
    invoke-virtual {p0}, Lc8/cdf;->getCorePoolSize()I

    move-result v0

    .line 111
    .local v0, "core_size":I
    sget-object v9, Lc8/bdf;->mNumRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 112
    .local v2, "num_running":I
    sget-object v9, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 114
    .local v3, "num_threads":I
    if-lt v2, v0, :cond_2

    if-ge v2, v3, :cond_3

    :cond_2
    move v7, v8

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    const/4 v1, 0x0

    .line 120
    .local v1, "num_busy":I
    sget-object v9, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    monitor-enter v9

    .line 121
    :try_start_0
    sget-object v10, Lc8/cdf;->mThreads:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 122
    .local v6, "threads":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 123
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 124
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    .line 125
    .local v4, "state":Ljava/lang/Thread$State;
    sget-object v10, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-eq v4, v10, :cond_5

    sget-object v10, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v4, v10, :cond_6

    .line 126
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_6
    sget-object v10, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v4, v10, :cond_4

    .line 128
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 133
    .end local v4    # "state":Ljava/lang/Thread$State;
    .end local v5    # "thread":Ljava/lang/Thread;
    .end local v6    # "threads":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v6    # "threads":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_7
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-lt v1, v0, :cond_0

    move v7, v8

    goto :goto_0
.end method
