.class public Lc8/gzb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dzb;,
        Lc8/ezb;,
        Lcom/alibaba/analytics/AnalyticsMgr$RunMode;,
        Lc8/czb;,
        Lc8/fzb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsMgr"

.field private static appKey:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static application:Landroid/app/Application;

.field private static channel:Ljava/lang/String;

.field public static handler:Lc8/fzb;

.field private static handlerThread:Landroid/os/HandlerThread;

.field public static iAnalytics:Lc8/kzb;

.field private static isBindSuccess:Z

.field public static isDebug:Z

.field private static isEncode:Z

.field public static volatile isInit:Z

.field private static isNeedRestart:Z

.field private static isSecurity:Z

.field private static isTurnOnRealTimeDebug:Z

.field private static mConnection:Landroid/content/ServiceConnection;

.field public static final mRegisterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/czb;",
            ">;"
        }
    .end annotation
.end field

.field public static mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

.field private static realTimeDebugParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWaitMainProcessLock:Ljava/lang/Object;

.field private static final sWaitServiceConnectedLock:Ljava/lang/Object;

.field private static secret:Ljava/lang/String;

.field private static updateSessionProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static userId:Ljava/lang/String;

.field private static userNick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    sput-object v1, Lc8/gzb;->application:Landroid/app/Application;

    .line 35
    sput-object v1, Lc8/gzb;->handlerThread:Landroid/os/HandlerThread;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/gzb;->sWaitServiceConnectedLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/gzb;->sWaitMainProcessLock:Ljava/lang/Object;

    .line 40
    sput-boolean v2, Lc8/gzb;->isInit:Z

    .line 41
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Service:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v0, Lc8/gzb;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 42
    sput-boolean v2, Lc8/gzb;->isNeedRestart:Z

    .line 45
    sput-object v1, Lc8/gzb;->appKey:Ljava/lang/String;

    .line 46
    sput-object v1, Lc8/gzb;->channel:Ljava/lang/String;

    .line 47
    sput-object v1, Lc8/gzb;->secret:Ljava/lang/String;

    .line 48
    sput-boolean v2, Lc8/gzb;->isSecurity:Z

    .line 49
    sput-object v1, Lc8/gzb;->appVersion:Ljava/lang/String;

    .line 50
    sput-object v1, Lc8/gzb;->userNick:Ljava/lang/String;

    .line 51
    sput-object v1, Lc8/gzb;->userId:Ljava/lang/String;

    .line 52
    sput-boolean v2, Lc8/gzb;->isDebug:Z

    .line 53
    sput-boolean v2, Lc8/gzb;->isTurnOnRealTimeDebug:Z

    .line 54
    sput-object v1, Lc8/gzb;->updateSessionProperties:Ljava/util/Map;

    .line 55
    sput-object v1, Lc8/gzb;->realTimeDebugParams:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/gzb;->mRegisterList:Ljava/util/List;

    .line 58
    sput-boolean v2, Lc8/gzb;->isBindSuccess:Z

    .line 59
    sput-boolean v2, Lc8/gzb;->isEncode:Z

    .line 250
    new-instance v0, Lc8/Tyb;

    invoke-direct {v0}, Lc8/Tyb;-><init>()V

    sput-object v0, Lc8/gzb;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    return-void
.end method

