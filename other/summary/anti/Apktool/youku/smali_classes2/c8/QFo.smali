.class public abstract Lc8/QFo;
.super Landroid/content/ContextWrapper;
.source "VipAbstractAppContext.java"


# static fields
.field private static mBroadcast:Lc8/VFo;

.field private static mLock:Ljava/lang/Object;

.field public static mNetworkState:Lc8/cGo;

.field public static vipVersion:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field public handlerThread:Landroid/os/HandlerThread;

.field public initializeComplete:Z

.field public workHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/QFo;->mLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    .line 39
    const-string/jumbo v0, "6.9.2"

    sput-object v0, Lc8/QFo;->vipVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lc8/QFo;->context:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lc8/QFo;->handlerThread:Landroid/os/HandlerThread;

    .line 31
    iput-object v0, p0, Lc8/QFo;->workHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lc8/QFo;->handler:Landroid/os/Handler;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/QFo;->initializeComplete:Z

    .line 44
    new-instance v0, Lc8/VFo;

    invoke-direct {v0, p1}, Lc8/VFo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    .line 45
    iput-object p1, p0, Lc8/QFo;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/QFo;->handler:Landroid/os/Handler;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "YK_VIP_WorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/QFo;->handlerThread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lc8/QFo;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/QFo;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/QFo;->workHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lc8/cGo;

    invoke-direct {v0}, Lc8/cGo;-><init>()V

    .line 51
    sput-object v0, Lc8/QFo;->mNetworkState:Lc8/cGo;

    iget-object v1, p0, Lc8/QFo;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/cGo;->getConnectivityState(Landroid/content/Context;)B

    move-result v1

    invoke-virtual {v0, v1}, Lc8/cGo;->setNetworkType(B)V

    .line 53
    invoke-virtual {p0}, Lc8/QFo;->initSetting()V

    .line 54
    invoke-virtual {p0}, Lc8/QFo;->initDB()V

    .line 55
    invoke-virtual {p0}, Lc8/QFo;->init()V

    .line 57
    iget-object v0, p0, Lc8/QFo;->workHandler:Landroid/os/Handler;

    new-instance v1, Lc8/PFo;

    invoke-direct {v1, p0}, Lc8/PFo;-><init>(Lc8/QFo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

.method static synthetic access$000()Lc8/VFo;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    return-object v0
.end method

.method public static getBroadcast()Lc8/VFo;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    if-nez v0, :cond_1

    .line 88
    sget-object v1, Lc8/QFo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lc8/VFo;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-direct {v0, v2}, Lc8/VFo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    .line 92
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    sget-object v0, Lc8/QFo;->mBroadcast:Lc8/VFo;

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getNetworkState()Lc8/cGo;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lc8/QFo;->mNetworkState:Lc8/cGo;

    if-nez v0, :cond_1

    .line 99
    sget-object v1, Lc8/QFo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lc8/QFo;->mNetworkState:Lc8/cGo;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lc8/cGo;

    invoke-direct {v0}, Lc8/cGo;-><init>()V

    .line 102
    sput-object v0, Lc8/QFo;->mNetworkState:Lc8/cGo;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Lc8/cGo;->getConnectivityState(Landroid/content/Context;)B

    move-result v2

    invoke-virtual {v0, v2}, Lc8/cGo;->setNetworkType(B)V

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Lc8/QFo;->mNetworkState:Lc8/cGo;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract asyncInit()V
.end method

.method protected abstract init()V
.end method

.method protected abstract initDB()V
.end method

.method protected abstract initSetting()V
.end method

.method public abstract release()V
.end method

.method protected abstract showLog()Z
.end method
