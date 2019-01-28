.class public Lc8/QYb;
.super Lc8/eYb;
.source "ViewConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/eYb",
        "<",
        "Lc8/PYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_CONFIG_VIEW:Ljava/lang/String; = "poplayer_view_config"


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/PopLayer;Lcom/alibaba/poplayer/norm/IConfigAdapter;)V
    .locals 2
    .param p1, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;
    .param p2, "configAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .prologue
    .line 41
    const-string/jumbo v0, "poplayer_view_config"

    const-string/jumbo v1, "poplayer_black_list"

    invoke-direct {p0, p2, v0, v1}, Lc8/eYb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViewConfigMgr use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/PYb;->LOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lc8/QYb;->mPopLayer:Lcom/alibaba/poplayer/PopLayer;

    .line 45
    return-void
.end method

.method private checkParamContainsWithFilter(Ljava/util/Map;Lc8/fYb;)Z
    .locals 10
    .param p2, "pageInfo"    # Lc8/fYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/fYb;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, "paramsContains":Lorg/json/JSONObject;
    iget-object v9, p2, Lc8/fYb;->paramContains:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 193
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v9, p2, Lc8/fYb;->paramContains:Ljava/lang/String;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "paramsContains":Lorg/json/JSONObject;
    .local v5, "paramsContains":Lorg/json/JSONObject;
    move-object v4, v5

    .line 198
    .end local v5    # "paramsContains":Lorg/json/JSONObject;
    .restart local v4    # "paramsContains":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 216
    :cond_2
    :goto_1
    return v7

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    if-eqz v9, :cond_2

    .line 204
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 206
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "val":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, "filterVal":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    .end local v1    # "filterVal":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :cond_5
    move v7, v8

    .line 216
    goto :goto_1

    .line 214
    :catch_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;
    .locals 8
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            ")",
            "Lc8/qYb",
            "<",
            "Lc8/PYb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "pageConfigItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    iget-object v3, p0, Lc8/QYb;->mCurrentConfigItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PYb;

    .line 62
    .local v0, "configItem":Lc8/PYb;
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v3, v0, Lc8/PYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v3}, Lc8/QYb;->isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}.isMatchUriOrUris fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v3, v0, Lc8/PYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v3}, Lc8/QYb;->checkParamContains(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}.checkParamContains fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "configItem":Lc8/PYb;
    :cond_2
    invoke-virtual {p0, p1, v2}, Lc8/QYb;->filterValiedConfigsFromArray(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/ArrayList;)Lc8/qYb;

    move-result-object v3

    return-object v3
.end method

.method public findValidConfigsByFilters(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/Map;)Lc8/qYb;
    .locals 8
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/qYb",
            "<",
            "Lc8/PYb;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "configItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    iget-object v3, p0, Lc8/QYb;->mCurrentConfigItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PYb;

    .line 91
    .local v0, "configItem":Lc8/PYb;
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v3, v0, Lc8/PYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v3}, Lc8/QYb;->isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}.isMatchUriOrUris fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v3, v0, Lc8/PYb;->pageInfo:Lc8/fYb;

    invoke-direct {p0, p2, v3}, Lc8/QYb;->checkParamContainsWithFilter(Ljava/util/Map;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const-string/jumbo v3, "ViewConfigMgr.findValidConfigs.currentUUID:{%s}.checkParamContainsWithFilter fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0    # "configItem":Lc8/PYb;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lc8/QYb;->filterValiedConfigsFromArray(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/ArrayList;)Lc8/qYb;

    move-result-object v3

    return-object v3
.end method

.method protected onCachedConfigChanged(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p2, "currentConfigSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/PYb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "currentConfigItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    .local p3, "currentBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UYb;->updateWhenConfigChanged()V

    .line 187
    return-void
.end method

.method public parseConfig(Ljava/lang/String;)Lc8/PYb;
    .locals 2
    .param p1, "configJson"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v1, Lc8/PYb;

    invoke-static {p1, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PYb;

    .line 108
    .local v0, "viewConfigItem":Lc8/PYb;
    iget-object v1, v0, Lc8/PYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lc8/QYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v1

    iput-object v1, v0, Lc8/PYb;->pageInfo:Lc8/fYb;

    .line 109
    return-object v0
.end method

.method public bridge synthetic parseConfig(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/QYb;->parseConfig(Ljava/lang/String;)Lc8/PYb;

    move-result-object v0

    return-object v0
.end method

.method public parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/PYb;
    .locals 5
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 114
    iget-object v4, p1, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, "poplayerUri":Landroid/net/Uri;
    const-string/jumbo v4, "openType"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "openType":Ljava/lang/String;
    const-string/jumbo v4, "directly"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    const/4 v3, 0x0

    .line 181
    :goto_0
    return-object v3

    .line 118
    :cond_0
    invoke-virtual {p0, v2}, Lc8/QYb;->parseUri(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "jsonConfig":Ljava/lang/String;
    const-class v4, Lc8/PYb;

    invoke-static {v0, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/PYb;

    .line 120
    .local v3, "viewConfigItem":Lc8/PYb;
    iget-object v4, v3, Lc8/PYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lc8/QYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v4

    iput-object v4, v3, Lc8/PYb;->pageInfo:Lc8/fYb;

    goto :goto_0
.end method

.method public bridge synthetic parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/QYb;->parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/PYb;

    move-result-object v0

    return-object v0
.end method
