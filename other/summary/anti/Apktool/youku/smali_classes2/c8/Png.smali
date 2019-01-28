.class public Lc8/Png;
.super Lc8/Ong;
.source "PullAntStore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/Ong;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lc8/Png;->requestDelay:I

    .line 29
    return-void
.end method

.method private readLocalConfig()Ljava/lang/String;
    .locals 7

    .prologue
    .line 46
    const-string/jumbo v0, ""

    .line 48
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "/ant_abtest"

    const-string/jumbo v5, "ant_abtest_info"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lc8/kog;->readFile(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v3

    .line 49
    .local v3, "local":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v0

    .line 56
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "local":[B
    .local v1, "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 52
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "local":[B
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "local":[B
    .restart local v0    # "data":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 56
    .end local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected doAfterFetchAbtestConfig(Ljava/util/Map;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "abtest_config_version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "abtestConfigVersion":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getServerConfigVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/Png;->abtestServerVersion:I

    goto :goto_0
.end method

.method protected doAfterFetchAbtestSdkConfig(Ljava/util/Map;)V
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "dilution"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "dilutionStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "dilutionJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v2, "delay"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lc8/Png;->requestDelay:I

    goto :goto_0
.end method

.method public getAntConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lc8/Png;->readLocalConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadLocalData()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/Png;->readLocalConfig()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "antLocalConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "configObject":Lorg/json/JSONObject;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lc8/Png;->convertFlatStructureToMap(Lorg/json/JSONObject;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "configObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveAntConfig(Ljava/lang/String;)Z
    .locals 6
    .param p1, "antConfig"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "success":Z
    :try_start_0
    const-string/jumbo v2, "/ant_abtest"

    const-string/jumbo v3, "ant_abtest_info"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lc8/kog;->writeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