.method static synthetic access$000()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/gzb;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/gzb;->sWaitServiceConnectedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lc8/gzb;->isNeedRestart:Z

    return p0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lc8/gzb;->newLocalAnalytics()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/gzb;->sWaitMainProcessLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lc8/gzb;->getCoreProcessWaitTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lc8/gzb;->isBindSuccess:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lc8/gzb;->isBindSuccess:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lc8/gzb;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lc8/gzb;->createInitTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static bindService()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 230
    sget-object v2, Lc8/gzb;->application:Landroid/app/Application;

    if-nez v2, :cond_0

    move v0, v1

    .line 240
    .local v0, "bindsuccess":Z
    :goto_0
    return v0

    .line 233
    .end local v0    # "bindsuccess":Z
    :cond_0
    sget-object v2, Lc8/gzb;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lc8/gzb;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alibaba/analytics/AnalyticsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lc8/gzb;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 236
    .restart local v0    # "bindsuccess":Z
    if-nez v0, :cond_1

    .line 237
    invoke-static {}, Lc8/gzb;->newLocalAnalytics()V

    .line 239
    :cond_1
    const-string/jumbo v2, "AnalyticsMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "bindsuccess"

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static checkInit()Z
    .locals 2

    .prologue
    .line 217
    sget-boolean v0, Lc8/gzb;->isInit:Z

    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v0, "Please call init() before call other method"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    sget-boolean v0, Lc8/gzb;->isInit:Z

    return v0
.end method

.method private static createDispatchLocalHitTrask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lc8/Ryb;

    invoke-direct {v0}, Lc8/Ryb;-><init>()V

    return-object v0
.end method

.method private static createInitTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lc8/Uyb;

    invoke-direct {v0}, Lc8/Uyb;-><init>()V

    .line 293
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p4, "isCommitDetail"    # Z

    .prologue
    .line 398
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v0, Lc8/Zyb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Zyb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 410
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Lc8/azb;

    invoke-direct {v0, p0}, Lc8/azb;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lc8/Yyb;

    invoke-direct {v0, p0}, Lc8/Yyb;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v0, Lc8/Xyb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Xyb;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Syb;

    invoke-direct {v0, p0}, Lc8/Syb;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lc8/Wyb;

    invoke-direct {v0}, Lc8/Wyb;-><init>()V

    return-object v0
.end method

