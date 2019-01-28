.class public Lc8/Qfb;
.super Ljava/lang/Object;
.source "AccountLinkComponent.java"


# static fields
.field public static final INSTANCE:Lc8/Qfb;

.field private static final OAUTH_API:Ljava/lang/String; = "taobao.oauth.code.create"

.field private static final TAG:Ljava/lang/String; = "login"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lc8/Qfb;

    invoke-direct {v0}, Lc8/Qfb;-><init>()V

    sput-object v0, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public bindConfirmActivity(Lc8/xgb;)V
    .locals 3
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 156
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "bindConfirmActivity"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sput-object p1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    const-class v2, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    :try_start_0
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    if-eqz p1, :cond_1

    .line 164
    sget-object v1, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v1}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {p1, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 166
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 167
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v2, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v2}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    goto :goto_0
.end method

.method public goBindTmpActivity(IILjava/lang/String;Lc8/xgb;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "ibb"    # Ljava/lang/String;
    .param p4, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 143
    const-string/jumbo v1, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleBindEvent code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ibb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sput-object p4, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    const-class v2, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "ibb"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public handleBindEvent(ILjava/lang/String;Lc8/xgb;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "ibb"    # Ljava/lang/String;
    .param p3, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 58
    const-string/jumbo v0, "login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleBindEvent code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ibb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v0}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v0

    iget-object v0, v0, Lc8/Sgb;->autoLoginToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/whb;->INSTANCE:Lc8/whb;

    .line 60
    invoke-virtual {v0}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v0

    iget-object v0, v0, Lc8/Sgb;->user:Lc8/chb;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v0}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v0

    iget-object v0, v0, Lc8/Sgb;->user:Lc8/chb;

    iget-object v0, v0, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "handleBindEvent auto login"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lc8/Hib;

    const/4 v1, 0x0

    new-instance v2, Lc8/Lfb;

    invoke-direct {v2, p0, p1, p3, p2}, Lc8/Lfb;-><init>(Lc8/Qfb;ILc8/xgb;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lc8/Hib;-><init>(Landroid/app/Activity;Lc8/xgb;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Lc8/Hib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lc8/Qfb;->goBindTmpActivity(IILjava/lang/String;Lc8/xgb;)V

    goto :goto_0
.end method

.method public handleTrustLoginEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "ibb"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lc8/agb;

    new-instance v1, Lc8/Ofb;

    invoke-direct {v1, p0, p1}, Lc8/Ofb;-><init>(Lc8/Qfb;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1}, Lc8/agb;-><init>(Landroid/app/Activity;Lc8/xgb;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    .line 133
    invoke-virtual {v0, v1}, Lc8/agb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    const/16 v2, 0x2727

    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    invoke-virtual {v1, v2, p3, v0}, Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V

    goto :goto_0
.end method

.method public loginByIVToken(Ljava/lang/String;Ljava/lang/String;)Lc8/Zgb;
    .locals 12
    .param p1, "ivToken"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 256
    new-instance v6, Lc8/Xgb;

    invoke-direct {v6}, Lc8/Xgb;-><init>()V

    .line 257
    .local v6, "rpcRequest":Lc8/Xgb;
    const-string/jumbo v7, "mtop.taobao.havana.mlogin.bindtokenlogin"

    iput-object v7, v6, Lc8/Xgb;->target:Ljava/lang/String;

    .line 258
    const-string/jumbo v7, "1.0"

    iput-object v7, v6, Lc8/Xgb;->version:Ljava/lang/String;

    .line 260
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .local v3, "param":Lorg/json/JSONObject;
    sget-boolean v7, Lc8/Bgb;->isMini:Z

    if-eqz v7, :cond_0

    .line 262
    const-string/jumbo v7, "app_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lc8/Bgb;->context:Landroid/content/Context;

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

    .line 267
    :goto_0
    const-string/jumbo v7, "appName"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string/jumbo v7, "token"

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
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

    .line 270
    const-string/jumbo v7, "scene"

    invoke-virtual {v3, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v7, "sdkVersion"

    sget-object v8, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v7, "clientIp"

    invoke-static {}, Lc8/Shb;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    const-string/jumbo v7, "alimm_"

    invoke-static {v7}, Lc8/Hgb;->getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 276
    .local v1, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "miid"

    const-string/jumbo v8, "miid"

    invoke-static {v8}, Lc8/Hgb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v7, "ext"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v1    # "extObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "tokenInfo"

    invoke-virtual {v6, v7, v3}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v5, "risk":Lorg/json/JSONObject;
    const-string/jumbo v8, "umidToken"

    const-class v7, Lc8/uhb;

    invoke-static {v7}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/uhb;

    invoke-interface {v7}, Lc8/uhb;->getUmid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string/jumbo v7, "riskControlInfo"

    invoke-virtual {v6, v7, v5}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "ext"

    invoke-static {v2}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v5    # "risk":Lorg/json/JSONObject;
    :goto_2
    sget-object v7, Lc8/Zfb;->rpcService:Lc8/thb;

    const-class v8, Lc8/Vgb;

    invoke-interface {v7, v6, v8}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v4

    .line 298
    .local v4, "response":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    return-object v4

    .line 264
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

    .line 293
    .end local v3    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "param":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public showBind(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "code"    # I
    .param p3, "ibb"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string/jumbo v0, "login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showBind code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ibb="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    sget-object v1, Lcom/ali/auth/third/core/config/AuthOption;->H5ONLY:Lcom/ali/auth/third/core/config/AuthOption;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lc8/Qfb;->showH5Bind(Landroid/app/Activity;ILjava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lc8/Bgb;->authOption:Lcom/ali/auth/third/core/config/AuthOption;

    sget-object v1, Lcom/ali/auth/third/core/config/AuthOption;->H5ONLY:Lcom/ali/auth/third/core/config/AuthOption;

    if-ne v0, v1, :cond_1

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lc8/Qfb;->showH5Bind(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lc8/bib;->getApkSignNumber()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "apkSign":Ljava/lang/String;
    new-instance v0, Lc8/Pfb;

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Pfb;-><init>(Lc8/Qfb;Ljava/lang/String;ILandroid/app/Activity;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v0, v1, v3}, Lc8/Pfb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public showH5Bind(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "code"    # I
    .param p3, "ibb"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    const-string/jumbo v2, "login"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showH5Bind code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ibb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "h5Intent":Landroid/content/Intent;
    const-string/jumbo v2, "url"

    sget-object v3, Lc8/zgb;->bindUrl:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p3, v4, v8

    const/4 v5, 0x2

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget v1, Lc8/nib;->OPEN_H5_LOGIN:I

    .line 242
    .local v1, "requestCode":I
    sput-boolean v7, Lc8/Zfb;->isBind:Z

    .line 243
    const/16 v2, 0x2728

    if-ne p2, v2, :cond_0

    .line 244
    sput-boolean v8, Lc8/Zfb;->isBind:Z

    .line 245
    sget v1, Lc8/nib;->OPEN_H5_LOGIN:I

    .line 247
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 248
    const-string/jumbo v2, "login"

    const-string/jumbo v3, "open H5 bind"

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public unbind(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "h5Intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    sget-object v2, Lc8/zgb;->unbindUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    sget v1, Lc8/nib;->OPEN_H5_UNBIND:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    invoke-static {}, Lc8/Jhb;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "open unbind page"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method
