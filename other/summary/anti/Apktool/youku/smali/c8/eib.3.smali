.class public Lc8/eib;
.super Ljava/lang/Object;
.source "LoginComponent.java"


# static fields
.field public static final INSTANCE:Lc8/eib;

.field private static final OAUTH_API:Ljava/lang/String; = "taobao.oauth.code.create"

.field private static final TAG:Ljava/lang/String; = "login"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lc8/eib;

    invoke-direct {v0}, Lc8/eib;-><init>()V

    sput-object v0, Lc8/eib;->INSTANCE:Lc8/eib;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public static loginByRefreshToken()Lc8/Zgb;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v4, Lc8/Xgb;

    invoke-direct {v4}, Lc8/Xgb;-><init>()V

    .line 436
    .local v4, "request":Lc8/Xgb;
    const-string/jumbo v13, "com.taobao.mtop.mLoginUnitService.autoLogin"

    iput-object v13, v4, Lc8/Xgb;->target:Ljava/lang/String;

    .line 437
    const-string/jumbo v13, "1.0"

    iput-object v13, v4, Lc8/Xgb;->version:Ljava/lang/String;

    .line 439
    :try_start_0
    sget-object v13, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v13}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v13

    iget-object v13, v13, Lc8/Sgb;->user:Lc8/chb;

    iget-object v12, v13, Lc8/chb;->userId:Ljava/lang/String;

    .line 440
    .local v12, "userid":Ljava/lang/String;
    const-string/jumbo v13, "userId"

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 442
    .local v3, "refreshTokenInfo":Lorg/json/JSONObject;
    const-string/jumbo v13, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string/jumbo v13, "token"

    sget-object v14, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v14}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v14

    iget-object v14, v14, Lc8/Sgb;->autoLoginToken:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string/jumbo v13, "sdkVersion"

    sget-object v14, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 446
    .local v8, "t":J
    const-string/jumbo v13, "t"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string/jumbo v13, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    sget-boolean v13, Lc8/Bgb;->isMini:Z

    if-eqz v13, :cond_1

    .line 449
    const-string/jumbo v13, "app_id"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 455
    invoke-static {}, Lc8/Lgb;->getInstance()Lc8/Lgb;

    move-result-object v13

    invoke-virtual {v13, v12}, Lc8/Lgb;->findHistoryAccount(Ljava/lang/String;)Lc8/Rgb;

    move-result-object v0

    .line 456
    .local v0, "account":Lc8/Rgb;
    if-eqz v0, :cond_0

    .line 457
    iget-object v10, v0, Lc8/Rgb;->tokenKey:Ljava/lang/String;

    .line 458
    .local v10, "tokenKey":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 459
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 461
    .local v11, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "appKey"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v13, "havanaId"

    iget-object v14, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-static {v11, v13, v14}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string/jumbo v13, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string/jumbo v13, "appVersion"

    invoke-static {}, Lc8/Shb;->getAndroidAppVersion()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v13, "sdkVersion"

    sget-object v14, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-static {v11, v13, v14}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-class v13, Lc8/uhb;

    invoke-static {v13}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/uhb;

    invoke-interface {v13, v10, v11}, Lc8/uhb;->signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, "sign":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 469
    const-string/jumbo v13, "deviceTokenSign"

    invoke-virtual {v3, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v13, "deviceTokenKey"

    invoke-virtual {v3, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v13, "hid"

    iget-object v14, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 478
    .end local v0    # "account":Lc8/Rgb;
    .end local v7    # "sign":Ljava/lang/String;
    .end local v10    # "tokenKey":Ljava/lang/String;
    .end local v11    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v13, "alimm_"

    invoke-static {v13}, Lc8/Hgb;->getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 479
    .local v2, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "miid"

    const-string/jumbo v14, "miid"

    invoke-static {v14}, Lc8/Hgb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string/jumbo v13, "ext"

    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    .end local v2    # "extObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    const-string/jumbo v13, "tokenInfo"

    invoke-virtual {v4, v13, v3}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .local v6, "risk":Lorg/json/JSONObject;
    const-string/jumbo v14, "umidToken"

    const-class v13, Lc8/uhb;

    invoke-static {v13}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/uhb;

    invoke-interface {v13}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string/jumbo v13, "riskControlInfo"

    invoke-virtual {v4, v13, v6}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    const-string/jumbo v13, "ext"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v13, v14}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 498
    .end local v3    # "refreshTokenInfo":Lorg/json/JSONObject;
    .end local v6    # "risk":Lorg/json/JSONObject;
    .end local v8    # "t":J
    .end local v12    # "userid":Ljava/lang/String;
    :goto_2
    const-class v13, Lc8/thb;

    invoke-static {v13}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/thb;

    const-class v14, Lc8/Vgb;

    invoke-interface {v13, v4, v14}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v5

    .line 500
    .local v5, "responseD":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    return-object v5

    .line 451
    .end local v5    # "responseD":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .restart local v3    # "refreshTokenInfo":Lorg/json/JSONObject;
    .restart local v8    # "t":J
    .restart local v12    # "userid":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string/jumbo v14, "utdid"

    const-class v13, Lc8/thb;

    invoke-static {v13}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/thb;

    invoke-interface {v13}, Lc8/thb;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 493
    .end local v3    # "refreshTokenInfo":Lorg/json/JSONObject;
    .end local v8    # "t":J
    .end local v12    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 481
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "refreshTokenInfo":Lorg/json/JSONObject;
    .restart local v8    # "t":J
    .restart local v12    # "userid":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 495
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "refreshTokenInfo":Lorg/json/JSONObject;
    .end local v8    # "t":J
    .end local v12    # "userid":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 496
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static logout()Lc8/Zgb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Zgb",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v2, Lc8/Xgb;

    invoke-direct {v2}, Lc8/Xgb;-><init>()V

    .line 511
    .local v2, "request":Lc8/Xgb;
    const-string/jumbo v4, "mtop.taobao.havana.mlogin.logout"

    iput-object v4, v2, Lc8/Xgb;->target:Ljava/lang/String;

    .line 512
    const-string/jumbo v4, "1.0"

    iput-object v4, v2, Lc8/Xgb;->version:Ljava/lang/String;

    .line 514
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 515
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "appKey"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v4, "sid"

    sget-object v5, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v5}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v5

    iget-object v5, v5, Lc8/Sgb;->sid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v4, "ip"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v4, "userId"

    sget-object v5, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v5}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v5

    iget-object v5, v5, Lc8/Sgb;->user:Lc8/chb;

    iget-object v5, v5, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    const-string/jumbo v4, "request"

    invoke-virtual {v2, v4, v1}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-class v4, Lc8/thb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/thb;

    const-class v5, Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v3

    .line 525
    .local v3, "responseLogout":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    return-object v3

    .line 520
    .end local v3    # "responseLogout":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private params2Str(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "params":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v3, "paramsSb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 271
    .local v2, "paramsEntry":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    .local v1, "paramEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "paramEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private urlParamsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "configJson"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    const-string/jumbo v4, ""

    .line 584
    :goto_0
    return-object v4

    .line 568
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .local v3, "retStr":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    .local v2, "object":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 572
    .local v0, "itt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "itt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 584
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public generateTopAppLinkToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "apkSign"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 215
    const-class v7, Lc8/vhb;

    invoke-static {v7}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/vhb;

    const-string/jumbo v9, "GENERATE_TOPAPPLINK_TOKEN"

    invoke-interface {v7, v9, v8}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 217
    .local v6, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "appKey"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v7, "apkSign"

    invoke-virtual {v6, v7, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v7, "apiName"

    const-string/jumbo v9, "taobao.oauth.code.create"

    invoke-virtual {v6, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0, v6}, Lc8/eib;->params2Str(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "beSigned":Ljava/lang/String;
    new-instance v5, Lc8/Xgb;

    invoke-direct {v5}, Lc8/Xgb;-><init>()V

    .line 222
    .local v5, "rpcRequest":Lc8/Xgb;
    const-string/jumbo v7, "com.alibaba.havana.login.applink.generateTopAppLinkToken"

    iput-object v7, v5, Lc8/Xgb;->target:Ljava/lang/String;

    .line 223
    const-string/jumbo v7, "1.0"

    iput-object v7, v5, Lc8/Xgb;->version:Ljava/lang/String;

    .line 224
    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v1, "baseInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "appName"

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v7, "t"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v7, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    sget-boolean v7, Lc8/Bgb;->isMini:Z

    if-eqz v7, :cond_0

    .line 232
    const-string/jumbo v7, "app_id"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_0
    const-string/jumbo v7, "sdkVersion"

    sget-object v9, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string/jumbo v7, "baseInfo"

    invoke-virtual {v5, v7, v1}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "baseInfo":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v7, "content"

    invoke-virtual {v5, v7, v2}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :try_start_1
    const-class v7, Lc8/thb;

    invoke-static {v7}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/thb;

    const-class v9, Ljava/lang/String;

    invoke-interface {v7, v5, v9}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v4

    .line 246
    .local v4, "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 247
    iget-object v7, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Lcom/ali/auth/third/core/rpc/protocol/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v4    # "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :goto_1
    return-object v7

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :cond_1
    move-object v7, v8

    .line 249
    goto :goto_1

    .line 250
    .end local v4    # "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 251
    .local v3, "e":Lcom/ali/auth/third/core/rpc/protocol/RpcException;
    invoke-virtual {v3}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;->printStackTrace()V

    move-object v7, v8

    .line 252
    goto :goto_1
.end method

.method public goQrCodeLogin(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "login"

    const-string/jumbo v6, "goQrCodeLogin start"

    invoke-static {v5, v6}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-class v0, Lcom/ali/auth/third/ui/QrLoginActivity;

    .line 534
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    const-string/jumbo v5, "userDefActivity"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, ""

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 536
    :try_start_0
    const-string/jumbo v5, "userDefActivity"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lc8/eib;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Lc8/zgb;->qrCodeLoginUrl:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "qrCodeUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .local v3, "qrCodeUrlSB":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    const-string/jumbo v5, "domain"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const-string/jumbo v5, ""

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 546
    const-string/jumbo v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "domain"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    :cond_1
    if-eqz p2, :cond_3

    const-string/jumbo v5, "config"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ""

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 549
    const-string/jumbo v5, "config"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/eib;->urlParamsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "urlParams":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v4, ""

    .end local v4    # "urlParams":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_3
    const-string/jumbo v5, "qrCodeLoginUrl"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v5, "passwordLoginUrl"

    sget-object v6, Lc8/zgb;->LOGIN_HOST:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    sget v5, Lc8/nib;->OPEN_QR_LOGIN:I

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 555
    return-void

    .line 534
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "qrCodeUrl":Ljava/lang/String;
    .end local v3    # "qrCodeUrlSB":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v5, "userDefActivity"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 545
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "qrCodeUrl":Ljava/lang/String;
    .restart local v3    # "qrCodeUrlSB":Ljava/lang/StringBuilder;
    :cond_5
    const-string/jumbo v5, "domain"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    .line 548
    :cond_6
    const-string/jumbo v5, "config"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "qrCodeUrl":Ljava/lang/String;
    .end local v3    # "qrCodeUrlSB":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public loginByCode(Ljava/lang/String;)Lc8/Zgb;
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 287
    :try_start_0
    const-class v6, Lc8/vhb;

    invoke-static {v6}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vhb;

    const-string/jumbo v7, "TOP_TOKEN_LOGIN"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 288
    new-instance v5, Lc8/Xgb;

    invoke-direct {v5}, Lc8/Xgb;-><init>()V

    .line 289
    .local v5, "rpcRequest":Lc8/Xgb;
    const-string/jumbo v6, "com.taobao.mtop.mloginService.topTokenLogin"

    iput-object v6, v5, Lc8/Xgb;->target:Ljava/lang/String;

    .line 290
    const-string/jumbo v6, "1.0"

    iput-object v6, v5, Lc8/Xgb;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v2, "param":Lorg/json/JSONObject;
    sget-boolean v6, Lc8/Bgb;->isMini:Z

    if-eqz v6, :cond_0

    .line 294
    const-string/jumbo v6, "app_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    :goto_0
    const-string/jumbo v6, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string/jumbo v6, "token"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v6, "t"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string/jumbo v6, "sdkVersion"

    sget-object v7, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v6, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :try_start_2
    const-string/jumbo v6, "alimm_"

    invoke-static {v6}, Lc8/Hgb;->getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 307
    .local v1, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "miid"

    const-string/jumbo v7, "miid"

    invoke-static {v7}, Lc8/Hgb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string/jumbo v6, "ext"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    .end local v1    # "extObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "tokenInfo"

    invoke-virtual {v5, v6, v2}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .local v4, "risk":Lorg/json/JSONObject;
    const-string/jumbo v7, "umidToken"

    const-class v6, Lc8/uhb;

    invoke-static {v6}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/uhb;

    invoke-interface {v6}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string/jumbo v6, "riskControlInfo"

    invoke-virtual {v5, v6, v4}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const-string/jumbo v6, "ext"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v7}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 322
    .end local v2    # "param":Lorg/json/JSONObject;
    .end local v4    # "risk":Lorg/json/JSONObject;
    :goto_2
    :try_start_4
    const-class v6, Lc8/thb;

    invoke-static {v6}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/thb;

    const-class v7, Lc8/Vgb;

    invoke-interface {v6, v5, v7}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    .line 326
    .end local v5    # "rpcRequest":Lc8/Xgb;
    :goto_3
    return-object v3

    .line 296
    .restart local v2    # "param":Lorg/json/JSONObject;
    .restart local v5    # "rpcRequest":Lc8/Xgb;
    :cond_0
    :try_start_5
    const-string/jumbo v7, "utdid"

    const-class v6, Lc8/thb;

    invoke-static {v6}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/thb;

    invoke-interface {v6}, Lc8/thb;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 318
    .end local v2    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 324
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "rpcRequest":Lc8/Xgb;
    :catch_1
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "param":Lorg/json/JSONObject;
    .restart local v5    # "rpcRequest":Lc8/Xgb;
    :catch_2
    move-exception v0

    .line 310
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public loginByIVToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/Zgb;
    .locals 12
    .param p1, "ivToken"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "aliusersdk_string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v6, Lc8/Xgb;

    invoke-direct {v6}, Lc8/Xgb;-><init>()V

    .line 381
    .local v6, "rpcRequest":Lc8/Xgb;
    const-string/jumbo v7, "com.taobao.mtop.mloginService.mloginTokenLogin"

    iput-object v7, v6, Lc8/Xgb;->target:Ljava/lang/String;

    .line 382
    const-string/jumbo v7, "1.0"

    iput-object v7, v6, Lc8/Xgb;->version:Ljava/lang/String;

    .line 384
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v3, "param":Lorg/json/JSONObject;
    sget-boolean v7, Lc8/Bgb;->isMini:Z

    if-eqz v7, :cond_0

    .line 386
    const-string/jumbo v7, "app_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    :goto_0
    const-string/jumbo v7, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string/jumbo v7, "token"

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string/jumbo v7, "t"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string/jumbo v7, "scene"

    invoke-virtual {v3, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string/jumbo v7, "sdkVersion"

    sget-object v8, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v7, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :try_start_1
    const-string/jumbo v7, "alimm_"

    invoke-static {v7}, Lc8/Hgb;->getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 401
    .local v1, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "miid"

    const-string/jumbo v8, "miid"

    invoke-static {v8}, Lc8/Hgb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string/jumbo v7, "aliusersdk_h5querystring"

    invoke-virtual {v1, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string/jumbo v7, "ext"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    .end local v1    # "extObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "tokenInfo"

    invoke-virtual {v6, v7, v3}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 412
    .local v5, "risk":Lorg/json/JSONObject;
    const-string/jumbo v8, "umidToken"

    const-class v7, Lc8/uhb;

    invoke-static {v7}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/uhb;

    invoke-interface {v7}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string/jumbo v7, "riskControlInfo"

    invoke-virtual {v6, v7, v5}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "ext"

    invoke-static {v2}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v5    # "risk":Lorg/json/JSONObject;
    :goto_2
    sget-object v7, Lc8/rib;->rpcService:Lc8/thb;

    const-class v8, Lc8/Vgb;

    invoke-interface {v7, v6, v8}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v4

    .line 424
    .local v4, "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    return-object v4

    .line 388
    .end local v4    # "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .restart local v3    # "param":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string/jumbo v8, "utdid"

    const-class v7, Lc8/thb;

    invoke-static {v7}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/thb;

    invoke-interface {v7}, Lc8/thb;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 419
    .end local v3    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 404
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "param":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public loginByQRCode(Ljava/lang/String;J)Lc8/Zgb;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 337
    :try_start_0
    const-class v5, Lc8/vhb;

    invoke-static {v5}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vhb;

    const-string/jumbo v6, "TOP_TOKEN_LOGIN"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    new-instance v4, Lc8/Xgb;

    invoke-direct {v4}, Lc8/Xgb;-><init>()V

    .line 339
    .local v4, "rpcRequest":Lc8/Xgb;
    const-string/jumbo v5, "mtop.taobao.havana.mlogin.qrcodelogin"

    iput-object v5, v4, Lc8/Xgb;->target:Ljava/lang/String;

    .line 340
    const-string/jumbo v5, "1.0"

    iput-object v5, v4, Lc8/Xgb;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .local v1, "param":Lorg/json/JSONObject;
    sget-boolean v5, Lc8/Bgb;->isMini:Z

    if-eqz v5, :cond_0

    .line 344
    const-string/jumbo v5, "app_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    :goto_0
    const-string/jumbo v5, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string/jumbo v5, "token"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string/jumbo v5, "t"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string/jumbo v5, "sdkVersion"

    sget-object v6, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string/jumbo v5, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string/jumbo v5, "tokenInfo"

    invoke-virtual {v4, v5, v1}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 358
    .local v3, "risk":Lorg/json/JSONObject;
    const-string/jumbo v6, "umidToken"

    const-class v5, Lc8/uhb;

    invoke-static {v5}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/uhb;

    invoke-interface {v5}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string/jumbo v5, "riskControlInfo"

    invoke-virtual {v4, v5, v3}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string/jumbo v5, "ext"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v6}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    .end local v1    # "param":Lorg/json/JSONObject;
    .end local v3    # "risk":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    const-class v5, Lc8/thb;

    invoke-static {v5}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/thb;

    const-class v6, Lc8/Vgb;

    invoke-interface {v5, v4, v6}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 369
    .end local v4    # "rpcRequest":Lc8/Xgb;
    :goto_2
    return-object v2

    .line 346
    .restart local v1    # "param":Lorg/json/JSONObject;
    .restart local v4    # "rpcRequest":Lc8/Xgb;
    :cond_0
    :try_start_3
    const-string/jumbo v6, "utdid"

    const-class v5, Lc8/thb;

    invoke-static {v5}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/thb;

    invoke-interface {v5}, Lc8/thb;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 361
    .end local v1    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 367
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "rpcRequest":Lc8/Xgb;
    :catch_1
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public loginByUserName(Ljava/lang/String;)Lc8/Zgb;
    .locals 24
    .param p1, "jsRequestJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v13, Lc8/Xgb;

    invoke-direct {v13}, Lc8/Xgb;-><init>()V

    .line 66
    .local v13, "rpcRequest":Lc8/Xgb;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v9, "jsbridge":Lorg/json/JSONObject;
    const-string/jumbo v21, "loginid"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 69
    const-string/jumbo v21, "loginId"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 71
    :cond_0
    const-string/jumbo v21, "com.taobao.mtop.mloginService.login"

    move-object/from16 v0, v21

    iput-object v0, v13, Lc8/Xgb;->target:Ljava/lang/String;

    .line 72
    const-string/jumbo v21, "1.0"

    move-object/from16 v0, v21

    iput-object v0, v13, Lc8/Xgb;->version:Ljava/lang/String;

    .line 73
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v8, "infoJsonObject":Lorg/json/JSONObject;
    sget-boolean v21, Lc8/Bgb;->isMini:Z

    if-eqz v21, :cond_2

    .line 75
    const-string/jumbo v21, "app_id"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lc8/bib;->getApkPublicKeyDigest()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :goto_0
    const-string/jumbo v21, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v21, "loginId"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v21, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 84
    .local v16, "t":J
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 85
    invoke-static {}, Lc8/Lgb;->getInstance()Lc8/Lgb;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lc8/Lgb;->matchHistoryAccount(Ljava/lang/String;)Lc8/Rgb;

    move-result-object v4

    .line 86
    .local v4, "account":Lc8/Rgb;
    if-eqz v4, :cond_1

    .line 87
    iget-object v0, v4, Lc8/Rgb;->tokenKey:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 88
    .local v18, "tokenKey":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 89
    new-instance v19, Ljava/util/TreeMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    .line 91
    .local v19, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v21, "appKey"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v21, "havanaId"

    iget-object v0, v4, Lc8/Rgb;->userId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v21, "timestamp"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v21, "appVersion"

    invoke-static {}, Lc8/Shb;->getAndroidAppVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v21, "sdkVersion"

    sget-object v22, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lc8/eib;->addKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-class v21, Lc8/uhb;

    invoke-static/range {v21 .. v21}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/uhb;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lc8/uhb;->signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "sign":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 99
    const-string/jumbo v21, "deviceTokenSign"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v21, "deviceTokenKey"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v21, "hid"

    iget-object v0, v4, Lc8/Rgb;->userId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .end local v4    # "account":Lc8/Rgb;
    .end local v15    # "sign":Ljava/lang/String;
    .end local v18    # "tokenKey":Ljava/lang/String;
    .end local v19    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v21, "password"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "password":Ljava/lang/String;
    invoke-static {}, Lc8/Whb;->getRsaPubkey()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, "rsaKey":Ljava/lang/String;
    invoke-static {v11, v14}, Lc8/Zhb;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 109
    const-string/jumbo v21, "password"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v21, "pwdEncrypted"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v21, "appVersion"

    invoke-static {}, Lc8/Shb;->getAndroidAppVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v21, "sdkVersion"

    sget-object v22, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v21, "t"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v21, "ccId"

    const-string/jumbo v22, "checkCodeId"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v21, "checkCode"

    const-string/jumbo v22, "checkCode"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    const-string/jumbo v21, "alimm_"

    invoke-static/range {v21 .. v21}, Lc8/Hgb;->getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 119
    .local v7, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v21, "miid"

    const-string/jumbo v22, "miid"

    invoke-static/range {v22 .. v22}, Lc8/Hgb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v21, "ext"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v7    # "extObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    const-string/jumbo v21, "loginInfo"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v8}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v12, "risk":Lorg/json/JSONObject;
    sget-boolean v21, Lc8/Bgb;->isMini:Z

    if-eqz v21, :cond_3

    .line 132
    const-string/jumbo v21, "umidtoken"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 133
    .local v20, "umidToken":Ljava/lang/String;
    const-string/jumbo v21, "umidToken"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-class v21, Lc8/uhb;

    invoke-static/range {v21 .. v21}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/uhb;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lc8/uhb;->setUmid(Ljava/lang/String;)V

    .line 139
    .end local v20    # "umidToken":Ljava/lang/String;
    :goto_2
    const-string/jumbo v21, "ua"

    const-string/jumbo v22, "ua"

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v21, "riskControlInfo"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v12}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string/jumbo v21, "ext"

    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .end local v8    # "infoJsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsbridge":Lorg/json/JSONObject;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "risk":Lorg/json/JSONObject;
    .end local v14    # "rsaKey":Ljava/lang/String;
    .end local v16    # "t":J
    :goto_3
    const-class v21, Lc8/thb;

    invoke-static/range {v21 .. v21}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/thb;

    const-class v22, Lc8/Vgb;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v5

    .line 148
    .local v5, "data":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    return-object v5

    .line 77
    .end local v5    # "data":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .restart local v8    # "infoJsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsbridge":Lorg/json/JSONObject;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string/jumbo v22, "utdid"

    const-class v21, Lc8/thb;

    invoke-static/range {v21 .. v21}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/thb;

    invoke-interface/range {v21 .. v21}, Lc8/thb;->getDeviceId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 143
    .end local v8    # "infoJsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsbridge":Lorg/json/JSONObject;
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 122
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v8    # "infoJsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsbridge":Lorg/json/JSONObject;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v14    # "rsaKey":Ljava/lang/String;
    .restart local v16    # "t":J
    :catch_1
    move-exception v6

    .line 123
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 136
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "risk":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v22, "umidToken"

    const-class v21, Lc8/uhb;

    invoke-static/range {v21 .. v21}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc8/uhb;

    invoke-interface/range {v21 .. v21}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public showH5Login(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "open H5 login"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "h5Intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    sget-object v2, Lc8/zgb;->LOGIN_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com_taobao_tae_sdk_authorize_title"

    invoke-static {v2, v3}, Lc8/Yhb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    sget v1, Lc8/nib;->OPEN_H5_LOGIN:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method public showLogin(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "showLogin"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    sget-object v2, Lcom/ali/auth/third/core/config/AuthOption;->H5ONLY:Lcom/ali/auth/third/core/config/AuthOption;

    if-ne v1, v2, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    .line 212
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v1, Lc8/Bgb;->authOption:Lcom/ali/auth/third/core/config/AuthOption;

    sget-object v2, Lcom/ali/auth/third/core/config/AuthOption;->H5ONLY:Lcom/ali/auth/third/core/config/AuthOption;

    if-ne v1, v2, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lc8/bib;->getApkSignNumber()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "apkSign":Ljava/lang/String;
    new-instance v1, Lc8/dib;

    invoke-direct {v1, p0, v0, p1}, Lc8/dib;-><init>(Lc8/eib;Ljava/lang/String;Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 211
    invoke-virtual {v1, v2, v3}, Lc8/dib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
