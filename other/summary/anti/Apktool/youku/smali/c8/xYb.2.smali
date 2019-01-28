.class public Lc8/xYb;
.super Lc8/eYb;
.source "PageConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/eYb",
        "<",
        "Lc8/wYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_CONFIG_PAGE:Ljava/lang/String; = "poplayer_config"


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;)V
    .locals 2
    .param p1, "configAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .prologue
    .line 35
    const-string/jumbo v0, "poplayer_config"

    const-string/jumbo v1, "poplayer_black_list"

    invoke-direct {p0, p1, v0, v1}, Lc8/eYb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PageConfigMgr use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/wYb;->LOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 38
    return-void
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
            "Lc8/wYb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "pageConfigItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/page/PageConfigItem;>;"
    iget-object v3, p0, Lc8/xYb;->mCurrentConfigItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wYb;

    .line 61
    .local v0, "configItem":Lc8/wYb;
    const-string/jumbo v3, "PageConfigMgr.findValidConfigs.currentUUID:{%s}."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/wYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v3, v0, Lc8/wYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v3}, Lc8/xYb;->isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const-string/jumbo v3, "PageConfigMgr.findValidConfigs.currentUUID:{%s}.isMatchUriOrUris fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/wYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v3, v0, Lc8/wYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v3}, Lc8/xYb;->checkParamContains(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    const-string/jumbo v3, "PageConfigMgr.findValidConfigs.currentUUID:{%s}.checkParamContains fail."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lc8/wYb;->uuid:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "configItem":Lc8/wYb;
    :cond_2
    invoke-virtual {p0, p1, v2}, Lc8/xYb;->filterValiedConfigsFromArray(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/ArrayList;)Lc8/qYb;

    move-result-object v3

    return-object v3
.end method

.method protected onCachedConfigChanged(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "currentConfigItems"    # Ljava/util/List;
    .param p2, "currentConfigSet"    # Ljava/lang/String;
    .param p3, "currentBlackList"    # Ljava/util/List;

    .prologue
    .line 84
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zYb;->updateWhenConfigChanged()V

    .line 85
    return-void
.end method

.method public parseConfig(Ljava/lang/String;)Lc8/wYb;
    .locals 2
    .param p1, "configJson"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v1, Lc8/wYb;

    invoke-static {p1, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wYb;

    .line 78
    .local v0, "pageConfigItem":Lc8/wYb;
    iget-object v1, v0, Lc8/wYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lc8/xYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v1

    iput-object v1, v0, Lc8/wYb;->pageInfo:Lc8/fYb;

    .line 79
    return-object v0
.end method

.method public bridge synthetic parseConfig(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lc8/xYb;->parseConfig(Ljava/lang/String;)Lc8/wYb;

    move-result-object v0

    return-object v0
.end method

.method public parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/wYb;
    .locals 5
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 90
    iget-object v4, p1, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 91
    .local v3, "poplayerUri":Landroid/net/Uri;
    const-string/jumbo v4, "openType"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "openType":Ljava/lang/String;
    const-string/jumbo v4, "directly"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    .line 94
    :cond_0
    invoke-virtual {p0, v3}, Lc8/xYb;->parseUri(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "jsonConfig":Ljava/lang/String;
    const-class v4, Lc8/wYb;

    invoke-static {v0, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/wYb;

    .line 96
    .local v2, "pageConfigItem":Lc8/wYb;
    iget-object v4, v2, Lc8/wYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lc8/xYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v4

    iput-object v4, v2, Lc8/wYb;->pageInfo:Lc8/fYb;

    goto :goto_0
.end method

.method public bridge synthetic parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lc8/xYb;->parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/wYb;

    move-result-object v0

    return-object v0
.end method
