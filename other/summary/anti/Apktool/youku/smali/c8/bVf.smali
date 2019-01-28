.class public Lc8/bVf;
.super Ljava/lang/Object;
.source "WXSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aVf;,
        Lc8/ZUf;
    }
.end annotation


# static fields
.field public static final JS_FRAMEWORK_RELOAD:Ljava/lang/String; = "js_framework_reload"

.field private static final TAG:Ljava/lang/String; = "WXSDKEngine"

.field private static final V8_SO_NAME:Ljava/lang/String; = "weexjsc"

.field private static volatile mIsInit:Z

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lc8/bVf;->mIsInit:Z

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/bVf;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p0, p1}, Lc8/UUf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public static callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "funcId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lc8/pVf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 449
    return-void
.end method

.method private static doInitInternal(Landroid/app/Application;Lc8/RUf;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "config"    # Lc8/RUf;

    .prologue
    .line 178
    sput-object p0, Lc8/UUf;->sApplication:Landroid/app/Application;

    .line 179
    if-nez p0, :cond_0

    .line 180
    const-string/jumbo v0, "WXSDKEngine"

    const-string/jumbo v1, " doInitInternal application is null"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lc8/UUf;->JsFrameworkInit:Z

    .line 184
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/XUf;

    invoke-direct {v1, p1, p0}, Lc8/XUf;-><init>(Lc8/RUf;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 206
    invoke-static {}, Lc8/bVf;->register()V

    .line 207
    return-void
.end method

.method public static getActivityNavBarSetter()Lc8/NVf;
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getActivityNavBarSetter()Lc8/NVf;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableLoader()Lc8/AVf;
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getDrawableLoader()Lc8/AVf;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXHttpAdapter()Lc8/DVf;
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXHttpAdapter()Lc8/DVf;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXImgLoaderAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXStorageAdapter()Lc8/oWf;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXStorageAdapter()Lc8/oWf;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXUserTrackAdapter()Lc8/HVf;
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/bVf;->init(Landroid/app/Application;Lc8/HVf;)V

    .line 119
    return-void
.end method

.method public static init(Landroid/app/Application;Lc8/HVf;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "utAdapter"    # Lc8/HVf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/bVf;->init(Landroid/app/Application;Lc8/HVf;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static init(Landroid/app/Application;Lc8/HVf;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "utAdapter"    # Lc8/HVf;
    .param p2, "framework"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lc8/QUf;

    invoke-direct {v0}, Lc8/QUf;-><init>()V

    invoke-virtual {v0, p1}, Lc8/QUf;->setUtAdapter(Lc8/HVf;)Lc8/QUf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUf;->build()Lc8/RUf;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/bVf;->initialize(Landroid/app/Application;Lc8/RUf;)V

    .line 139
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Lc8/HVf;Lc8/EVf;Lc8/DVf;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "utAdapter"    # Lc8/HVf;
    .param p3, "imgLoaderAdapter"    # Lc8/EVf;
    .param p4, "httpAdapter"    # Lc8/DVf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lc8/QUf;

    invoke-direct {v0}, Lc8/QUf;-><init>()V

    invoke-virtual {v0, p2}, Lc8/QUf;->setUtAdapter(Lc8/HVf;)Lc8/QUf;

    move-result-object v0

    invoke-virtual {v0, p4}, Lc8/QUf;->setHttpAdapter(Lc8/DVf;)Lc8/QUf;

    move-result-object v0

    invoke-virtual {v0, p3}, Lc8/QUf;->setImgAdapter(Lc8/EVf;)Lc8/QUf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUf;->build()Lc8/RUf;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/bVf;->initialize(Landroid/app/Application;Lc8/RUf;)V

    .line 218
    return-void
.end method

.method public static initialize(Landroid/app/Application;Lc8/RUf;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "config"    # Lc8/RUf;

    .prologue
    .line 155
    sget-object v3, Lc8/bVf;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_0
    sget-boolean v2, Lc8/bVf;->mIsInit:Z

    if-eqz v2, :cond_0

    .line 157
    monitor-exit v3

    .line 174
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    .local v0, "start":J
    sput-wide v0, Lc8/UUf;->sSDKInitStart:J

    .line 161
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v2, Lc8/UUf;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    .line 170
    :goto_1
    invoke-static {p0, p1}, Lc8/bVf;->doInitInternal(Landroid/app/Application;Lc8/RUf;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sput-wide v4, Lc8/UUf;->sSDKInitInvokeTime:J

    .line 172
    const-string/jumbo v2, "SDKInitInvokeTime"

    sget-wide v4, Lc8/UUf;->sSDKInitInvokeTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 173
    const/4 v2, 0x1

    sput-boolean v2, Lc8/bVf;->mIsInit:Z

    .line 174
    monitor-exit v3

    goto :goto_0

    .end local v0    # "start":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 164
    .restart local v0    # "start":J
    :cond_1
    :try_start_1
    sget-object v2, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-eqz v2, :cond_2

    .line 165
    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    sput-object v2, Lc8/UUf;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_1

    .line 167
    :cond_2
    const-string/jumbo v2, "WXSDKEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WXEnvironment.sApplication is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static isInitialized()Z
    .locals 2

    .prologue
    .line 143
    sget-object v1, Lc8/bVf;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-boolean v0, Lc8/bVf;->mIsInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/UUf;->JsFrameworkInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static register()V
    .locals 8

    .prologue
    .line 225
    new-instance v0, Lc8/Mgg;

    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-direct {v0, v3}, Lc8/Mgg;-><init>(Lc8/Kgg;)V

    .line 227
    .local v0, "batchHelper":Lc8/Mgg;
    :try_start_0
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/qcg;

    new-instance v5, Lc8/pcg;

    invoke-direct {v5}, Lc8/pcg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "text"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 235
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/xbg;

    new-instance v5, Lc8/wbg;

    invoke-direct {v5}, Lc8/wbg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "container"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "div"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "header"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "footer"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 246
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/Kbg;

    new-instance v5, Lc8/Ibg;

    invoke-direct {v5}, Lc8/Ibg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "image"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "img"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 255
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/acg;

    new-instance v5, Lc8/Zbg;

    invoke-direct {v5}, Lc8/Zbg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "scroller"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 263
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/gcg;

    new-instance v5, Lc8/ccg;

    invoke-direct {v5}, Lc8/ccg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "slider"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "cycleslider"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 272
    new-instance v3, Lc8/vag;

    const-class v4, Lc8/lcg;

    new-instance v5, Lc8/jcg;

    invoke-direct {v5}, Lc8/jcg;-><init>()V

    invoke-direct {v3, v4, v5}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "slider-neighbor"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 280
    const-string/jumbo v2, "simplelist"

    .line 281
    .local v2, "simpleList":Ljava/lang/String;
    const-class v3, Lc8/fdg;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 282
    const-class v3, Lc8/odg;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "list"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "vlist"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "recycler"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "waterfall"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 283
    const-class v3, Lc8/Bdg;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "recycle-list"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 284
    const-class v3, Lc8/cdg;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "hlist"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 285
    const-string/jumbo v3, "cell"

    const-class v4, Lc8/jdg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 286
    const-string/jumbo v3, "cell-slot"

    const-class v4, Lc8/jdg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 287
    const-string/jumbo v3, "indicator"

    const-class v4, Lc8/Mbg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 288
    const-string/jumbo v3, "video"

    const-class v4, Lc8/xcg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 289
    const-string/jumbo v3, "input"

    const-class v4, Lc8/Nbg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 290
    const-string/jumbo v3, "textarea"

    const-class v4, Lc8/fbg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 291
    const-string/jumbo v3, "switch"

    const-class v4, Lc8/ncg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 292
    const-string/jumbo v3, "a"

    const-class v4, Lc8/hbg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 293
    const-string/jumbo v3, "embed"

    const-class v4, Lc8/Dbg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 294
    const-string/jumbo v3, "web"

    const-class v4, Lc8/Acg;

    invoke-static {v3, v4}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 295
    const-string/jumbo v3, "refresh"

    const-class v4, Lc8/Qbg;

    invoke-static {v3, v4}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 296
    const-string/jumbo v3, "loading"

    const-class v4, Lc8/Obg;

    invoke-static {v3, v4}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 297
    const-string/jumbo v3, "loading-indicator"

    const-class v4, Lc8/Pbg;

    invoke-static {v3, v4}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 298
    const-string/jumbo v3, "header"

    const-class v4, Lc8/Ebg;

    invoke-static {v3, v4}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 300
    const-string/jumbo v3, "modal"

    const-class v4, Lc8/Vdg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 301
    const-string/jumbo v3, "instanceWrap"

    const-class v4, Lc8/HXf;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 302
    const-string/jumbo v3, "animation"

    const-class v4, Lc8/Mag;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 303
    const-string/jumbo v3, "webview"

    const-class v4, Lc8/Zdg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 304
    const-string/jumbo v3, "navigator"

    const-class v4, Lc8/OVf;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 305
    const-string/jumbo v3, "stream"

    const-class v4, Lc8/hag;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 306
    const-string/jumbo v3, "timer"

    const-class v4, Lc8/Ydg;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 307
    const-string/jumbo v3, "storage"

    const-class v4, Lc8/xWf;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 308
    const-string/jumbo v3, "clipboard"

    const-class v4, Lc8/MVf;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 309
    const-string/jumbo v3, "globalEvent"

    const-class v4, Lc8/VUf;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 310
    const-string/jumbo v3, "picker"

    const-class v4, Lc8/eWf;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 311
    const-string/jumbo v3, "meta"

    const-class v4, Lc8/Odg;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 312
    const-string/jumbo v3, "webSocket"

    const-class v4, Lc8/CWf;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 313
    const-string/jumbo v3, "local"

    const-class v4, Lc8/Ndg;

    invoke-static {v3, v4}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 316
    const-class v3, Lc8/MYf;

    invoke-static {v2, v3}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 317
    const-string/jumbo v3, "indicator"

    const-class v4, Lc8/Lbg;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 318
    const-string/jumbo v3, "text"

    const-class v4, Lc8/UYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 319
    const-string/jumbo v3, "header"

    const-class v4, Lc8/zYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 320
    const-string/jumbo v3, "cell"

    const-class v4, Lc8/zYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 321
    const-string/jumbo v3, "cell-slot"

    const-class v4, Lc8/zYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 322
    const-string/jumbo v3, "input"

    const-class v4, Lc8/ZXf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 323
    const-string/jumbo v3, "textarea"

    const-class v4, Lc8/uYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 324
    const-string/jumbo v3, "switch"

    const-class v4, Lc8/RYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 325
    const-string/jumbo v3, "list"

    const-class v4, Lc8/MYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 326
    const-string/jumbo v3, "recycle-list"

    const-class v4, Lc8/NYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 327
    const-string/jumbo v3, "vlist"

    const-class v4, Lc8/MYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 328
    const-string/jumbo v3, "hlist"

    const-class v4, Lc8/MYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 329
    const-string/jumbo v3, "scroller"

    const-class v4, Lc8/OYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 330
    const-string/jumbo v3, "recycler"

    const-class v4, Lc8/NYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 331
    const-string/jumbo v3, "waterfall"

    const-class v4, Lc8/NYf;

    invoke-static {v3, v4}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2    # "simpleList":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lc8/Mgg;->flush()V

    .line 336
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Lcom/taobao/weex/common/WXException;
    const-string/jumbo v3, "[WXSDKEngine] register:"

    invoke-static {v3, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z
    .locals 8
    .param p0, "holder"    # Lc8/rag;
    .param p1, "appendTree"    # Z
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v5, 0x1

    .line 375
    .local v5, "result":Z
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p2

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 376
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v1, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 378
    const-string/jumbo v6, "append"

    const-string/jumbo v7, "tree"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v4, p0, v1}, Lc8/yag;->registerComponent(Ljava/lang/String;Lc8/rag;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 375
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 382
    .end local v1    # "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public static varargs registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z
    .locals 2
    .param p1, "appendTree"    # Z
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-nez p0, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 369
    :goto_0
    return v1

    .line 368
    :cond_0
    new-instance v0, Lc8/vag;

    invoke-direct {v0, p0}, Lc8/vag;-><init>(Ljava/lang/Class;)V

    .line 369
    .local v0, "holder":Lc8/vag;
    invoke-static {v0, p1, p2}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static registerComponent(Ljava/lang/String;Lc8/pag;Z)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "componentGetter"    # Lc8/pag;
    .param p2, "appendTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lc8/oag;

    invoke-direct {v0, p0, p1}, Lc8/oag;-><init>(Ljava/lang/String;Lc8/pag;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p2, v1}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    new-instance v0, Lc8/vag;

    invoke-direct {v0, p1}, Lc8/vag;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, v1}, Lc8/yag;->registerComponent(Ljava/lang/String;Lc8/rag;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "appendTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerComponent(Ljava/util/Map;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .local p0, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v1, 0x0

    .line 465
    if-nez p0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v1

    .line 468
    :cond_1
    const-string/jumbo v2, "type"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    new-instance v1, Lc8/vag;

    invoke-direct {v1, p1}, Lc8/vag;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, p0}, Lc8/yag;->registerComponent(Ljava/lang/String;Lc8/rag;Ljava/util/Map;)Z

    move-result v1

    goto :goto_0
.end method

.method public static registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/HYf;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/dom/WXDomObject;>;"
    invoke-static {p0, p1}, Lc8/JYf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static registerModule(Ljava/lang/String;Lc8/HWf;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/HWf;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/MXf;",
            ">(",
            "Ljava/lang/String;",
            "Lc8/HWf;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p0, p1, p2}, Lc8/cXf;->registerModule(Ljava/lang/String;Lc8/HWf;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/MXf;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/common/WXModule;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/MXf;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lc8/BXf;

    invoke-direct {v0, p1}, Lc8/BXf;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2}, Lc8/bVf;->registerModule(Ljava/lang/String;Lc8/HWf;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lc8/aVf;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/aVf;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/MXf;",
            ">(",
            "Ljava/lang/String;",
            "Lc8/aVf;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {p0, p1, p2}, Lc8/bVf;->registerModule(Ljava/lang/String;Lc8/HWf;Z)Z

    move-result v0

    return v0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lc8/qag;Z)Z
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/qag;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/MXf;",
            ">(",
            "Ljava/lang/String;",
            "Lc8/qag;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lc8/qag;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "serviceScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 425
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lc8/eXf;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static reload()V
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lc8/UUf;->sRemoteDebugMode:Z

    invoke-static {v0, v1}, Lc8/bVf;->reload(Landroid/content/Context;Z)V

    .line 528
    return-void
.end method

.method public static reload(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "remoteDebug"    # Z

    .prologue
    .line 509
    sput-boolean p2, Lc8/UUf;->sRemoteDebugMode:Z

    .line 510
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ZWf;->restart()V

    .line 511
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/ZWf;->initScriptsFramework(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lc8/cXf;->reload()V

    .line 514
    invoke-static {}, Lc8/yag;->reload()V

    .line 515
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    new-instance v1, Lc8/YUf;

    invoke-direct {v1, p0}, Lc8/YUf;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 521
    return-void
.end method

.method public static reload(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteDebug"    # Z

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/bVf;->reload(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 524
    return-void
.end method

.method public static restartBridge(Z)V
    .locals 1
    .param p0, "debug"    # Z

    .prologue
    .line 456
    sput-boolean p0, Lc8/UUf;->sDebugMode:Z

    .line 457
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->restartBridge()V

    .line 458
    return-void
.end method

.method public static setActivityNavBarSetter(Lc8/NVf;)V
    .locals 1
    .param p0, "activityNavBarSetter"    # Lc8/NVf;

    .prologue
    .line 505
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/pVf;->setActivityNavBarSetter(Lc8/NVf;)V

    .line 506
    return-void
.end method

.method public static setJSExcetptionAdapter(Lc8/FVf;)V
    .locals 1
    .param p0, "excetptionAdapter"    # Lc8/FVf;

    .prologue
    .line 221
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/pVf;->setIWXJSExceptionAdapter(Lc8/FVf;)V

    .line 222
    return-void
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {p0}, Lc8/eXf;->unRegisterService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