.method private static createTurnOnDebugTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lc8/bzb;

    invoke-direct {v0}, Lc8/bzb;-><init>()V

    .line 438
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createTurnOnRealTimeDebugTask(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Vyb;

    invoke-direct {v0, p0}, Lc8/Vyb;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Qyb;

    invoke-direct {v0, p0}, Lc8/Qyb;-><init>(Ljava/util/Map;)V

    .line 466
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "aUsernick"    # Ljava/lang/String;
    .param p1, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Lc8/Pyb;

    invoke-direct {v0, p0, p1}, Lc8/Pyb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static dispatchLocalHits()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {}, Lc8/gzb;->createDispatchLocalHitTrask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getCoreProcessWaitTime()I
    .locals 5

    .prologue
    .line 579
    sget-object v3, Lc8/gzb;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "UTANALYTICS_REMOTE_SERVICE_DELAY_SECOND"

    invoke-static {v3, v4}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "delaySecondStr":Ljava/lang/String;
    const/16 v1, 0xa

    .line 582
    .local v1, "delaySecond":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 585
    .local v0, "delayS":I
    if-ltz v0, :cond_0

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    .line 586
    move v1, v0

    .line 592
    .end local v0    # "delayS":I
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aKey"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p0}, Lc8/kzb;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static handleRemoteException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 498
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 499
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lc8/gzb;->restart()V

    .line 502
    :cond_0
    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 10
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const/4 v9, 0x3

    .line 63
    const-class v5, Lc8/gzb;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lc8/gzb;->isInit:Z

    if-nez v4, :cond_0

    .line 64
    const-string/jumbo v4, "AnalyticsMgr[init] start"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "sdk_version"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sput-object p0, Lc8/gzb;->application:Landroid/app/Application;

    .line 67
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v6, "Analytics_Client"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Lc8/gzb;->handlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, "looper":Landroid/os/Looper;
    :try_start_1
    sget-object v4, Lc8/gzb;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_1

    .line 76
    :try_start_2
    sget-object v4, Lc8/gzb;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 77
    if-nez v2, :cond_1

    .line 81
    const-wide/16 v6, 0xa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 72
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 100
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "5"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_3
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isInit"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-boolean v8, Lc8/gzb;->isInit:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "sdk_version"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    monitor-exit v5

    return-void

    .line 82
    .restart local v1    # "i":I
    .restart local v2    # "looper":Landroid/os/Looper;
    :catch_2
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "2"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "3"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lc8/fzb;

    invoke-direct {v4, v2}, Lc8/fzb;-><init>(Landroid/os/Looper;)V

    sput-object v4, Lc8/gzb;->handler:Lc8/fzb;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :try_start_8
    sget-object v4, Lc8/gzb;->handler:Lc8/fzb;

    new-instance v6, Lc8/ezb;

    invoke-direct {v6}, Lc8/ezb;-><init>()V

    invoke-virtual {v4, v6}, Lc8/fzb;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    :goto_4
    const/4 v4, 0x1

    :try_start_9
    sput-boolean v4, Lc8/gzb;->isInit:Z

    .line 98
    const-string/jumbo v4, "\u5916\u9762init\u5b8c\u6210"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 63
    .end local v1    # "i":I
    .end local v2    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 94
    .restart local v1    # "i":I
    .restart local v2    # "looper":Landroid/os/Looper;
    :catch_4
    move-exception v3

    .line 95
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    :try_start_a
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method private static newLocalAnalytics()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Local:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v0, Lc8/gzb;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 225
    new-instance v0, Lc8/Oyb;

    sget-object v1, Lc8/gzb;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lc8/Oyb;-><init>(Landroid/app/Application;)V

    sput-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    .line 226
    const-string/jumbo v0, "Start AppMonitor Service failed,AppMonitor run in local Mode..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public static notifyWaitLocked()V
    .locals 2

    .prologue
    .line 112
    :try_start_0
    sget-object v1, Lc8/gzb;->sWaitMainProcessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    sget-object v0, Lc8/gzb;->sWaitMainProcessLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v1

    .line 118
    :goto_0
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static restart()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 297
    const-string/jumbo v3, "[restart]"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :try_start_0
    sget-boolean v3, Lc8/gzb;->isNeedRestart:Z

    if-eqz v3, :cond_4

    .line 300
    const/4 v3, 0x0

    sput-boolean v3, Lc8/gzb;->isNeedRestart:Z

    .line 302
    invoke-static {}, Lc8/gzb;->newLocalAnalytics()V

    .line 303
    invoke-static {}, Lc8/gzb;->createInitTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 304
    sget-boolean v3, Lc8/gzb;->isSecurity:Z

    sget-boolean v4, Lc8/gzb;->isEncode:Z

    sget-object v5, Lc8/gzb;->appKey:Ljava/lang/String;

    sget-object v6, Lc8/gzb;->secret:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lc8/gzb;->createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 306
    sget-object v3, Lc8/gzb;->channel:Ljava/lang/String;

    invoke-static {v3}, Lc8/gzb;->createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 307
    sget-object v3, Lc8/gzb;->appVersion:Ljava/lang/String;

    invoke-static {v3}, Lc8/gzb;->createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 308
    sget-object v3, Lc8/gzb;->userNick:Ljava/lang/String;

    sget-object v4, Lc8/gzb;->userId:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/gzb;->createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 309
    sget-object v3, Lc8/gzb;->updateSessionProperties:Ljava/util/Map;

    invoke-static {v3}, Lc8/gzb;->createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 310
    sget-boolean v3, Lc8/gzb;->isDebug:Z

    if-eqz v3, :cond_0

    .line 311
    invoke-static {}, Lc8/gzb;->createTurnOnDebugTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 313
    :cond_0
    sget-boolean v3, Lc8/gzb;->isTurnOnRealTimeDebug:Z

    if-eqz v3, :cond_3

    sget-object v3, Lc8/gzb;->realTimeDebugParams:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 314
    sget-object v3, Lc8/gzb;->realTimeDebugParams:Ljava/util/Map;

    invoke-static {v3}, Lc8/gzb;->createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 319
    :cond_1
    :goto_0
    sget-object v4, Lc8/gzb;->mRegisterList:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    sget-object v3, Lc8/gzb;->mRegisterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 321
    sget-object v3, Lc8/gzb;->mRegisterList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/czb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .local v1, "entity":Lc8/czb;
    if-eqz v1, :cond_2

    .line 324
    :try_start_2
    iget-object v3, v1, Lc8/czb;->module:Ljava/lang/String;

    iget-object v5, v1, Lc8/czb;->monitorPoint:Ljava/lang/String;

    iget-object v6, v1, Lc8/czb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v7, v1, Lc8/czb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v8, v1, Lc8/czb;->isCommitDetail:Z

    invoke-static {v3, v5, v6, v7, v8}, Lc8/gzb;->createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v1    # "entity":Lc8/czb;
    .end local v2    # "i":I
    :cond_3
    :try_start_3
    sget-boolean v3, Lc8/gzb;->isTurnOnRealTimeDebug:Z

    if-eqz v3, :cond_1

    .line 316
    invoke-static {}, Lc8/gzb;->createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 333
    .restart local v2    # "i":I
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "AnalyticsMgr"

    .end local v2    # "i":I
    new-array v4, v11, [Ljava/lang/Object;

    const-string/jumbo v5, "[restart]"

    aput-object v5, v4, v9

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    return-void

    .line 326
    .restart local v1    # "entity":Lc8/czb;
    .restart local v2    # "i":I
    :catch_1
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v3, "AnalyticsMgr"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "[RegisterTask.run]"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "entity":Lc8/czb;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 4
    .param p0, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "aAppVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0}, Lc8/gzb;->createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 165
    sput-object p0, Lc8/gzb;->appVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setChanel(Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0}, Lc8/gzb;->createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 126
    sput-object p0, Lc8/gzb;->channel:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0, p1, p2, p3}, Lc8/gzb;->createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 135
    sput-boolean p0, Lc8/gzb;->isSecurity:Z

    .line 136
    sput-object p2, Lc8/gzb;->appKey:Ljava/lang/String;

    .line 137
    sput-object p3, Lc8/gzb;->secret:Ljava/lang/String;

    .line 138
    sput-boolean p1, Lc8/gzb;->isEncode:Z

    goto :goto_0
.end method

.method public static setSessionProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0}, Lc8/gzb;->createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static turnOffRealTimeDebug()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {}, Lc8/gzb;->createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lc8/gzb;->isTurnOnRealTimeDebug:Z

    goto :goto_0
