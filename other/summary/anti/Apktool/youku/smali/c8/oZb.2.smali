.class public Lc8/oZb;
.super Lc8/RD;
.source "PopLayerDebugManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private hookConfigAdapter(Lc8/eYb;Lcom/alibaba/poplayer/norm/IConfigAdapter;)V
    .locals 7
    .param p1, "configManager"    # Lc8/eYb;
    .param p2, "configAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 164
    const-class v6, Lc8/eYb;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 165
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 166
    .local v1, "fConfigAdapter":Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 167
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/poplayer/norm/IConfigAdapter;

    if-eqz v6, :cond_1

    .line 169
    move-object v1, v2

    .line 173
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-static {v1, p1, p2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    return-void

    .line 166
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private singleStartMock(Lc8/gYb;Ljava/lang/String;)V
    .locals 5
    .param p1, "triggerService"    # Lc8/gYb;
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/eYb;->getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v1

    instance-of v1, v1, Lc8/nZb;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/eYb;->getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v0

    check-cast v0, Lc8/nZb;

    .line 126
    .local v0, "fakeAdapter":Lc8/nZb;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lc8/nZb;->mConfig:Lorg/json/JSONObject;

    .line 132
    .end local v0    # "fakeAdapter":Lc8/nZb;
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v1

    new-instance v2, Lc8/nZb;

    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/eYb;->getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lc8/nZb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Lorg/json/JSONObject;)V

    invoke-direct {p0, v1, v2}, Lc8/oZb;->hookConfigAdapter(Lc8/eYb;Lcom/alibaba/poplayer/norm/IConfigAdapter;)V

    goto :goto_0
.end method

.method private singleStopMock(Lc8/gYb;)Z
    .locals 2
    .param p1, "triggerService"    # Lc8/gYb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eYb;->getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v0

    instance-of v0, v0, Lc8/nZb;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v1

    invoke-virtual {p1}, Lc8/gYb;->getConfigMgr()Lc8/eYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eYb;->getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v0

    check-cast v0, Lc8/nZb;

    iget-object v0, v0, Lc8/nZb;->mAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    invoke-direct {p0, v1, v0}, Lc8/oZb;->hookConfigAdapter(Lc8/eYb;Lcom/alibaba/poplayer/norm/IConfigAdapter;)V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startMock(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/oZb;->singleStartMock(Lc8/gYb;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/oZb;->singleStartMock(Lc8/gYb;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/oZb;->singleStartMock(Lc8/gYb;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uYb;->clear()V

    .line 111
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zYb;->clear()V

    .line 112
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UYb;->clear()V

    .line 114
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 115
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 116
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 118
    const-string/jumbo v0, "PopLayerManager.startMock.success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 120
    return v2
.end method

.method private stopMock(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/oZb;->singleStopMock(Lc8/gYb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 148
    const-string/jumbo v0, "PopLayerManager.stopMock.success App."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/oZb;->singleStopMock(Lc8/gYb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 152
    const-string/jumbo v0, "PopLayerManager.stopMock.success Page."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_1
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/oZb;->singleStopMock(Lc8/gYb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 156
    const-string/jumbo v0, "PopLayerManager.stopMock.success View."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_2
    const-string/jumbo v0, "PopLayerManager.stopMock.success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 160
    return v2
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 22
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 46
    :try_start_0
    const-string/jumbo v17, "enableMock"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 47
    const-string/jumbo v17, "PopLayerManager.jsEnableMock.params{%s}"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p2, v18, v19

    invoke-static/range {v17 .. v18}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v10, Lorg/json/JSONTokener;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v10}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 50
    .local v16, "xxx":Lorg/json/JSONObject;
    const-string/jumbo v17, "enable"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 51
    .local v4, "enable":Z
    const-string/jumbo v17, "config"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "config":Ljava/lang/String;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lc8/oZb;->startMock(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v17

    .line 97
    .end local v2    # "config":Ljava/lang/String;
    .end local v4    # "enable":Z
    .end local v10    # "jsonParser":Lorg/json/JSONTokener;
    .end local v16    # "xxx":Lorg/json/JSONObject;
    :goto_0
    return v17

    .line 52
    .restart local v2    # "config":Ljava/lang/String;
    .restart local v4    # "enable":Z
    .restart local v10    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v16    # "xxx":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lc8/oZb;->stopMock(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v17

    goto :goto_0

    .line 53
    .end local v2    # "config":Ljava/lang/String;
    .end local v4    # "enable":Z
    .end local v10    # "jsonParser":Lorg/json/JSONTokener;
    .end local v16    # "xxx":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v17, "clearCount"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 54
    invoke-static {}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->clearPopCounts()V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 56
    const/16 v17, 0x1

    goto :goto_0

    .line 57
    :cond_2
    const-string/jumbo v17, "openConsole"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 58
    new-instance v17, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 59
    .restart local v16    # "xxx":Lorg/json/JSONObject;
    const-string/jumbo v17, "windvane"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 60
    .local v15, "windvanePlugins":Ljava/lang/String;
    const-string/jumbo v17, "logCacheSize"

    const/16 v18, 0x32

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 61
    .local v11, "logCacheSize":I
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/oZb;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "http://tb.cn/n/poplayerdebug?windvane=%s&log_cache_size=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/oZb;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 65
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "logCacheSize":I
    .end local v15    # "windvanePlugins":Ljava/lang/String;
    .end local v16    # "xxx":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v17, "getIP"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 66
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v17

    const-string/jumbo v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 67
    .local v14, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 68
    .local v13, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    .line 69
    .local v8, "ipAddress":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    const-string/jumbo v18, "%d.%d.%d.%d"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    and-int/lit16 v0, v8, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    shr-int/lit8 v21, v8, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    shr-int/lit8 v21, v8, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    ushr-int/lit8 v21, v8, 0x18

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "ip":Ljava/lang/String;
    const-string/jumbo v17, "PopLayerManager.jsGetIp.ip{%s}"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    invoke-static/range {v17 .. v18}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v9, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v17, "ip"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 74
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 75
    .end local v7    # "ip":Ljava/lang/String;
    .end local v8    # "ipAddress":I
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v14    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    const-string/jumbo v17, "mockBroadcast"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 77
    new-instance v17, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 78
    .restart local v16    # "xxx":Lorg/json/JSONObject;
    const-string/jumbo v17, "event"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "event":Ljava/lang/String;
    const-string/jumbo v17, "param"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "param":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 81
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 83
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v17, "com.alibaba.poplayer.PopLayer.action.POP"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "event"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v17, "param"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v17, "PopLayerManager.mockBroadcast.event{%s},param:{%s}."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v12, v18, v19

    invoke-static/range {v17 .. v18}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/oZb;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 89
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 92
    .end local v5    # "event":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v12    # "param":Ljava/lang/String;
    .end local v16    # "xxx":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v17, "PopLayerManager.execute.noMethodFound"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v17, "PopLayerManager.execute.error"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lc8/lZb;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 97
    const/16 v17, 0x0

    goto/16 :goto_0
.end method
