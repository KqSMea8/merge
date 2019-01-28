.class public Lc8/oyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;,
        Lc8/Hxb;,
        Lc8/gyb;,
        Lc8/Rxb;,
        Lc8/Txb;,
        Lc8/fyb;,
        Lc8/dyb;,
        Lc8/lyb;,
        Lc8/iyb;,
        Lc8/Lxb;,
        Lc8/Oxb;,
        Lc8/Mxb;,
        Lc8/jyb;,
        Lc8/Qxb;,
        Lc8/Kxb;,
        Lc8/hyb;,
        Lc8/Sxb;,
        Lc8/Zxb;,
        Lc8/nyb;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mMainHandler:Landroid/os/Handler;

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "WorkFlow"

    sput-object v0, Lc8/oyb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lc8/oyb;->isOnUIThread()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lc8/oyb;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lc8/oyb;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lc8/oyb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/oyb;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/oyb;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    :cond_0
    sget-object v0, Lc8/oyb;->sExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getMainHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lc8/oyb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/oyb;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/oyb;->mMainHandler:Landroid/os/Handler;

    .line 31
    :cond_0
    sget-object v0, Lc8/oyb;->mMainHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isOnUIThread()Z
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
