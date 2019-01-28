.class public Lc8/pZm;
.super Lc8/MXf;
.source "PopLayerTrackingEventModule.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lc8/pZm;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/pZm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private findRootView()Lc8/dZm;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lc8/pZm;->mWXSDKInstance:Lc8/nVf;

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 224
    :cond_1
    iget-object v2, p0, Lc8/pZm;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lc8/dZm;

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lc8/dZm;

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 6
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 31
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v0

    .line 32
    .local v0, "weexView":Lc8/dZm;
    if-nez v0, :cond_0

    .line 33
    invoke-interface {p3, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lc8/dZm;->close()V

    .line 37
    const-string/jumbo v1, "%s.jsClose.success"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-interface {p2, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public consoleLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "log"    # Ljava/lang/String;
    .annotation runtime Lc8/NXf;
    .end annotation

    .prologue
    .line 213
    const-string/jumbo v1, "%s.consolelog?log=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v0

    .line 215
    .local v0, "weexView":Lc8/dZm;
    if-eqz v0, :cond_0

    .line 216
    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-virtual {v0, p1, v1}, Lc8/dZm;->consoleLog(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V

    .line 218
    :cond_0
    return-void
.end method

.method public display(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 6
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 97
    const-string/jumbo v1, "%s.displayMe."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v0

    .line 99
    .local v0, "weexView":Lc8/dZm;
    if-nez v0, :cond_0

    .line 100
    invoke-interface {p3, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Lc8/dZm;->displayMe()V

    .line 105
    invoke-interface {p2, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public fireEvent(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 10
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 172
    const-string/jumbo v3, "%s.fireEvent?params=%s"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v2

    .line 174
    .local v2, "weexView":Lc8/dZm;
    if-nez v2, :cond_0

    .line 175
    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string/jumbo v3, "%s.fireEvent.params{%s}"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 180
    .local v1, "paramsJson":Lorg/json/JSONObject;
    const-string/jumbo v3, "operationName"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "opreationName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_1
    const-string/jumbo v3, "params"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lc8/dZm;->fireEventToMasterIfExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p2, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPopLayerVersion(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 11
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    const-string/jumbo v5, "%s.getPopLayerVersion?params=%s"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v4

    .line 152
    .local v4, "weexView":Lc8/dZm;
    if-nez v4, :cond_0

    .line 153
    invoke-interface {p3, v10}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    :try_start_0
    const-string/jumbo v5, "\"PopLayer/%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/poplayer/PopLayer;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "poplayerUA":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "version"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v5, "%s.PopLayerVersion?version=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-interface {p2, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "poplayerUA":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "getTriggerEventInfo.error."

    invoke-static {v5, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-interface {p3, v10}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getTriggerEventInfo(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 10
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    const-string/jumbo v4, "%s.getTriggerEventInfo?params=%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v3

    .line 131
    .local v3, "weexView":Lc8/dZm;
    if-nez v3, :cond_0

    .line 132
    invoke-interface {p3, v9}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "uri"

    invoke-virtual {v3}, Lc8/dZm;->getPopRequest()Lc8/yXb;

    move-result-object v4

    check-cast v4, Lc8/lYb;

    invoke-virtual {v4}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v5, "param"

    invoke-virtual {v3}, Lc8/dZm;->getPopRequest()Lc8/yXb;

    move-result-object v4

    check-cast v4, Lc8/lYb;

    invoke-virtual {v4}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, "%s.jsGetTriggerEventInfo?nativeInfo=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-interface {p2, v2}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "getTriggerEventInfo.error."

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-interface {p3, v9}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public increaseReadTimes(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 8
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-string/jumbo v2, "%s.increaseReadTimes"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v1

    .line 58
    .local v1, "weexView":Lc8/dZm;
    if-nez v1, :cond_0

    .line 59
    invoke-interface {p3, v7}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {v1}, Lc8/dZm;->getPopRequest()Lc8/yXb;

    move-result-object v0

    check-cast v0, Lc8/lYb;

    .line 63
    .local v0, "request":Lc8/lYb;
    if-nez v0, :cond_1

    .line 64
    const-string/jumbo v2, "request is null"

    invoke-interface {p3, v2}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/dZm;->increaseReadTimes(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "%s.increaseReadTimes.success"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-interface {p2, v7}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public navToUrl(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 7
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 43
    const-string/jumbo v2, "%s.NavToUrl?params=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v1

    .line 45
    .local v1, "weexView":Lc8/dZm;
    if-nez v1, :cond_0

    .line 46
    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v2, "url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lc8/dZm;->navToUrl(Ljava/lang/String;)V

    .line 51
    invoke-interface {p2, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public operateTrackingView(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 9
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 192
    const-string/jumbo v4, "%s.operateTrackingView?params=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v3

    .line 194
    .local v3, "weexView":Lc8/dZm;
    if-nez v3, :cond_0

    .line 195
    invoke-interface {p3, v8}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 199
    .local v2, "paramsJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "groupId"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "groupId":Ljava/lang/String;
    const-string/jumbo v4, "operationName"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "opreationName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    :cond_1
    invoke-interface {p3, v8}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_2
    const-string/jumbo v4, "params"

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lc8/dZm;->fireEventToTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {p2, v8}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public selectAndOperate(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 9
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 110
    const-string/jumbo v4, "%s.setModalThreshold?params=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v2

    .line 112
    .local v2, "weexView":Lc8/dZm;
    if-nez v2, :cond_0

    .line 113
    invoke-interface {p3, v8}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 119
    .local v3, "xxx":Lorg/json/JSONObject;
    invoke-virtual {v2, v3}, Lc8/dZm;->selectAndOperate(Lorg/json/JSONObject;)V

    .line 120
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "jsonParser":Lorg/json/JSONTokener;
    .end local v3    # "xxx":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "selectAndOperate.error."

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-interface {p3, v8}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setModalThreshold(Ljava/util/Map;Lc8/EWf;Lc8/EWf;)V
    .locals 10
    .param p2, "successCB"    # Lc8/EWf;
    .param p3, "errorCB"    # Lc8/EWf;
    .annotation runtime Lc8/NXf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 74
    const-string/jumbo v5, "%s.setModalThreshold?params=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lc8/pZm;->TAG:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lc8/pZm;->findRootView()Lc8/dZm;

    move-result-object v4

    .line 76
    .local v4, "weexView":Lc8/dZm;
    if-nez v4, :cond_0

    .line 77
    invoke-interface {p3, v9}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v4}, Lc8/dZm;->getPopRequest()Lc8/yXb;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    .line 81
    .local v1, "request":Lc8/lYb;
    if-nez v1, :cond_1

    .line 82
    const-string/jumbo v5, "request is null"

    invoke-interface {p3, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    const-string/jumbo v5, "modalThreshold"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 87
    .local v2, "modalThreshold":D
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v2

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lc8/dZm;->setPenetrateAlpha(I)V

    .line 88
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v2    # "modalThreshold":D
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "setModalThreshold error"

    invoke-static {v5, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-interface {p3, v9}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method
