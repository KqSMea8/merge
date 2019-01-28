.class public Lcom/ut/mini/UTAnalytics;
.super Ljava/lang/Object;
.source "UTAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTAnalytics"

.field private static volatile bDisableWindvane:Z

.field private static volatile mInit:Z

.field private static volatile mInit4app:Z

.field private static s_instance:Lcom/ut/mini/UTAnalytics;


# instance fields
.field private mAppkeyTrackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTracker:Lcom/ut/mini/UTTracker;

.field private mTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Lcom/ut/mini/UTAnalytics;

    invoke-direct {v0}, Lcom/ut/mini/UTAnalytics;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAnalytics;->s_instance:Lcom/ut/mini/UTAnalytics;

    .line 88
    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    .line 90
    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z

    .line 92
    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->bDisableWindvane:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method private checkInit()Z
    .locals 2

    .prologue
    .line 253
    sget-boolean v0, Lc8/gzb;->isInit:Z

    if-nez v0, :cond_0

    .line 254
    const-string/jumbo v0, "Please call  () before call other method"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    sget-boolean v0, Lc8/gzb;->isInit:Z

    return v0
.end method

.method private createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;
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
    .line 548
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ut/mini/UTAnalytics$4;

    invoke-direct {v0, p0, p1}, Lcom/ut/mini/UTAnalytics$4;-><init>(Lcom/ut/mini/UTAnalytics;Ljava/util/Map;)V

    .line 558
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static getInstance()Lcom/ut/mini/UTAnalytics;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/ut/mini/UTAnalytics;->s_instance:Lcom/ut/mini/UTAnalytics;

    return-object v0
.end method

