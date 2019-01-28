.class public Lc8/sYb;
.super Lc8/eYb;
.source "AppConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/eYb",
        "<",
        "Lc8/rYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_CONFIG_APP:Ljava/lang/String; = "poplayer_app_config"

.field public static final KEY_CONFIG_WHITE_LIST:Ljava/lang/String; = "poplayer_app_white_list"


# instance fields
.field protected mCurrentWhiteList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "white_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;)V
    .locals 2
    .param p1, "configAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .prologue
    .line 50
    const-string/jumbo v0, "poplayer_app_config"

    const-string/jumbo v1, "poplayer_black_list"

    invoke-direct {p0, p1, v0, v1}, Lc8/eYb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/sYb;->mCurrentWhiteList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppConfigMgr use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/rYb;->LOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private isContainer(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)Z
    .locals 4
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "Ljava/util/List",
            "<",
            "Lc8/fYb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/BaseConfigItem$PageInfo;>;"
    const/4 v2, 0x0

    .line 207
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 211
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/poplayer/trigger/BaseConfigItem$PageInfo;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fYb;

    .line 213
    .local v0, "item":Lc8/fYb;
    invoke-virtual {p0, p1, v0}, Lc8/sYb;->isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {p0, p1, v0}, Lc8/sYb;->checkParamContains(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;
    .locals 3
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            ")",
            "Lc8/qYb",
            "<",
            "Lc8/rYb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lc8/sYb;->findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;[Ljava/lang/String;)Lc8/qYb;

    move-result-object v0

    return-object v0
.end method

.method public varargs findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;[Ljava/lang/String;)Lc8/qYb;
    .locals 11
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "extInfo"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lc8/qYb",
            "<",
            "Lc8/rYb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v7, 0x0

    .line 131
    :goto_0
    return-object v7

    .line 84
    :cond_0
    move-object v0, p1

    .local v0, "pageEvent":Lcom/alibaba/poplayer/trigger/Event;
    iget v1, p1, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v1, v5, :cond_1

    .line 85
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v0, Lcom/alibaba/poplayer/trigger/Event;

    .end local v0    # "pageEvent":Lcom/alibaba/poplayer/trigger/Event;
    iget v1, p1, Lcom/alibaba/poplayer/trigger/Event;->domain:I

    aget-object v2, p2, v10

    aget-object v3, p2, v5

    iget-object v4, p1, Lcom/alibaba/poplayer/trigger/Event;->attachActivityKeyCode:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .restart local v0    # "pageEvent":Lcom/alibaba/poplayer/trigger/Event;
    :cond_1
    invoke-virtual {p0, p1}, Lc8/sYb;->onInterceptEvent(Lcom/alibaba/poplayer/trigger/Event;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    new-instance v7, Lc8/qYb;

    invoke-direct {v7}, Lc8/qYb;-><init>()V

    .line 91
    .local v7, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    iget-object v1, v7, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc8/sYb;->parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/rYb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v7    # "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    iget-object v1, p0, Lc8/sYb;->mCurrentConfigItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/rYb;

    .line 99
    .local v6, "configItem":Lc8/rYb;
    const-string/jumbo v1, "AppConfigManager.whitelist check."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lc8/sYb;->mCurrentWhiteList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lc8/sYb;->isInList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget v1, p1, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v1, v5, :cond_5

    .line 106
    iget-object v1, v6, Lc8/rYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v1}, Lc8/sYb;->isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, v6, Lc8/rYb;->pageInfo:Lc8/fYb;

    invoke-virtual {p0, p1, v1}, Lc8/sYb;->checkParamContains(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    :cond_4
    :goto_2
    invoke-virtual {p0, v6, v0}, Lc8/sYb;->isConfigSurvival(Lc8/rYb;Lcom/alibaba/poplayer/trigger/Event;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 124
    const-string/jumbo v1, "AppConfigManager.config{%s} can not survival in this page."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 114
    :cond_5
    iget-object v1, v6, Lc8/rYb;->whiteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, v6, Lc8/rYb;->whiteList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lc8/sYb;->isContainer(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    :cond_6
    iget-object v1, v6, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, v6, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lc8/sYb;->isContainer(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v6    # "configItem":Lc8/rYb;
    :cond_8
    invoke-virtual {p0, p1, v8}, Lc8/sYb;->filterValiedConfigsFromArray(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/ArrayList;)Lc8/qYb;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public isConfigSurvival(Lc8/rYb;Lcom/alibaba/poplayer/trigger/Event;)Z
    .locals 1
    .param p1, "configItem"    # Lc8/rYb;
    .param p2, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 247
    iget-object v0, p1, Lc8/rYb;->survivalWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p1, Lc8/rYb;->survivalWhiteList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lc8/sYb;->isContainer(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lc8/rYb;->survivalBlackList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lc8/sYb;->isContainer(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCachedConfigChanged(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p2, "currentConfigSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/rYb;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "currentConfigItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    .local p3, "currentBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uYb;->updateWhenConfigChanged()V

    .line 137
    return-void
.end method

.method protected parseConfig(Ljava/lang/String;)Lc8/rYb;
    .locals 4
    .param p1, "configJson"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    :try_start_0
    const-class v2, Lc8/rYb;

    invoke-static {p1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rYb;

    .line 144
    .local v0, "config":Lc8/rYb;
    iget-object v2, v0, Lc8/rYb;->survivalWhiteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lc8/rYb;->survivalBlackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 145
    const-string/jumbo v2, "App parseConfig error. survivalBlackList and survivalWhiteList exist at the same time"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 158
    .end local v0    # "config":Lc8/rYb;
    :cond_0
    :goto_0
    return-object v0

    .line 148
    .restart local v0    # "config":Lc8/rYb;
    :cond_1
    iget-object v2, v0, Lc8/rYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lc8/sYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v2

    iput-object v2, v0, Lc8/rYb;->pageInfo:Lc8/fYb;

    .line 149
    iget-object v2, v0, Lc8/rYb;->pageInfo:Lc8/fYb;

    iget-object v2, v2, Lc8/fYb;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc8/rYb;->pageInfo:Lc8/fYb;

    iget-object v2, v2, Lc8/fYb;->uris:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lc8/rYb;->pageInfo:Lc8/fYb;

    iget-object v2, v2, Lc8/fYb;->uris:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 151
    :cond_2
    iget-object v2, v0, Lc8/rYb;->whiteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 152
    const-string/jumbo v2, "App parseConfig error. whitelist and blacklist exist at the same time"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 158
    .end local v0    # "config":Lc8/rYb;
    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic parseConfig(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lc8/sYb;->parseConfig(Ljava/lang/String;)Lc8/rYb;

    move-result-object v0

    return-object v0
.end method

.method public parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/rYb;
    .locals 12
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    const/4 v11, 0x0

    .line 164
    iget-object v9, p1, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p0, v9}, Lc8/sYb;->parseUri(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v5

    .line 165
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v9, "whiteList"

    aput-object v9, v3, v11

    const/4 v9, 0x1

    const-string/jumbo v10, "blackList"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "survivalWhiteList"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "survivalBlackList"

    aput-object v10, v3, v9

    .line 167
    .local v3, "encodeParams":[Ljava/lang/String;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v1, v4

    .line 168
    .local v7, "param":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 169
    .local v8, "val":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 170
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "array_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "utf-8"

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lc8/rYb;

    invoke-static {v9, v10}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rYb;

    .line 180
    .local v0, "appConfigItem":Lc8/rYb;
    :try_start_1
    const-string/jumbo v9, "array_whiteList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 181
    const-string/jumbo v9, "array_whiteList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-class v10, Lc8/fYb;

    invoke-static {v9, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, v0, Lc8/rYb;->whiteList:Ljava/util/ArrayList;

    .line 183
    :cond_2
    const-string/jumbo v9, "array_blackList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 184
    const-string/jumbo v9, "array_blackList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-class v10, Lc8/fYb;

    invoke-static {v9, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, v0, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    .line 186
    :cond_3
    const-string/jumbo v9, "array_survivalWhiteList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 187
    const-string/jumbo v9, "array_survivalWhiteList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-class v10, Lc8/fYb;

    invoke-static {v9, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, v0, Lc8/rYb;->survivalWhiteList:Ljava/util/ArrayList;

    .line 189
    :cond_4
    const-string/jumbo v9, "array_survivalBlackList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 190
    const-string/jumbo v9, "array_survivalBlackList"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-class v10, Lc8/fYb;

    invoke-static {v9, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, v0, Lc8/rYb;->survivalBlackList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_5
    :goto_1
    iget-object v9, v0, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    iget-object v9, v0, Lc8/rYb;->blackList:Ljava/util/ArrayList;

    if-nez v9, :cond_7

    :cond_6
    iget-object v9, v0, Lc8/rYb;->survivalWhiteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    iget-object v9, v0, Lc8/rYb;->survivalBlackList:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    .line 198
    :cond_7
    const-string/jumbo v9, "App parseConfig error. whitelist and blacklist exist at the same time"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v0, 0x0

    .line 202
    .end local v0    # "appConfigItem":Lc8/rYb;
    :goto_2
    return-object v0

    .line 193
    .restart local v0    # "appConfigItem":Lc8/rYb;
    :catch_1
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lc8/rYb;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lc8/sYb;->parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;

    move-result-object v9

    iput-object v9, v0, Lc8/rYb;->pageInfo:Lc8/fYb;

    goto :goto_2
.end method

.method public bridge synthetic parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .param p1, "x0"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lc8/sYb;->parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lc8/rYb;

    move-result-object v0

    return-object v0
.end method

.method protected specialConfigsParse(Lcom/alibaba/poplayer/norm/IConfigAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    :try_start_0
    const-string/jumbo v1, "poplayer_app_white_list"

    invoke-interface {p1, p2, v1}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "strWhiteList":Ljava/lang/String;
    const-string/jumbo v1, "App white List :{%s}."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lc8/sYb;->mCurrentWhiteList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    invoke-static {v0}, Lc8/sYb;->isConfigStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lc8/sYb;->mCurrentWhiteList:Ljava/util/List;

    .line 234
    monitor-exit v2

    .line 238
    .end local v0    # "strWhiteList":Ljava/lang/String;
    :goto_1
    return-void

    .line 232
    .restart local v0    # "strWhiteList":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "strWhiteList":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
