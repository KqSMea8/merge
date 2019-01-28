.class public Lc8/zJ;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lc8/pN;


# static fields
.field private static mOrangeValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lc8/zJ;->mOrangeValid:Z

    .line 34
    :try_start_0
    const-string/jumbo v0, "com.taobao.orange.OrangeConfig"

    invoke-static {v0}, Lc8/zJ;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lc8/zJ;->mOrangeValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    sput-boolean v1, Lc8/zJ;->mOrangeValid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public varargs getConfig([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 76
    sget-boolean v2, Lc8/zJ;->mOrangeValid:Z

    if-nez v2, :cond_0

    .line 77
    const-string/jumbo v2, "awcn.OrangeConfigImpl"

    const-string/jumbo v3, "no orange sdk"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v2, v3, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.OrangeConfigImpl"

    const-string/jumbo v3, "get config failed!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onConfigUpdate(Ljava/lang/String;)V
    .locals 12
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v6, "networkSdk"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    const-string/jumbo v6, "awcn.OrangeConfigImpl"

    const-string/jumbo v7, "onConfigUpdate"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "namespace"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v6, 0x3

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_empty_scheme_https_switch"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "true"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 97
    .local v1, "httpSwitch":Z
    invoke-static {}, Lc8/RK;->getInstance()Lc8/RK;

    move-result-object v6

    invoke-virtual {v6, v1}, Lc8/RK;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 104
    .end local v1    # "httpSwitch":Z
    :goto_0
    const/4 v6, 0x3

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_spdy_enable_switch"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "true"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 105
    .local v4, "spdyEnable":Z
    invoke-static {v4}, Lc8/qN;->setSpdyEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 112
    .end local v4    # "spdyEnable":Z
    :goto_1
    const/4 v6, 0x3

    :try_start_2
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_http_cache_switch"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "true"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 113
    .local v0, "cacheSwitch":Z
    invoke-static {v0}, Lc8/qN;->setHttpCacheEnable(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    .end local v0    # "cacheSwitch":Z
    :goto_2
    const/4 v6, 0x3

    :try_start_3
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_http_cache_flag"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "v":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 121
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lc8/qN;->setCacheFlag(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 129
    .end local v5    # "v":Ljava/lang/String;
    :cond_0
    :goto_3
    const/4 v6, 0x3

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_https_sni_enable_switch"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "true"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 130
    .local v3, "sniEnable":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lc8/PI;->setHttpsSniEnable(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    .end local v3    # "sniEnable":Z
    :goto_4
    const/4 v6, 0x3

    :try_start_5
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "network_accs_session_bg_switch"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "true"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 138
    .local v2, "isForbiden":Z
    invoke-static {v2}, Lc8/PI;->setAccsSessionCreateForbiddenInBg(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 142
    .end local v2    # "isForbiden":Z
    :goto_5
    invoke-static {}, Lc8/WN;->getIntance()Lc8/WN;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "networkSdk"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "network_monitor_whitelist_url"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/WN;->updateWhiteReqUrls(Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void

    :catch_0
    move-exception v6

    goto :goto_5

    :catch_1
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v6

    goto/16 :goto_2

    :catch_4
    move-exception v6

    goto/16 :goto_1

    :catch_5
    move-exception v6

    goto/16 :goto_0
.end method

.method public register()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    sget-boolean v1, Lc8/zJ;->mOrangeValid:Z

    if-nez v1, :cond_0

    .line 45
    const-string/jumbo v1, "awcn.OrangeConfigImpl"

    const-string/jumbo v2, "no orange sdk"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v3}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "networkSdk"

    aput-object v4, v2, v3

    new-instance v3, Lc8/yJ;

    invoke-direct {v3, p0}, Lc8/yJ;-><init>(Lc8/zJ;)V

    invoke-virtual {v1, v2, v3}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 57
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "networkSdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "network_empty_scheme_https_switch"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "true"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lc8/WN;->getIntance()Lc8/WN;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "networkSdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "network_monitor_whitelist_url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lc8/zJ;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/WN;->updateWhiteReqUrls(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.OrangeConfigImpl"

    const-string/jumbo v2, "register fail"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v6, v0, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unRegister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    sget-boolean v0, Lc8/zJ;->mOrangeValid:Z

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "awcn.OrangeConfigImpl"

    const-string/jumbo v1, "no orange sdk"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "networkSdk"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lc8/ctf;->unregisterListener([Ljava/lang/String;)V

    goto :goto_0
.end method
