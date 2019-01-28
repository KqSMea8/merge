.class public Lc8/Qng;
.super Lc8/Ong;
.source "PushAntStore.java"


# instance fields
.field private abtestWhitelist:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/Ong;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Qng;->mInit:Z

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Qng;->abtestWhitelist:Landroid/util/SparseArray;

    .line 32
    return-void
.end method

.method private textJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doAfterFetchAbtestConfig(Ljava/util/Map;)V
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
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 57
    const-string/jumbo v2, "abtest_config"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "abtestConfigStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "abtestConfigJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 61
    iget-boolean v2, p0, Lc8/Qng;->mInit:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v0, v2}, Lc8/Qng;->convertFlatStructureToMap(Lorg/json/JSONObject;Z)Z

    .line 64
    .end local v0    # "abtestConfigJson":Lorg/json/JSONObject;
    :cond_0
    iput-boolean v3, p0, Lc8/Qng;->mInit:Z

    .line 65
    return-void

    .line 61
    .restart local v0    # "abtestConfigJson":Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected fetchAbtestWhiteList()V
    .locals 11

    .prologue
    .line 69
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v9

    iget-object v10, p0, Lc8/Qng;->mAbtestWhitelistKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lc8/ttf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 70
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    :try_start_0
    const-string/jumbo v9, "abtest_config_whiteList"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 75
    .local v8, "whitelistStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 78
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v7, "whitelistJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 83
    .local v0, "abtestWhitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 84
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 86
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 87
    .local v3, "groupId":I
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 88
    .local v4, "groupIdToUserIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    .end local v0    # "abtestWhitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "groupId":I
    .end local v4    # "groupIdToUserIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "whitelistJson":Lorg/json/JSONObject;
    .end local v8    # "whitelistStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "abtestWhitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "whitelistJson":Lorg/json/JSONObject;
    .restart local v8    # "whitelistStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    iput-object v0, p0, Lc8/Qng;->abtestWhitelist:Landroid/util/SparseArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAntConfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v2

    iget-object v3, p0, Lc8/Qng;->mAbtestConfigKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/ttf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 48
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 49
    const-string/jumbo v0, ""

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string/jumbo v2, "abtest_config"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "abtestConfigStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public isGroupInWhitelist(Lc8/Vng;)Z
    .locals 12
    .param p1, "group"    # Lc8/Vng;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    iget-object v10, p0, Lc8/Qng;->abtestWhitelist:Landroid/util/SparseArray;

    iget v11, p1, Lc8/Vng;->groupId:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 99
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v8

    .line 102
    :cond_1
    iget-object v10, p0, Lc8/Qng;->abtestWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 103
    .local v6, "userInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 106
    sget-object v1, Lc8/eog;->sDeviceInfoFetcher:Lc8/eog;

    .line 107
    .local v1, "deviceInfoFetcher":Lc8/eog;
    invoke-virtual {v1}, Lc8/eog;->getTtidModel()Lc8/dog;

    move-result-object v10

    iget-object v0, v10, Lc8/dog;->appName:Ljava/lang/String;

    .line 109
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {v1}, Lc8/eog;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "userId":Ljava/lang/String;
    iget-object v10, p0, Lc8/Qng;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Lc8/eog;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "utdid":Ljava/lang/String;
    invoke-virtual {v1}, Lc8/eog;->getExternalInfoModel()Lc8/cog;

    move-result-object v10

    iget-object v4, v10, Lc8/cog;->nickName:Ljava/lang/String;

    .line 113
    .local v4, "nickName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 115
    .local v3, "isInWhitelist":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 116
    if-nez v3, :cond_2

    invoke-direct {p0, v0, v5}, Lc8/Qng;->textJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_2
    move v3, v9

    .line 118
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 119
    if-nez v3, :cond_4

    invoke-direct {p0, v0, v7}, Lc8/Qng;->textJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_4
    move v3, v9

    .line 121
    :cond_5
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 122
    if-nez v3, :cond_6

    invoke-direct {p0, v0, v4}, Lc8/Qng;->textJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_6
    move v3, v9

    :cond_7
    :goto_3
    move v8, v3

    .line 125
    goto :goto_0

    :cond_8
    move v3, v8

    .line 116
    goto :goto_1

    :cond_9
    move v3, v8

    .line 119
    goto :goto_2

    :cond_a
    move v3, v8

    .line 122
    goto :goto_3
.end method

.method public loadLocalData()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public saveAntConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "antConfig"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
