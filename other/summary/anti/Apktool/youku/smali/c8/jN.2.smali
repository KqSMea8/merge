.class public Lc8/jN;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"


# static fields
.field private static volatile bBindFailed:Z

.field private static volatile bBinding:Z

.field private static conn:Landroid/content/ServiceConnection;

.field private static handler:Landroid/os/Handler;

.field private static volatile mGetter:Lc8/DM;

.field private static volatile mServiceBindLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lc8/jN;->bBindFailed:Z

    .line 24
    sput-boolean v0, Lc8/jN;->bBinding:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lc8/jN;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/jN;->handler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lc8/hN;

    invoke-direct {v0}, Lc8/hN;-><init>()V

    sput-object v0, Lc8/jN;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lc8/DM;)Lc8/DM;
    .locals 0
    .param p0, "x0"    # Lc8/DM;

    .prologue
    .line 20
    sput-object p0, Lc8/jN;->mGetter:Lc8/DM;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lc8/jN;->bBinding:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lc8/jN;->bBinding:Z

    return p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lc8/jN;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lc8/jN;->bBindFailed:Z

    return p0
.end method

.method private static asyncBindService(Landroid/content/Context;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x2

    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string/jumbo v3, "anet.RemoteGetter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[asyncBindService] mContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bBindFailed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lc8/jN;->bBindFailed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bBinding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lc8/jN;->bBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    if-nez p0, :cond_2

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-boolean v3, Lc8/jN;->bBindFailed:Z

    if-nez v3, :cond_1

    .line 109
    sget-boolean v3, Lc8/jN;->bBinding:Z

    if-nez v3, :cond_1

    .line 112
    sput-boolean v1, Lc8/jN;->bBinding:Z

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lanetwork/channel/aidl/NetworkService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lc8/DM;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    sget-object v3, Lc8/jN;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 125
    :goto_1
    sput-boolean v1, Lc8/jN;->bBindFailed:Z

    if-eqz v1, :cond_3

    .line 126
    sput-boolean v2, Lc8/jN;->bBinding:Z

    .line 127
    const-string/jumbo v1, "anet.RemoteGetter"

    const-string/jumbo v3, "[asyncBindService]ANet_Service start not success. ANet run with local mode!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v6, v2}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_3
    sget-object v1, Lc8/jN;->handler:Landroid/os/Handler;

    new-instance v2, Lc8/iN;

    invoke-direct {v2}, Lc8/iN;-><init>()V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 123
    goto :goto_1
.end method

.method public static getRemoteGetter()Lc8/DM;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lc8/jN;->mGetter:Lc8/DM;

    return-object v0
.end method

.method public static initRemoteGetterAndWait(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bWait"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 65
    sget-object v0, Lc8/jN;->mGetter:Lc8/DM;

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-boolean v0, Lc8/jN;->bBindFailed:Z

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lc8/jN;->asyncBindService(Landroid/content/Context;)V

    .line 70
    sget-boolean v0, Lc8/jN;->bBindFailed:Z

    if-nez v0, :cond_0

    .line 71
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    const-class v1, Lc8/jN;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    sget-object v0, Lc8/jN;->mGetter:Lc8/DM;

    if-eqz v0, :cond_2

    .line 75
    monitor-exit v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception v0

    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "mServiceBindLock wait interrupt"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5, v2}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_2
    :try_start_3
    sget-object v0, Lc8/jN;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lc8/jN;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    .line 80
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "[initRemoteGetterAndWait]begin to wait 5s"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lc8/jN;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "mServiceBindLock count down to 0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "mServiceBindLock wait timeout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
