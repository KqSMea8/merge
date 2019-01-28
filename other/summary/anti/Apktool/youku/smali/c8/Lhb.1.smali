.class public Lc8/Lhb;
.super Ljava/lang/Object;
.source "UserTracer.java"

# interfaces
.implements Lc8/vhb;


# static fields
.field private static final TAG:Ljava/lang/String; = "login.UserTracer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getAppInfo()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "all":Lorg/json/JSONObject;
    move-object v1, v0

    .line 75
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "diskSize"

    invoke-static {}, Lc8/Shb;->getSDCardSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v5, "sysSize"

    invoke-static {}, Lc8/Shb;->getSystemSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v5, "memorySize"

    invoke-static {}, Lc8/Shb;->getTotalMemory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v5, "deviceId"

    invoke-static {}, Lc8/Shb;->getAndroidId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v5, "uuid"

    sget-object v6, Lc8/Bgb;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    :goto_0
    move-object v2, v0

    .line 89
    .local v2, "osInfo":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "osType"

    const-string/jumbo v6, "android"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v5, "osVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 96
    :goto_1
    move-object v3, v0

    .line 98
    .local v3, "sdkInfo":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v5, "sdkName"

    const-string/jumbo v6, "alibabauth_sdk"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v5, "sdkVersion"

    sget-object v6, Lc8/Bgb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    sget-boolean v5, Lc8/Bgb;->isMini:Z

    if-eqz v5, :cond_0

    .line 101
    const-string/jumbo v5, "sdkType"

    const-string/jumbo v6, "mini"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :goto_2
    :try_start_3
    const-string/jumbo v5, "appId"

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

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v5, "appKey"

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v5, "appName"

    invoke-static {}, Lc8/Shb;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v5, "appVersion"

    invoke-static {}, Lc8/Shb;->getAndroidAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    :goto_3
    move-object v4, v0

    .line 122
    .local v4, "userInfo":Lorg/json/JSONObject;
    :try_start_4
    const-string/jumbo v5, "openId"

    sget-object v6, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v6}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v6

    iget-object v6, v6, Lc8/Sgb;->user:Lc8/chb;

    iget-object v6, v6, Lc8/chb;->openId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 131
    :goto_4
    return-object v0

    .line 103
    .end local v4    # "userInfo":Lorg/json/JSONObject;
    :cond_0
    :try_start_5
    const-string/jumbo v5, "sdkType"

    const-string/jumbo v6, "std"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_2

    .restart local v4    # "userInfo":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v4    # "userInfo":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v3    # "sdkInfo":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .end local v2    # "osInfo":Lorg/json/JSONObject;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/Lhb;->getAppInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "appInfo":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    .line 46
    const-string/jumbo v1, "actionExt"

    invoke-static {p2}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc8/Khb;

    invoke-direct {v2, p0, v0}, Lc8/Khb;-><init>(Lc8/Lhb;Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
