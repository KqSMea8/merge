.class public Lc8/qtf;
.super Lc8/ctf;
.source "OrangeConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ptf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeConfigImpl"

.field private static volatile mContext:Landroid/content/Context;

.field static mInstance:Lc8/qtf;


# instance fields
.field private mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mFailListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/ptf;",
            "Lc8/rtf;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailListenersV1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/ptf;",
            "Lcom/taobao/orange/OrangeConfigListenerV1;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFailUserId:Ljava/lang/String;

.field private volatile mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mRemoteService:Lc8/xtf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lc8/qtf;

    invoke-direct {v0}, Lc8/qtf;-><init>()V

    sput-object v0, Lc8/qtf;->mInstance:Lc8/qtf;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/ctf;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/qtf;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qtf;->mFailUserId:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lc8/qtf;->mFailNamespaces:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/qtf;->mFailListenersV1:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/qtf;->mFailListeners:Ljava/util/Map;

    .line 365
    new-instance v0, Lc8/etf;

    invoke-direct {v0, p0}, Lc8/etf;-><init>(Lc8/qtf;)V

    iput-object v0, p0, Lc8/qtf;->mConnection:Landroid/content/ServiceConnection;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lc8/qtf;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/qtf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/qtf;->syncGetRemoteService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lc8/qtf;)Lc8/xtf;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/qtf;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lc8/qtf;Lc8/xtf;)Lc8/xtf;
    .locals 0
    .param p0, "x0"    # Lc8/qtf;
    .param p1, "x1"    # Lc8/xtf;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    return-object p1
.end method

.method static synthetic access$1100(Lc8/qtf;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lc8/qtf;)V
    .locals 0
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/qtf;->sendCacheFailItems()V

    return-void
.end method

.method static synthetic access$300(Lc8/qtf;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mFailNamespaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lc8/qtf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mFailListenersV1:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lc8/qtf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mFailListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lc8/qtf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mFailUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lc8/qtf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/qtf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/qtf;->mFailUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lc8/qtf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lc8/qtf;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/qtf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/qtf;->asyncBindRemoteService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lc8/qtf;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lc8/qtf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/qtf;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private asyncBindRemoteService(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 410
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lc8/qtf;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Lc8/ftf;

    invoke-direct {v0, p0, p1}, Lc8/ftf;-><init>(Lc8/qtf;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "asyncBindRemoteService break as isBinding"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendCacheFailItems()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lc8/htf;

    invoke-direct {v0, p0}, Lc8/htf;-><init>(Lc8/qtf;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private syncGetRemoteService(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 389
    if-eqz p1, :cond_2

    iget-object v3, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    if-nez v3, :cond_2

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 391
    .local v0, "start":J
    invoke-direct {p0, p1}, Lc8/qtf;->asyncBindRemoteService(Landroid/content/Context;)V

    .line 392
    iget-object v3, p0, Lc8/qtf;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    if-nez v3, :cond_0

    .line 393
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lc8/qtf;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    .line 395
    :try_start_0
    iget-object v3, p0, Lc8/qtf;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/qtf;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    .line 401
    :cond_0
    iget-object v3, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    if-nez v3, :cond_1

    invoke-static {p1}, Lc8/Ytf;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const-string/jumbo v3, "OrangeConfigImpl"

    const-string/jumbo v4, "syncGetBindService"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "bind service timeout so use local OrangeApiServiceStub in main process"

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v3, Lc8/ytf;

    invoke-direct {v3, p1}, Lc8/ytf;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    .line 405
    :cond_1
    const-string/jumbo v3, "OrangeConfigImpl"

    const-string/jumbo v4, "syncGetBindService"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cost(ms)"

    aput-object v6, v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .end local v0    # "start":J
    :cond_2
    return-void

    .line 396
    .restart local v0    # "start":J
    :catch_0
    move-exception v2

    .line 397
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeConfigImpl"

    const-string/jumbo v4, "syncGetBindService"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public enterBackground()V
    .locals 3

    .prologue
    .line 347
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "enterBackground api is @Deprecated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method public enterForeground()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lc8/otf;

    invoke-direct {v0, p0}, Lc8/otf;-><init>(Lc8/qtf;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "getConfig error as param is empty"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p3

    .line 158
    :goto_0
    return-object v0

    .line 136
    :cond_1
    sget-object v2, Lc8/qtf;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lc8/qtf;->asyncBindRemoteService(Landroid/content/Context;)V

    .line 137
    move-object v0, p3

    .line 138
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    if-nez v2, :cond_2

    .line 139
    new-instance v2, Lc8/itf;

    invoke-direct {v2, p0, p1}, Lc8/itf;-><init>(Lc8/qtf;Ljava/lang/String;)V

    invoke-static {v2}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_0
    iget-object v2, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    invoke-interface {v2, p1, p2, p3}, Lc8/xtf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "getConfigs"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "getConfig error as param is empty"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 167
    :cond_0
    sget-object v2, Lc8/qtf;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lc8/qtf;->asyncBindRemoteService(Landroid/content/Context;)V

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    if-nez v2, :cond_1

    .line 170
    new-instance v2, Lc8/jtf;

    invoke-direct {v2, p0, p1}, Lc8/jtf;-><init>(Lc8/qtf;Ljava/lang/String;)V

    invoke-static {v2}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/qtf;->mRemoteService:Lc8/xtf;

    invoke-interface {v2, p1}, Lc8/xtf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "getConfigs"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;Lc8/Nsf;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "config"    # Lc8/Nsf;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "config"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p2, Lc8/Nsf;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lc8/Nsf;->appVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "init error as appKey or appVersion is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "init start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/qtf;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lc8/gtf;

    invoke-direct {v0, p0, p1, p2}, Lc8/gtf;-><init>(Lc8/qtf;Landroid/content/Context;Lc8/Nsf;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerListener([Ljava/lang/String;Lc8/rtf;)V
    .locals 3
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/rtf;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 196
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "registerListener namespaces error as param null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v0, Lc8/ktf;

    invoke-direct {v0, p0, p1, p2}, Lc8/ktf;-><init>(Lc8/qtf;[Ljava/lang/String;Lc8/rtf;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 3
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/orange/OrangeConfigListenerV1;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "registerListenerV1 error as param null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v0, Lc8/ltf;

    invoke-direct {v0, p0, p1, p2}, Lc8/ltf;-><init>(Lc8/qtf;[Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 3
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setAppSecret api is @Deprecated, please set appSecret in init(OConfig config) api"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method public setHosts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setHosts api is @Deprecated, please set probeHosts in init(OConfig config) api"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public setIndexUpdateMode(I)V
    .locals 3
    .param p1, "indexUpdateMode"    # I

    .prologue
    .line 357
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setIndexUpdateMode api is @Deprecated, please set indexUpdateMode in init(OConfig config) api"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setUserId error as userId is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Lc8/dtf;

    invoke-direct {v0, p0, p1}, Lc8/dtf;-><init>(Lc8/qtf;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterListener([Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaces"    # [Ljava/lang/String;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 285
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "unregisterListeners error as namespaces is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v0, Lc8/ntf;

    invoke-direct {v0, p0, p1}, Lc8/ntf;-><init>(Lc8/qtf;[Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 3
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/orange/OrangeConfigListenerV1;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 262
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "unregisterListenerV1 error as param null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-void

    .line 265
    :cond_1
    new-instance v0, Lc8/mtf;

    invoke-direct {v0, p0, p2, p1}, Lc8/mtf;-><init>(Lc8/qtf;Lcom/taobao/orange/OrangeConfigListenerV1;[Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