.method private initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;
    .param p3, "app"    # Z

    .prologue
    .line 110
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[i_initialize] start..."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V

    .line 112
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTChannel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V

    .line 113
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isAliyunOsSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->setToAliyunOsPlatform()V

    .line 117
    :cond_0
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTCrashHandlerDisable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOff()V

    .line 126
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTLogEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->turnOnDebug()V

    .line 129
    :cond_2
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_4

    .line 132
    :cond_3
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ut/mini/UTAnalytics;->setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 136
    :cond_4
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-nez v1, :cond_6

    .line 138
    new-instance v0, Lcom/ut/mini/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/UTMI1010_2001Event;-><init>()V

    .line 139
    .local v0, "l1010and2001EventInstance":Lcom/ut/mini/UTMI1010_2001Event;
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/UTMI1010_2001Event;)V

    .line 145
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTMI1010_2001Event;->initTrafficStatistic(Landroid/app/Application;)V

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    .line 149
    invoke-static {p1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registeActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 150
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;->getInstance()Lcom/ut/mini/module/appstatus/UTAppBackgroundTimeoutDetector;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 151
    invoke-static {v0}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 152
    new-instance v1, Lcom/ut/mini/internal/RealtimeDebugSwitch;

    invoke-direct {v1}, Lcom/ut/mini/internal/RealtimeDebugSwitch;-><init>()V

    invoke-static {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 153
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ut/mini/exposure/TrackerManager;->init(Landroid/app/Application;)V

    .line 156
    :cond_5
    invoke-static {}, Lc8/CAb;->getInstance()Lc8/CAb;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/CAb;->enable(Landroid/content/Context;)V

    .line 158
    .end local v0    # "l1010and2001EventInstance":Lcom/ut/mini/UTMI1010_2001Event;
    :cond_6
    return-void

    .line 120
    :cond_7
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOn(Landroid/content/Context;)V

    .line 121
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v1

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->setCrashCaughtListener(Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;)V

    goto :goto_0
.end method

.method private setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {p1}, Lc8/gzb;->setAppVersion(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "aChannel"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p1}, Lc8/gzb;->setChanel(Ljava/lang/String;)V

    .line 310
    :try_start_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    new-instance v1, Lcom/ut/mini/UTAnalytics$1;

    invoke-direct {v1, p0, p1}, Lcom/ut/mini/UTAnalytics$1;-><init>(Lcom/ut/mini/UTAnalytics;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDisableWindvane(Z)V
    .locals 0
    .param p0, "bDisableWindvane"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lcom/ut/mini/UTAnalytics;->bDisableWindvane:Z

    .line 96
    return-void
.end method

.method private setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 9
    .param p1, "aRequestAuthenticationInstance"    # Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .prologue
    .line 265
    const-string/jumbo v5, "UTAnalytics"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "[setRequestAuthentication] start..."

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-boolean v8, Lc8/gzb;->isInit:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "\u7b7e\u540d\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, "isEncode":Z
    instance-of v5, p1, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 276
    check-cast v4, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    .line 278
    .local v4, "temp":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAuthcode()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "secret":Ljava/lang/String;
    const/4 v2, 0x1

    .line 291
    .end local v4    # "temp":Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
    .local v2, "isSecurity":Z
    :goto_0
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/lzb;->setAppKey(Ljava/lang/String;)V

    .line 292
    invoke-static {v2, v1, v0, v3}, Lc8/gzb;->setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 281
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "isSecurity":Z
    .end local v3    # "secret":Ljava/lang/String;
    :cond_1
    instance-of v5, p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 282
    check-cast v4, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    .line 283
    .local v4, "temp":Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "secret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 286
    .restart local v2    # "isSecurity":Z
    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v1

    .line 287
    goto :goto_0

    .line 288
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "isSecurity":Z
    .end local v3    # "secret":Ljava/lang/String;
    .end local v4    # "temp":Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "\u6b64\u7b7e\u540d\u65b9\u5f0f\u6682\u4e0d\u652f\u6301!\u8bf7\u4f7f\u7528 UTSecuritySDKRequestAuthentication \u6216 UTBaseRequestAuthentication \u8bbe\u7f6e\u7b7e\u540d!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private turnOffCrashHandler()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->turnOff()V

    .line 326
    return-void
.end method

.method private turnOnDebug()V
    .locals 0

    .prologue
    .line 332
    invoke-static {}, Lc8/gzb;->turnOnDebug()V

    .line 333
    return-void
.end method


# virtual methods
.method public dispatchLocalHits()V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    new-instance v1, Lcom/ut/mini/UTAnalytics$2;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTAnalytics$2;-><init>(Lcom/ut/mini/UTAnalytics;)V

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized getDefaultTracker()Lcom/ut/mini/UTTracker;
    .locals 2

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lzb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getDefaultTracker error,must call setRequestAuthentication method first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 408
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->mDefaultTracker:Lcom/ut/mini/UTTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getOperationHistory(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aAmount"    # I
    .param p2, "aSeparator"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/module/UTOperationStack;->getOperationHistory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 3
    .param p1, "aTrackId"    # Ljava/lang/String;

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_0
    monitor-exit p0

    return-object v1

    .line 421
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 422
    .local v0, "lTracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->setTrackId(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 424
    goto :goto_0

    .line 427
    .end local v0    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "TrackId is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTrackerByAppkey(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 3
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_0
    monitor-exit p0

    return-object v1

    .line 439
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 440
    .local v0, "lTracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->setAppKey(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->mAppkeyTrackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 442
    goto :goto_0

    .line 445
    .end local v0    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "appkey is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 336
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V

    .line 337
    return-void
.end method

.method public registerWindvane()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 162
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->bDisableWindvane:Z

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "UTAnalytics"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "user disable WVTBUserTrack "

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v1, "UTAnalytics"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Has registered WVTBUserTrack plugin,not need to register again! "

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_1
    :try_start_0
    const-string/jumbo v1, "WVTBUserTrack"

    const-class v2, Lcom/ut/mini/core/WVUserTrack;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Exception"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveCacheDataToLocal()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v0, Lc8/gzb;->handler:Lc8/fzb;

    new-instance v1, Lcom/ut/mini/UTAnalytics$3;

    invoke-direct {v1, p0}, Lcom/ut/mini/UTAnalytics$3;-><init>(Lcom/ut/mini/UTAnalytics;)V

    invoke-virtual {v0, v1}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public selfCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const-string/jumbo v1, "local not init"

    .line 544
    :goto_0
    return-object v1

    .line 536
    :cond_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_1

    .line 537
    const-string/jumbo v1, "not bind remote service\uff0cwaitting 10 second"

    goto :goto_0

    .line 540
    :cond_1
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p1}, Lc8/kzb;->selfCheck(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sessionTimeout()V
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lc8/Szb;->getInstance()Lc8/Szb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Szb;->sessionTimeout()V

    .line 387
    return-void
.end method

.method public setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    .prologue
    .line 189
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z

    if-eqz v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/lzb;->setContext(Landroid/content/Context;)V

    .line 197
    invoke-static {p1}, Lc8/gzb;->init(Landroid/app/Application;)V

    .line 198
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/ut/mini/UTAnalytics;->initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->registerWindvane()V

    .line 200
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    .line 201
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit4app:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 209
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 204
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application and callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setAppApplicationInstance4sdk(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    .prologue
    .line 227
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 231
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/lzb;->setContext(Landroid/content/Context;)V

    .line 235
    invoke-static {p1}, Lc8/gzb;->init(Landroid/app/Application;)V

    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/ut/mini/UTAnalytics;->initialize(Landroid/app/Application;Lcom/ut/mini/IUTApplication;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->registerWindvane()V

    .line 238
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ut/mini/UTAnalytics;->mInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 245
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 240
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application and callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setToAliyunOsPlatform()V
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lzb;->setToAliyunOSPlatform()V

    .line 481
    return-void
.end method

.method protected transferLog(Ljava/util/Map;)V
    .locals 5
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
    .line 453
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ut/mini/UTAnalytics;->checkInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string/jumbo v1, "_sls"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-eqz v1, :cond_1

    .line 459
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p1}, Lc8/kzb;->transferLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "UTAnalytics"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "iAnalytics"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lc8/gzb;->iAnalytics:Lc8/kzb;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    :cond_2
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-direct {p0, p1}, Lcom/ut/mini/UTAnalytics;->createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public turnOffAutoPageTrack()V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->turnOffAutoPageTrack()V

    .line 394
    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 0

    .prologue
    .line 476
    invoke-static {}, Lc8/gzb;->turnOffRealTimeDebug()V

    .line 477
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0
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
    .line 472
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lc8/gzb;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 473
    return-void
.end method

.method public unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/module/plugin/UTPlugin;

    .prologue
    .line 340
    invoke-static {}, Lcom/ut/mini/module/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V

    .line 341
    return-void
.end method

.method public updateSessionProperties(Ljava/util/Map;)V
    .locals 0
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
    .line 382
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lc8/gzb;->updateSessionProperties(Ljava/util/Map;)V

    .line 383
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 350
    invoke-static {p1, p2}, Lc8/gzb;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "UT"

    const/16 v2, 0x3ef

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    .local v0, "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const-string/jumbo v1, "_priority"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 356
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 358
    .end local v0    # "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :cond_0
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 8
    .param p1, "aUsernick"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 366
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    .line 368
    .local v7, "lTracker":Lcom/ut/mini/UTTracker;
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "UT"

    const/16 v2, 0x3ee

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    .local v0, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 371
    return-void

    .line 372
    .end local v0    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v7    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Usernick can not be null or empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
