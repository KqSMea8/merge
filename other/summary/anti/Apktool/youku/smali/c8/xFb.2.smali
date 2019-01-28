.class public Lc8/xFb;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field public static initResult:Lc8/wHb;

.field public static initState:Lc8/xHb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/xFb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/xFb;->a:Ljava/lang/String;

    new-instance v0, Lc8/xHb;

    invoke-direct {v0}, Lc8/xHb;-><init>()V

    sput-object v0, Lc8/xFb;->initState:Lc8/xHb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lc8/xFb;->b()V

    return-void
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;)V
    .locals 3

    invoke-static {}, Lc8/bGb;->getInstance()Lc8/bGb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/bGb;->init(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;)Lc8/wHb;

    move-result-object v0

    sput-object v0, Lc8/xFb;->initResult:Lc8/wHb;

    :try_start_0
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lc8/xFb;->initResult:Lc8/wHb;

    invoke-virtual {v0}, Lc8/wHb;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/hGb;->getUTInitTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->utInitTime:J

    :cond_0
    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UFb;->init()V

    invoke-static {}, Lc8/PFb;->getInstance()Lc8/PFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/PFb;->init()V

    invoke-static {}, Lc8/KEb;->init()V

    invoke-static {}, Lc8/vFb;->initData()V

    invoke-static {}, Lc8/yGb;->a()Lc8/yGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/yGb;->b()V

    invoke-static {}, Lc8/MFb;->getInstance()Lc8/MFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/MFb;->initApplink()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lc8/xFb;->a:Ljava/lang/String;

    const-string/jumbo v2, "ut init exception"

    invoke-static {v1, v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    invoke-static {p0}, Lc8/xFb;->b(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    return-void
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lc8/wHb;)V
    .locals 2

    sget-object v0, Lc8/xFb;->initState:Lc8/xHb;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/xHb;->setState(I)V

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/uHb;

    invoke-direct {v1, p0, p1}, Lc8/uHb;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lc8/wHb;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized asyncInit(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 3

    const-class v1, Lc8/xFb;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lc8/xFb;->c(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lc8/xFb;->initState:Lc8/xHb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lc8/xHb;->setState(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/vFb;->context:Landroid/content/Context;

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v2, Lc8/jGb;

    invoke-direct {v2, p1}, Lc8/jGb;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v2}, Lc8/gIb;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "appkey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "ttid"

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sdkType"

    const-string/jumbo v2, "standard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v1

    sget-object v2, Lc8/sHb;->E_SDK_INIT:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cGb;->sendInitHit4DAU()V

    return-void
.end method

.method private static declared-synchronized b(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 3

    const-class v1, Lc8/xFb;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;-><init>()V

    const-string/jumbo v2, "allTime"

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->timeBegin(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/xFb;->a(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;)V

    sget-object v2, Lc8/xFb;->initResult:Lc8/wHb;

    invoke-virtual {v2}, Lc8/wHb;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "allTime"

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->timeEnd(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/hGb;->sendPerfomancePoint(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;)V

    invoke-static {p0}, Lc8/xFb;->d(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lc8/xFb;->initResult:Lc8/wHb;

    invoke-static {p0, v0}, Lc8/xFb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lc8/wHb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v1}, Lc8/xHb;->isInitializing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/RGb;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v1}, Lc8/xHb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v2, Lc8/QGb;

    invoke-direct {v2, p0}, Lc8/QGb;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v1, v2}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 2

    sget-object v0, Lc8/xFb;->a:Ljava/lang/String;

    const-string/jumbo v1, "AlibcTradeSDK\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/xFb;->initState:Lc8/xHb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/xHb;->setState(I)V

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/tHb;

    invoke-direct {v1, p0}, Lc8/tHb;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lc8/RGb;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/cHb;->setChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEnvironment(Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)V
    .locals 0

    sput-object p0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-static {}, Lc8/vFb;->updateUrl()V

    return-void
.end method

.method public static setForceH5(Z)Z
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setIsForceH5(Z)Z

    move-result v0

    return v0
.end method

.method public static setISVCode(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setIsvCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setISVVersion(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setIsvVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setIsAuthVip(Z)V
    .locals 0

    sput-boolean p0, Lc8/vFb;->isVip:Z

    return-void
.end method

.method public static setShouldUseAlipay(Z)Z
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setShouldUseAlipay(Z)Z

    move-result v0

    return v0
.end method

.method public static setSyncForTaoke(Z)Z
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setIsSyncForTaoke(Z)Z

    move-result v0

    return v0
.end method

.method public static setTaokeParams(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)V
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/cHb;->setTaokeParams(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)V

    return-void
.end method

.method public static trunOffDebug()V
    .locals 1

    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UFb;->trunOffDebug()V

    const/4 v0, 0x0

    sput-boolean v0, Lc8/vFb;->isDebugMode:Z

    return-void
.end method

.method public static trunOnDebug()V
    .locals 1

    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UFb;->trunOnDebug()V

    invoke-static {}, Lc8/PFb;->getInstance()Lc8/PFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/PFb;->trunOnDebug()V

    const/4 v0, 0x1

    sput-boolean v0, Lc8/vFb;->isDebugMode:Z

    return-void
.end method