.end method

.method public static turnOnDebug()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 169
    const-string/jumbo v0, "turnOnDebug"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {}, Lc8/gzb;->createTurnOnDebugTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 174
    sput-boolean v2, Lc8/gzb;->isDebug:Z

    .line 175
    invoke-static {v2}, Lc8/NBb;->setDebug(Z)V

    goto :goto_0
.end method

.method public static turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0}, Lc8/gzb;->createTurnOnRealTimeDebugTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 146
    sput-object p0, Lc8/gzb;->realTimeDebugParams:Ljava/util/Map;

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lc8/gzb;->isTurnOnRealTimeDebug:Z

    goto :goto_0
.end method

.method public static updateSessionProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0}, Lc8/gzb;->createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 193
    sput-object p0, Lc8/gzb;->updateSessionProperties:Ljava/util/Map;

    goto :goto_0
.end method

.method public static updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "aUsernick"    # Ljava/lang/String;
    .param p1, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string/jumbo v0, ""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Usernick"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "Userid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lc8/gzb;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    invoke-static {p0, p1}, Lc8/gzb;->createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    .line 184
    sput-object p0, Lc8/gzb;->userNick:Ljava/lang/String;

    .line 185
    sput-object p1, Lc8/gzb;->userId:Ljava/lang/String;

    goto :goto_0
.end method
