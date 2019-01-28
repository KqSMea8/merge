.class public Lc8/OKd;
.super Ljava/lang/Object;
.source "QuickTracker.java"


# static fields
.field private static isRegisterNetReceiver:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field public static final namespace:Ljava/lang/String; = "PushAndroidTracker"

.field private static tracker:Lc8/sLd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/OKd;->isRegisterNetReceiver:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidTrackerClassic(Landroid/content/Context;Lc8/WKd;)Lc8/sLd;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lc8/WKd;

    .prologue
    .line 61
    sget-object v1, Lc8/OKd;->tracker:Lc8/sLd;

    if-nez v1, :cond_1

    .line 62
    const-class v2, Lc8/OKd;

    monitor-enter v2

    .line 63
    :try_start_0
    sget-object v1, Lc8/OKd;->tracker:Lc8/sLd;

    if-nez v1, :cond_0

    .line 64
    invoke-static {p0, p1}, Lc8/OKd;->getEmitterClassic(Landroid/content/Context;Lc8/WKd;)Lc8/UKd;

    move-result-object v0

    .line 65
    .local v0, "emitter":Lc8/UKd;
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lc8/OKd;->getTrackerClassic(Lc8/UKd;Lc8/qLd;Landroid/content/Context;)Lc8/sLd;

    move-result-object v1

    sput-object v1, Lc8/OKd;->tracker:Lc8/sLd;

    .line 67
    .end local v0    # "emitter":Lc8/UKd;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v1, Lc8/OKd;->isRegisterNetReceiver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Lc8/OKd;->tracker:Lc8/sLd;

    invoke-static {p0, v1}, Lc8/OKd;->registerNetworkReceiver(Landroid/content/Context;Lc8/sLd;)V

    .line 73
    :cond_2
    sget-object v1, Lc8/OKd;->tracker:Lc8/sLd;

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getEmitterClassic(Landroid/content/Context;Lc8/WKd;)Lc8/UKd;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lc8/WKd;

    .prologue
    .line 101
    new-instance v0, Lc8/bLd;

    new-instance v1, Lc8/TKd;

    invoke-static {}, Lc8/OKd;->getStaticsDomain()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lc8/bLd;

    invoke-direct {v1, v2, p0, v3}, Lc8/TKd;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {v1, p1}, Lc8/TKd;->callback(Lc8/WKd;)Lc8/TKd;

    move-result-object v1

    const/4 v2, 0x1

    .line 104
    invoke-virtual {v1, v2}, Lc8/TKd;->tick(I)Lc8/TKd;

    move-result-object v1

    sget-object v2, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->DefaultGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 105
    invoke-virtual {v1, v2}, Lc8/TKd;->option(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;)Lc8/TKd;

    move-result-object v1

    sget-object v2, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->DefaultGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 106
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/TKd;->sendLimit(I)Lc8/TKd;

    move-result-object v1

    const/4 v2, 0x2

    .line 107
    invoke-virtual {v1, v2}, Lc8/TKd;->emptyLimit(I)Lc8/TKd;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/bLd;-><init>(Lc8/TKd;)V

    .line 101
    return-object v0
.end method

.method private static getStaticsDomain()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    const-string/jumbo v0, "push-statics.meizu.com"

    .line 145
    .local v0, "staticsDomian":Ljava/lang/String;
    invoke-static {}, Lc8/DLd;->isInternational()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/DLd;->isIndiaLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    const-string/jumbo v0, "push-statics.in.meizu.com"

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_1
    const-string/jumbo v1, "QuickTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current statics domain is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSubject(Landroid/content/Context;)Lc8/qLd;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Lc8/pLd;

    invoke-direct {v0}, Lc8/pLd;-><init>()V

    .line 119
    invoke-virtual {v0, p0}, Lc8/pLd;->context(Landroid/content/Context;)Lc8/pLd;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lc8/pLd;->build()Lc8/qLd;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method private static getTrackerClassic(Lc8/UKd;Lc8/qLd;Landroid/content/Context;)Lc8/sLd;
    .locals 7
    .param p0, "emitter"    # Lc8/UKd;
    .param p1, "subject"    # Lc8/qLd;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v6, Lc8/wLd;

    new-instance v0, Lc8/rLd;

    const-string/jumbo v2, "PushAndroidTracker"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lc8/wLd;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lc8/rLd;-><init>(Lc8/UKd;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;->VERBOSE:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 86
    invoke-virtual {v0, v1}, Lc8/rLd;->level(Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;)Lc8/rLd;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/rLd;->base64(Ljava/lang/Boolean;)Lc8/rLd;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Lc8/rLd;->subject(Lc8/qLd;)Lc8/rLd;

    move-result-object v0

    const/4 v1, 0x4

    .line 89
    invoke-virtual {v0, v1}, Lc8/rLd;->threadCount(I)Lc8/rLd;

    move-result-object v0

    invoke-direct {v6, v0}, Lc8/wLd;-><init>(Lc8/rLd;)V

    .line 84
    return-object v6
.end method

.method public static init(Landroid/content/Context;Z)Lc8/sLd;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUpload"    # Z

    .prologue
    .line 38
    sget-object v2, Lc8/OKd;->tracker:Lc8/sLd;

    if-nez v2, :cond_1

    .line 39
    const-class v3, Lc8/OKd;

    monitor-enter v3

    .line 40
    :try_start_0
    sget-object v2, Lc8/OKd;->tracker:Lc8/sLd;

    if-nez v2, :cond_0

    .line 41
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lc8/OKd;->getEmitterClassic(Landroid/content/Context;Lc8/WKd;)Lc8/UKd;

    move-result-object v0

    .line 42
    .local v0, "emitter":Lc8/UKd;
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lc8/OKd;->getTrackerClassic(Lc8/UKd;Lc8/qLd;Landroid/content/Context;)Lc8/sLd;

    move-result-object v2

    sput-object v2, Lc8/OKd;->tracker:Lc8/sLd;

    .line 44
    .end local v0    # "emitter":Lc8/UKd;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    const-string/jumbo v2, "PushAndroidTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can upload subject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-static {p0}, Lc8/OKd;->getSubject(Landroid/content/Context;)Lc8/qLd;

    move-result-object v1

    .line 49
    .local v1, "subject":Lc8/qLd;
    sget-object v2, Lc8/OKd;->tracker:Lc8/sLd;

    invoke-virtual {v2, v1}, Lc8/sLd;->setSubject(Lc8/qLd;)V

    .line 51
    .end local v1    # "subject":Lc8/qLd;
    :cond_2
    sget-object v2, Lc8/OKd;->tracker:Lc8/sLd;

    return-object v2

    .line 44
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static registerNetworkReceiver(Landroid/content/Context;Lc8/sLd;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lc8/sLd;

    .prologue
    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lc8/NKd;

    invoke-direct {v1, p1}, Lc8/NKd;-><init>(Lc8/sLd;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method
