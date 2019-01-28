.class public Lc8/whb;
.super Ljava/lang/Object;
.source "CredentialManager.java"

# interfaces
.implements Lc8/rhb;


# static fields
.field public static final INSTANCE:Lc8/whb;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile internalSession:Lc8/Sgb;

.field public internalSessionStoreKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lc8/whb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/whb;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lc8/whb;

    invoke-direct {v0}, Lc8/whb;-><init>()V

    sput-object v0, Lc8/whb;->INSTANCE:Lc8/whb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "internal_session"

    iput-object v0, p0, Lc8/whb;->internalSessionStoreKey:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lc8/whb;->preInit()V

    .line 43
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

.method private getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "paramTypeNames"    # [Ljava/lang/String;
    .param p3, "paramValues"    # [Ljava/lang/Object;

    .prologue
    .line 293
    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/Xhb;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e2":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preInit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 46
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    if-nez v3, :cond_0

    .line 47
    sget-object v3, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    invoke-direct {p0, v3}, Lc8/whb;->registerStorage(Lc8/ehb;)V

    .line 49
    :cond_0
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    const-string/jumbo v4, "loginEnvironmentIndex"

    invoke-interface {v3, v4, v5}, Lc8/uhb;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "lastEnvIndex":Ljava/lang/String;
    invoke-static {}, Lc8/Bgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/auth/third/core/config/Environment;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "currentEnvIndex":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    const-string/jumbo v4, "loginEnvironmentIndex"

    invoke-interface {v3, v4, v0, v5}, Lc8/uhb;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    iget-object v4, p0, Lc8/whb;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lc8/uhb;->removeValue(Ljava/lang/String;Z)V

    .line 55
    new-instance v3, Lc8/Sgb;

    invoke-direct {v3}, Lc8/Sgb;-><init>()V

    iput-object v3, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    .line 56
    iget-object v3, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    new-instance v4, Lc8/chb;

    invoke-direct {v4}, Lc8/chb;-><init>()V

    iput-object v4, v3, Lc8/Sgb;->user:Lc8/chb;

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    iget-object v4, p0, Lc8/whb;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lc8/uhb;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "internalSessionJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    sget-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    iget-object v4, p0, Lc8/whb;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lc8/uhb;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    invoke-virtual {p0, v1}, Lc8/whb;->createInternalSession(Ljava/lang/String;)Lc8/Sgb;

    move-result-object v3

    iput-object v3, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    goto :goto_0

    .line 68
    :cond_3
    new-instance v3, Lc8/Sgb;

    invoke-direct {v3}, Lc8/Sgb;-><init>()V

    iput-object v3, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    .line 69
    iget-object v3, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    new-instance v4, Lc8/chb;

    invoke-direct {v4}, Lc8/chb;-><init>()V

    iput-object v4, v3, Lc8/Sgb;->user:Lc8/chb;

    goto :goto_0
.end method

