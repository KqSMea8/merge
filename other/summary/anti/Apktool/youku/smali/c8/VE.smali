.class public Lc8/VE;
.super Lc8/RD;
.source "WVDevelopTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVDevelopTool"

.field private static mLastMode:I


# instance fields
.field private mIsDebugOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lc8/VE;->mLastMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/VE;->mIsDebugOpen:Z

    return-void
.end method

.method private cleanUp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/GG;->cleanUp(I)Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 362
    .local v0, "result":Lc8/kE;
    if-eqz v1, :cond_0

    .line 363
    const-string/jumbo v2, "validApps"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 365
    :cond_0
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 366
    return-void
.end method

.method private getConfigVersions(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v4

    invoke-virtual {v4}, Lc8/KB;->getConfigVersions()Ljava/util/HashMap;

    move-result-object v3

    .line 346
    .local v3, "versionMap":Ljava/util/HashMap;
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 347
    .local v2, "result":Lc8/kE;
    invoke-virtual {v2}, Lc8/kE;->setSuccess()V

    .line 348
    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 356
    return-void
.end method

.method private getURLContentType(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 397
    .local v1, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "jso":Lorg/json/JSONObject;
    const-string/jumbo v3, "url"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const-string/jumbo v3, "type"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    :goto_0
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 416
    .end local v0    # "jso":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 402
    .restart local v0    # "jso":Lorg/json/JSONObject;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lc8/PB;->isTrustedUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    const-string/jumbo v3, "type"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    .end local v0    # "jso":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    sget-object v3, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .line 404
    .restart local v0    # "jso":Lorg/json/JSONObject;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v2}, Lc8/PB;->isThirdPartyUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 413
    .end local v0    # "jso":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :catch_1
    move-exception v3

    const-string/jumbo v3, "error"

    const-string/jumbo v4, "failed to getURLContentType"

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .line 407
    .restart local v0    # "jso":Lorg/json/JSONObject;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private openRemoteLog(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 422
    .local v1, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "jso":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "123"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    const-string/jumbo v2, "server"

    const-string/jumbo v3, "http://h5.alibaba-inc.com"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 426
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    .end local v0    # "jso":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v2

    sget-object v2, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 430
    :catch_1
    move-exception v2

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "failed to openRemoteLog"

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method private readMemoryStatisitcs(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 371
    return-void
.end method

.method private resetConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KB;->resetConfig()V

    .line 328
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0, v1}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 329
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 330
    return-void
.end method

.method private setDebugEnabled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 376
    .local v2, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "jso":Lorg/json/JSONObject;
    const-string/jumbo v3, "logLevel"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 378
    .local v1, "open":Z
    if-eqz v1, :cond_0

    .line 380
    new-instance v3, Lc8/eI;

    invoke-direct {v3}, Lc8/eI;-><init>()V

    invoke-static {v3}, Lc8/ZH;->setImpl(Lc8/fI;)V

    .line 381
    const/4 v3, 0x1

    invoke-static {v3}, Lc8/ZH;->setLogSwitcher(Z)V

    .line 385
    :goto_0
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 392
    .end local v0    # "jso":Lorg/json/JSONObject;
    .end local v1    # "open":Z
    :goto_1
    return-void

    .line 383
    .restart local v0    # "jso":Lorg/json/JSONObject;
    .restart local v1    # "open":Z
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lc8/ZH;->setLogSwitcher(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 387
    .end local v0    # "jso":Lorg/json/JSONObject;
    .end local v1    # "open":Z
    :catch_0
    move-exception v3

    sget-object v3, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .line 389
    :catch_1
    move-exception v3

    const-string/jumbo v3, "error"

    const-string/jumbo v4, "failed to setDebugEnabled"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1
.end method

.method private updateConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 334
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    .local v2, "jso":Lorg/json/JSONObject;
    const-string/jumbo v3, "configName"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "configName":Ljava/lang/String;
    const-string/jumbo v3, "configUrl"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "configUrl":Ljava/lang/String;
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v3, v0, v4, v1, v5}, Lc8/KB;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 338
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0    # "configName":Ljava/lang/String;
    .end local v1    # "configUrl":Ljava/lang/String;
    .end local v2    # "jso":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v3

    sget-object v3, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method


# virtual methods
.method public final clearPackageApp(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 316
    invoke-static {}, Lc8/yG;->uninstallAll()V

    .line 317
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 318
    return-void
.end method

.method public final clearWebViewFinishJs(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 258
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 260
    .local v0, "result":Lc8/kE;
    :try_start_0
    invoke-static {}, Lc8/lC;->clearJsRender()V

    .line 261
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "failed to enable clearWebViewFinishJs"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public final clearWindVaneCache(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 147
    iget-object v0, p0, Lc8/VE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->clearCache()V

    .line 148
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 149
    return-void
.end method

.method public closeLocPerformanceMonitor(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/KF;->setOpenLocPerformanceMonitor(Z)V

    .line 117
    return-void
.end method

.method public closeSpdyforDebug(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/OH;->setOpenSpdyforDebug(Z)V

    .line 123
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 47
    const-string/jumbo v1, "isDebugEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 49
    .local v0, "result":Lc8/kE;
    const-string/jumbo v1, "global"

    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 110
    .end local v0    # "result":Lc8/kE;
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 51
    :cond_0
    const-string/jumbo v1, "clearWindVaneCache"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0, p2, p3}, Lc8/VE;->clearWindVaneCache(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v1, "setWebViewDebugEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p0, p2, p3}, Lc8/VE;->setWebViewDebugEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v1, "setWebViewFinishJs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {p0, p2, p3}, Lc8/VE;->setWebViewFinishJs(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v1, "clearWebViewFinishJs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {p0, p2, p3}, Lc8/VE;->clearWebViewFinishJs(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 59
    :cond_4
    const-string/jumbo v1, "setPackageAppEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-virtual {p0, p2, p3}, Lc8/VE;->setPackageAppEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 61
    :cond_5
    const-string/jumbo v1, "isPackageAppEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 62
    invoke-virtual {p0, p2, p3}, Lc8/VE;->isPackageAppEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 63
    :cond_6
    const-string/jumbo v1, "setUCEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    invoke-virtual {p0, p2, p3}, Lc8/VE;->setUCEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 65
    :cond_7
    const-string/jumbo v1, "isUCEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 66
    invoke-virtual {p0, p2, p3}, Lc8/VE;->isUCEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 67
    :cond_8
    const-string/jumbo v1, "readPackageAppMemoryInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    invoke-virtual {p0, p2, p3}, Lc8/VE;->readPackageAppMemoryInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 69
    :cond_9
    const-string/jumbo v1, "readMemoryZCacheMap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 70
    invoke-virtual {p0, p2, p3}, Lc8/VE;->readMemoryZCacheMap(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 71
    :cond_a
    const-string/jumbo v1, "readMemoryPrefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 72
    invoke-virtual {p0, p2, p3}, Lc8/VE;->readMemoryPrefixes(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 73
    :cond_b
    const-string/jumbo v1, "readPackageAppDiskConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 74
    invoke-virtual {p0, p2, p3}, Lc8/VE;->readPackageAppDiskConfig(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 75
    :cond_c
    const-string/jumbo v1, "readPackageAppDiskFileList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 76
    invoke-virtual {p0, p2, p3}, Lc8/VE;->readPackageAppDiskFileList(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 77
    :cond_d
    const-string/jumbo v1, "clearPackageApp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 78
    invoke-virtual {p0, p2, p3}, Lc8/VE;->clearPackageApp(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 79
    :cond_e
    const-string/jumbo v1, "updatePackageApp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 80
    invoke-virtual {p0, p2, p3}, Lc8/VE;->updatePackageApp(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 81
    :cond_f
    const-string/jumbo v1, "getLocPerformanceData"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 82
    invoke-virtual {p0, p2, p3}, Lc8/VE;->getLocPerformanceData(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 83
    :cond_10
    const-string/jumbo v1, "openSpdyforDebug"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 84
    invoke-virtual {p0, p2, p3}, Lc8/VE;->openSpdyforDebug(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 85
    :cond_11
    const-string/jumbo v1, "closeSpdyforDebug"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 86
    invoke-virtual {p0, p2, p3}, Lc8/VE;->closeSpdyforDebug(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 87
    :cond_12
    const-string/jumbo v1, "openLocPerformanceMonitor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 88
    invoke-virtual {p0, p2, p3}, Lc8/VE;->openLocPerformanceMonitor(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 89
    :cond_13
    const-string/jumbo v1, "closeLocPerformanceMonitor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 90
    invoke-virtual {p0, p2, p3}, Lc8/VE;->closeLocPerformanceMonitor(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 91
    :cond_14
    const-string/jumbo v1, "resetConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 92
    invoke-direct {p0, p3, p2}, Lc8/VE;->resetConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_15
    const-string/jumbo v1, "updateConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 94
    invoke-direct {p0, p3, p2}, Lc8/VE;->updateConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_16
    const-string/jumbo v1, "getConfigVersions"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 96
    invoke-direct {p0, p3, p2}, Lc8/VE;->getConfigVersions(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_17
    const-string/jumbo v1, "setDebugEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    invoke-direct {p0, p3, p2}, Lc8/VE;->setDebugEnabled(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_18
    const-string/jumbo v1, "cleanUp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 100
    invoke-direct {p0, p3, p2}, Lc8/VE;->cleanUp(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_19
    const-string/jumbo v1, "readMemoryStatisitcs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 102
    invoke-direct {p0, p3, p2}, Lc8/VE;->readMemoryStatisitcs(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_1a
    const-string/jumbo v1, "getURLContentType"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 104
    invoke-direct {p0, p3, p2}, Lc8/VE;->getURLContentType(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_1b
    const-string/jumbo v1, "openRemoteLog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 106
    invoke-direct {p0, p3, p2}, Lc8/VE;->openRemoteLog(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_1c
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public getLocPerformanceData(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 130
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 132
    .local v2, "result":Lc8/kE;
    :try_start_0
    invoke-static {}, Lc8/KF;->getInstance()Lc8/KF;

    move-result-object v3

    invoke-virtual {v3}, Lc8/KF;->getMonitorData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "data":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 134
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final isPackageAppEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 173
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 174
    .local v0, "result":Lc8/kE;
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v1, Lc8/DB;->commonConfig:Lc8/EB;

    iget v1, v1, Lc8/EB;->packageAppStatus:I

    if-nez v1, :cond_0

    .line 175
    const-string/jumbo v1, "enabled"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 179
    return-void

    .line 177
    :cond_0
    const-string/jumbo v1, "enabled"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final isUCEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 205
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 206
    .local v0, "result":Lc8/kE;
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v1, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v1, v1, Lc8/EB;->useSystemWebView:Z

    if-eqz v1, :cond_0

    .line 207
    const-string/jumbo v1, "enabled"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 211
    return-void

    .line 209
    :cond_0
    const-string/jumbo v1, "enabled"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openLocPerformanceMonitor(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/KF;->setOpenLocPerformanceMonitor(Z)V

    .line 114
    return-void
.end method

.method public openSpdyforDebug(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/OH;->setOpenSpdyforDebug(Z)V

    .line 120
    return-void
.end method

.method public final readMemoryPrefixes(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 281
    const-string/jumbo v1, "WVZipPrefixes"

    const-string/jumbo v2, "WVZipPrefixesData"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "prefixes":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final readMemoryZCacheMap(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "config":Lc8/WG;
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v1

    invoke-interface {v1}, Lc8/kG;->getGlobalConfig()Lc8/WG;

    move-result-object v0

    .line 273
    :cond_0
    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {v0}, Lc8/WG;->getZcacheResConfig()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final readPackageAppDiskConfig(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 302
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/AG;->readGlobalConfig(Z)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "config":Ljava/lang/String;
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 304
    .local v1, "result":Lc8/kE;
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 306
    return-void
.end method

.method public final readPackageAppDiskFileList(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 309
    invoke-static {}, Lc8/yG;->getAppsFileList()Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 311
    .local v1, "result":Lc8/kE;
    const-string/jumbo v2, "list"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 312
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 313
    return-void
.end method

.method public final readPackageAppMemoryInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "config":Lc8/WG;
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v1

    invoke-interface {v1}, Lc8/kG;->getGlobalConfig()Lc8/WG;

    move-result-object v0

    .line 294
    :cond_0
    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setPackageAppEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .local v1, "on":Z
    if-nez v1, :cond_0

    .line 159
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v3, 0x0

    iput v3, v2, Lc8/EB;->packageAppStatus:I

    .line 163
    :goto_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 167
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :goto_1
    return-void

    .line 161
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "on":Z
    :cond_0
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v3, 0x2

    iput v3, v2, Lc8/EB;->packageAppStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :catch_0
    move-exception v2

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1
.end method

.method public final setUCEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 188
    .local v1, "on":Z
    if-nez v1, :cond_0

    .line 189
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lc8/EB;->useSystemWebView:Z

    .line 190
    iget-object v2, p0, Lc8/VE;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "\u5173\u95edUC, \u91cd\u542f\u540e\u751f\u6548"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 195
    :goto_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 199
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :goto_1
    return-void

    .line 192
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "on":Z
    :cond_0
    invoke-static {}, Lc8/DB;->getInstance()Lc8/DB;

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lc8/EB;->useSystemWebView:Z

    .line 193
    iget-object v2, p0, Lc8/VE;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "\u542f\u7528UC, \u91cd\u542f\u540e\u751f\u6548"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :catch_0
    move-exception v2

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1
.end method

.method public final setWebViewDebugEnabled(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 217
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 219
    .local v2, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 221
    .local v1, "on":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 222
    const-string/jumbo v3, "error"

    const-string/jumbo v4, "api level < 19"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 235
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :goto_0
    return-void

    .line 226
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "on":Z
    :cond_0
    iget-object v3, p0, Lc8/VE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v3, v3, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v3, :cond_1

    .line 227
    invoke-static {v1}, Landroid/taobao/windvane/webview/WVWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 229
    :cond_1
    iput-boolean v1, p0, Lc8/VE;->mIsDebugOpen:Z

    .line 230
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :catch_0
    move-exception v3

    const-string/jumbo v3, "error"

    const-string/jumbo v4, "failed to enable debugging"

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public final setWebViewFinishJs(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 241
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 243
    .local v1, "result":Lc8/kE;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "jso":Lorg/json/JSONObject;
    const-string/jumbo v2, "js"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/lC;->setJsContent(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .end local v0    # "jso":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v2

    sget-object v2, Lc8/kE;->RET_PARAM_ERR:Lc8/kE;

    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v2

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "failed to enable setWebViewFinishJs"

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public final updatePackageApp(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 321
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KB;->resetConfig()V

    .line 322
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0, v1}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 323
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 324
    return-void
.end method