.method private refreshInternalSession(Lc8/Sgb;)V
    .locals 4
    .param p1, "internalSession"    # Lc8/Sgb;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    .line 132
    sget-object v0, Lc8/Bgb;->storageService:Lc8/uhb;

    iget-object v1, p0, Lc8/whb;->internalSessionStoreKey:Ljava/lang/String;

    invoke-static {p1}, Lc8/bib;->toInternalSessionJSON(Lc8/Sgb;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lc8/uhb;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method private registerStorage(Lc8/ehb;)V
    .locals 6
    .param p1, "serviceRegistry"    # Lc8/ehb;

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "isSecurityGuardDetected":Z
    :try_start_0
    const-string/jumbo v3, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    invoke-static {v3}, Lc8/whb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 273
    const/4 v2, 0x1

    .line 274
    const/4 v3, 0x0

    sput-boolean v3, Lc8/Bgb;->isMini:Z

    .line 275
    sget-object v3, Lc8/Bgb;->SDK_VERSION_STD:Ljava/lang/String;

    sput-object v3, Lc8/Bgb;->sdkVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    if-eqz v2, :cond_0

    .line 280
    :try_start_1
    const-string/jumbo v3, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lc8/whb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    .local v1, "instance":Ljava/lang/Object;
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lc8/uhb;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-interface {p1, v3, v1, v4}, Lc8/ehb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 285
    const-class v3, Lc8/uhb;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uhb;

    sput-object v3, Lc8/Bgb;->storageService:Lc8/uhb;

    .line 289
    .end local v1    # "instance":Ljava/lang/Object;
    :goto_2
    return-void

    .line 282
    :cond_0
    const-string/jumbo v3, "com.ali.auth.third.core.storage.CommonStorageServiceImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lc8/whb;->getServiceInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "instance":Ljava/lang/Object;
    goto :goto_1

    .line 286
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e2":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e2":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public adjustSessionExpireTime(JJ)J
    .locals 9
    .param p1, "expire"    # J
    .param p3, "serverTime"    # J

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 231
    .local v2, "currentTime":J
    move-wide v0, p1

    .line 232
    .local v0, "adjustTime":J
    cmp-long v4, v2, p3

    if-lez v4, :cond_0

    .line 234
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 235
    sub-long v4, v2, p3

    add-long v0, p1, v4

    .line 241
    :cond_0
    :goto_0
    return-wide v0

    .line 238
    :cond_1
    const-wide/32 v4, 0x15180

    add-long v0, v2, v4

    goto :goto_0
.end method

.method public createInternalSession(Ljava/lang/String;)Lc8/Sgb;
    .locals 8
    .param p1, "sessionJson"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v2, Lc8/Sgb;

    invoke-direct {v2}, Lc8/Sgb;-><init>()V

    .line 92
    .local v2, "localInternalSession":Lc8/Sgb;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "sid"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->sid:Ljava/lang/String;

    .line 94
    const-string/jumbo v5, "expireIn"

    invoke-static {v1, v5}, Lc8/Vhb;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v2, Lc8/Sgb;->expireIn:J

    .line 95
    new-instance v3, Lc8/chb;

    invoke-direct {v3}, Lc8/chb;-><init>()V

    .line 96
    .local v3, "user":Lc8/chb;
    const-string/jumbo v5, "user"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 97
    .local v4, "userObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 99
    const-string/jumbo v5, "avatarUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->avatarUrl:Ljava/lang/String;

    .line 100
    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->userId:Ljava/lang/String;

    .line 101
    const-string/jumbo v5, "nick"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->nick:Ljava/lang/String;

    .line 102
    const-string/jumbo v5, "openId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->openId:Ljava/lang/String;

    .line 103
    const-string/jumbo v5, "openSid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->openSid:Ljava/lang/String;

    .line 104
    const-string/jumbo v5, "deviceTokenKey"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->deviceTokenKey:Ljava/lang/String;

    .line 105
    const-string/jumbo v5, "deviceTokenSalt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lc8/chb;->deviceTokenSalt:Ljava/lang/String;

    .line 107
    iget-object v5, v2, Lc8/Sgb;->sid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-class v5, Lc8/thb;

    invoke-static {v5}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/thb;

    iget-object v6, v2, Lc8/Sgb;->sid:Ljava/lang/String;

    iget-object v7, v3, Lc8/chb;->userId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lc8/thb;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iput-object v3, v2, Lc8/Sgb;->user:Lc8/chb;

    .line 112
    const-string/jumbo v5, "loginTime"

    invoke-static {v1, v5}, Lc8/Vhb;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v2, Lc8/Sgb;->loginTime:J

    .line 113
    const-string/jumbo v5, "mobile"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->mobile:Ljava/lang/String;

    .line 114
    const-string/jumbo v5, "loginId"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->loginId:Ljava/lang/String;

    .line 115
    const-string/jumbo v5, "autoLoginToken"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->autoLoginToken:Ljava/lang/String;

    .line 116
    const-string/jumbo v5, "topAccessToken"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->topAccessToken:Ljava/lang/String;

    .line 117
    const-string/jumbo v5, "topExpireTime"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->topExpireTime:Ljava/lang/String;

    .line 118
    const-string/jumbo v5, "topAuthCode"

    invoke-static {v1, v5}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->topAuthCode:Ljava/lang/String;

    .line 119
    const-string/jumbo v5, "otherInfo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v2, Lc8/Sgb;->otherInfo:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "user":Lc8/chb;
    .end local v4    # "userObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lc8/whb;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInternalSession()Lc8/Sgb;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    return-object v0
.end method

.method public getSession()Lc8/ahb;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lc8/ahb;

    invoke-direct {v0}, Lc8/ahb;-><init>()V

    .line 247
    .local v0, "session":Lc8/ahb;
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-nez v1, :cond_5

    :cond_0
    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, v0, Lc8/ahb;->userid:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-nez v1, :cond_6

    :cond_1
    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, v0, Lc8/ahb;->nick:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-nez v1, :cond_7

    :cond_2
    const-string/jumbo v1, ""

    :goto_2
    iput-object v1, v0, Lc8/ahb;->avatarUrl:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-nez v1, :cond_8

    :cond_3
    const-string/jumbo v1, ""

    :goto_3
    iput-object v1, v0, Lc8/ahb;->openId:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-nez v1, :cond_9

    :cond_4
    const-string/jumbo v1, ""

    :goto_4
    iput-object v1, v0, Lc8/ahb;->openSid:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-nez v1, :cond_a

    const-string/jumbo v1, ""

    :goto_5
    iput-object v1, v0, Lc8/ahb;->topAccessToken:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-nez v1, :cond_b

    const-string/jumbo v1, ""

    :goto_6
    iput-object v1, v0, Lc8/ahb;->topAuthCode:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-nez v1, :cond_c

    const-string/jumbo v1, ""

    :goto_7
    iput-object v1, v0, Lc8/ahb;->topExpireTime:Ljava/lang/String;

    .line 255
    return-object v0

    .line 247
    :cond_5
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->userId:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_6
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->nick:Ljava/lang/String;

    goto :goto_1

    .line 249
    :cond_7
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->avatarUrl:Ljava/lang/String;

    goto :goto_2

    .line 250
    :cond_8
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->openId:Ljava/lang/String;

    goto :goto_3

    .line 251
    :cond_9
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->openSid:Ljava/lang/String;

    goto :goto_4

    .line 252
    :cond_a
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->topAccessToken:Ljava/lang/String;

    goto :goto_5

    .line 253
    :cond_b
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->topAuthCode:Ljava/lang/String;

    goto :goto_6

    .line 254
    :cond_c
    iget-object v1, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-object v1, v1, Lc8/Sgb;->topExpireTime:Ljava/lang/String;

    goto :goto_7
.end method

.method public isSessionValid()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    sget-object v0, Lc8/whb;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "func isSessionValid"

    invoke-static {v0, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lc8/whb;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSessionValid()  internalSession is null"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-wide v4, v0, Lc8/Sgb;->loginTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-wide v4, v0, Lc8/Sgb;->expireIn:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 81
    :cond_2
    sget-object v0, Lc8/whb;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSessionValid()  loginTime is 0 or expireIn is 0"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    sget-object v3, Lc8/whb;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSessionValid()  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-wide v8, v0, Lc8/Sgb;->expireIn:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    iget-object v0, p0, Lc8/whb;->internalSession:Lc8/Sgb;

    iget-wide v6, v0, Lc8/Sgb;->expireIn:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 84
    goto :goto_1
.end method

.method public logout()Lc8/Wgb;
    .locals 2

    .prologue
    .line 260
    sget-object v1, Lc8/Dgb;->INSTANCE:Lc8/Dgb;

    invoke-virtual {v1}, Lc8/Dgb;->clearCookies()V

    .line 261
    new-instance v0, Lc8/Sgb;

    invoke-direct {v0}, Lc8/Sgb;-><init>()V

    .line 262
    .local v0, "session":Lc8/Sgb;
    new-instance v1, Lc8/chb;

    invoke-direct {v1}, Lc8/chb;-><init>()V

    iput-object v1, v0, Lc8/Sgb;->user:Lc8/chb;

    .line 263
    invoke-direct {p0, v0}, Lc8/whb;->refreshInternalSession(Lc8/Sgb;)V

    .line 265
    sget-object v1, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    return-object v1
.end method

.method public refreshWhenLogin(Lc8/Vgb;)V
    .locals 17
    .param p1, "loginReturnData"    # Lc8/Vgb;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v12, Lc8/Sgb;

    invoke-direct {v12}, Lc8/Sgb;-><init>()V

    .line 145
    .local v12, "newInternalSession":Lc8/Sgb;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->data:Ljava/lang/String;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v8, "dataObject":Lorg/json/JSONObject;
    const-class v3, Lc8/Ugb;

    invoke-static {v8, v3}, Lc8/Vhb;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Ugb;

    .line 148
    .local v11, "loginDataModel":Lc8/Ugb;
    iget-object v3, v11, Lc8/Ugb;->externalCookies:[Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->externalCookies:[Ljava/lang/String;

    .line 149
    new-instance v16, Lc8/chb;

    invoke-direct/range {v16 .. v16}, Lc8/chb;-><init>()V

    .line 150
    .local v16, "user":Lc8/chb;
    iget-object v3, v11, Lc8/Ugb;->userId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->userId:Ljava/lang/String;

    .line 151
    iget-object v3, v11, Lc8/Ugb;->nick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 153
    :try_start_1
    iget-object v3, v11, Lc8/Ugb;->nick:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->nick:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, v11, Lc8/Ugb;->openId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->openId:Ljava/lang/String;

    .line 159
    iget-object v3, v11, Lc8/Ugb;->openSid:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->openSid:Ljava/lang/String;

    .line 160
    iget-object v3, v11, Lc8/Ugb;->headPicLink:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->avatarUrl:Ljava/lang/String;

    .line 161
    iget-object v3, v11, Lc8/Ugb;->email:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->email:Ljava/lang/String;

    .line 162
    iget-object v3, v11, Lc8/Ugb;->loginServiceExt:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, v11, Lc8/Ugb;->loginServiceExt:Ljava/util/Map;

    const-string/jumbo v4, "1688ext"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_3

    .line 164
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    iget-object v3, v11, Lc8/Ugb;->loginServiceExt:Ljava/util/Map;

    const-string/jumbo v4, "1688ext"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v13, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v13, "obj":Lorg/json/JSONObject;
    if-eqz v13, :cond_3

    .line 166
    const-string/jumbo v3, "loginId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->cbuLoginId:Ljava/lang/String;

    .line 167
    const-string/jumbo v3, "memberId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->memberId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 173
    .end local v13    # "obj":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->deviceToken:Lc8/Qgb;

    if-eqz v3, :cond_4

    .line 174
    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->deviceToken:Lc8/Qgb;

    iget-object v3, v3, Lc8/Qgb;->salt:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->deviceTokenSalt:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->deviceToken:Lc8/Qgb;

    iget-object v3, v3, Lc8/Qgb;->key:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lc8/chb;->deviceTokenKey:Ljava/lang/String;

    .line 177
    :cond_4
    new-instance v2, Lc8/Rgb;

    iget-object v3, v11, Lc8/Ugb;->userId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/chb;->deviceTokenKey:Ljava/lang/String;

    iget-object v5, v11, Lc8/Ugb;->nick:Ljava/lang/String;

    iget-object v6, v11, Lc8/Ugb;->phone:Ljava/lang/String;

    iget-object v7, v11, Lc8/Ugb;->email:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lc8/Rgb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v2, "historyAccount":Lc8/Rgb;
    invoke-static {}, Lc8/Lgb;->getInstance()Lc8/Lgb;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/chb;->deviceTokenSalt:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lc8/Lgb;->putLoginHistory(Lc8/Rgb;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, v16

    iput-object v0, v12, Lc8/Sgb;->user:Lc8/chb;

    .line 182
    iget-wide v4, v11, Lc8/Ugb;->loginTime:J

    iput-wide v4, v12, Lc8/Sgb;->loginTime:J

    .line 183
    iget-object v3, v11, Lc8/Ugb;->sid:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->sid:Ljava/lang/String;

    .line 185
    iget-wide v4, v11, Lc8/Ugb;->expires:J

    iget-wide v6, v11, Lc8/Ugb;->loginTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lc8/whb;->adjustSessionExpireTime(JJ)J

    move-result-wide v4

    iput-wide v4, v12, Lc8/Sgb;->expireIn:J

    .line 186
    iget-object v3, v11, Lc8/Ugb;->loginPhone:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->mobile:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/Vgb;->showLoginId:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->loginId:Ljava/lang/String;

    .line 189
    iget-object v3, v11, Lc8/Ugb;->autoLoginToken:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->autoLoginToken:Ljava/lang/String;

    .line 190
    iget-object v3, v11, Lc8/Ugb;->topAccessToken:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->topAccessToken:Ljava/lang/String;

    .line 191
    iget-object v3, v11, Lc8/Ugb;->topAuthCode:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->topAuthCode:Ljava/lang/String;

    .line 192
    iget-object v3, v11, Lc8/Ugb;->topExpireTime:Ljava/lang/String;

    iput-object v3, v12, Lc8/Sgb;->topExpireTime:Ljava/lang/String;

    .line 193
    iget-object v3, v11, Lc8/Ugb;->extendAttribute:Ljava/util/Map;

    iput-object v3, v12, Lc8/Sgb;->otherInfo:Ljava/util/Map;

    .line 195
    const-class v3, Lc8/thb;

    invoke-static {v3}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/thb;

    iget-object v4, v11, Lc8/Ugb;->sid:Ljava/lang/String;

    iget-object v5, v11, Lc8/Ugb;->userId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lc8/thb;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 196
    const/4 v15, 0x0

    .line 198
    .local v15, "ssoDomainList":[Ljava/lang/String;
    :try_start_5
    iget-object v3, v11, Lc8/Ugb;->extendAttribute:Ljava/util/Map;

    const-string/jumbo v4, "ssoDomainList"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 199
    .local v14, "object":Ljava/lang/Object;
    if-eqz v14, :cond_5

    instance-of v3, v14, Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 200
    move-object v0, v14

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 202
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 207
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "object":Ljava/lang/Object;
    :cond_5
    :goto_3
    :try_start_6
    sget-object v3, Lc8/Dgb;->INSTANCE:Lc8/Dgb;

    iget-object v4, v11, Lc8/Ugb;->cookies:[Ljava/lang/String;

    invoke-virtual {v3, v4, v15}, Lc8/Dgb;->injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 211
    .end local v2    # "historyAccount":Lc8/Rgb;
    .end local v8    # "dataObject":Lorg/json/JSONObject;
    .end local v11    # "loginDataModel":Lc8/Ugb;
    .end local v15    # "ssoDomainList":[Ljava/lang/String;
    .end local v16    # "user":Lc8/chb;
    :goto_4
    const-string/jumbo v3, "session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lc8/Sgb;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/whb;->refreshInternalSession(Lc8/Sgb;)V

    goto/16 :goto_0

    .line 154
    .restart local v8    # "dataObject":Lorg/json/JSONObject;
    .restart local v11    # "loginDataModel":Lc8/Ugb;
    .restart local v16    # "user":Lc8/chb;
    :catch_0
    move-exception v9

    .line 155
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v3, Lc8/whb;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v8    # "dataObject":Lorg/json/JSONObject;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "loginDataModel":Lc8/Ugb;
    .end local v16    # "user":Lc8/chb;
    :catch_1
    move-exception v3

    goto :goto_4

    .line 204
    .restart local v2    # "historyAccount":Lc8/Rgb;
    .restart local v8    # "dataObject":Lorg/json/JSONObject;
    .restart local v11    # "loginDataModel":Lc8/Ugb;
    .restart local v15    # "ssoDomainList":[Ljava/lang/String;
    .restart local v16    # "user":Lc8/chb;
    :catch_2
    move-exception v9

    .line 205
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .end local v2    # "historyAccount":Lc8/Rgb;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "ssoDomainList":[Ljava/lang/String;
    :catch_3
    move-exception v3

    goto/16 :goto_2
.end method

.method public refreshWhenOfflineLogin(Lc8/Ogb;)V
    .locals 4
    .param p1, "accountContract"    # Lc8/Ogb;

    .prologue
    .line 216
    new-instance v0, Lc8/Sgb;

    invoke-direct {v0}, Lc8/Sgb;-><init>()V

    .line 218
    .local v0, "offlineInternalSession":Lc8/Sgb;
    new-instance v1, Lc8/chb;

    invoke-direct {v1}, Lc8/chb;-><init>()V

    .line 220
    .local v1, "user":Lc8/chb;
    sget-object v2, Lc8/Bgb;->storageService:Lc8/uhb;

    invoke-virtual {p1}, Lc8/Ogb;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/uhb;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/chb;->nick:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Lc8/Ogb;->getOpenid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/chb;->openId:Ljava/lang/String;

    .line 222
    sget-object v2, Lc8/Bgb;->storageService:Lc8/uhb;

    invoke-virtual {p1}, Lc8/Ogb;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/uhb;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/chb;->userId:Ljava/lang/String;

    .line 224
    iput-object v1, v0, Lc8/Sgb;->user:Lc8/chb;

    .line 226
    invoke-direct {p0, v0}, Lc8/whb;->refreshInternalSession(Lc8/Sgb;)V

    .line 227
    return-void
.end method
