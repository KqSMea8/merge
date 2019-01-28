.class public Lc8/mZm;
.super Lc8/RD;
.source "PopLayerWVPlugin.java"


# instance fields
.field private final mPopLayerWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/iZm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/iZm;)V
    .locals 1
    .param p1, "popLayerWebView"    # Lc8/iZm;

    .prologue
    .line 54
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/mZm;->mPopLayerWebView:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method private jsClose(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;)Z
    .locals 3
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "popLayerWebView"    # Lc8/iZm;

    .prologue
    .line 304
    invoke-virtual {p2}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v0

    .line 306
    .local v0, "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :try_start_0
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/TYm;->userClose(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    invoke-virtual {p2}, Lc8/iZm;->close()V

    .line 309
    const-string/jumbo v1, "PopLayerWVPlugin.jsClose.success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 311
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private jsDisplay(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;)Z
    .locals 2
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "popLayerWebView"    # Lc8/iZm;

    .prologue
    .line 246
    invoke-virtual {p2}, Lc8/iZm;->displayMe()V

    .line 247
    const-string/jumbo v0, "PopLayerWVPlugin.jsDisplay.success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method private jsGetTriggerEventInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerWebView"    # Lc8/iZm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "uri"

    invoke-virtual {p3}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string/jumbo v3, "param"

    invoke-virtual {p3}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "PopLayerWVPlugin.jsGetTriggerEventInfo?nativeInfo=%s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 134
    return v5
.end method

.method private jsIncreaseReadTimes(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/lYb;Lc8/jXb;)Z
    .locals 2
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "request"    # Lc8/lYb;
    .param p3, "popLayerBaseView"    # Lc8/jXb;

    .prologue
    const/4 v0, 0x0

    .line 265
    if-nez p2, :cond_0

    .line 266
    const-string/jumbo v1, "request is null"

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lc8/jXb;->increaseReadTimes(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "PopLayerWVPlugin.jsIncreaseReadTimes.success"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private jsIsSoundOff(Lc8/jXb;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 11
    .param p1, "container"    # Lc8/jXb;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 215
    invoke-virtual {p1}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 216
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 217
    .local v5, "curVoice":I
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 218
    .local v4, "curSystem":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 219
    .local v3, "curRing":I
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 220
    .local v2, "curMusic":I
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 221
    .local v1, "curAlarm":I
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v7, "result":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v6, v8

    .line 223
    .local v6, "predictiveSoundOff":Z
    :cond_1
    const-string/jumbo v9, "predictiveSoundOff"

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "voice"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "system"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "ring"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "music"

    .line 224
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "alarm"

    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 226
    return v8
.end method

.method private jsNavToUrl(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerBaseView"    # Lc8/jXb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 293
    const-string/jumbo v3, "PopLayerWVPlugin.jsNavToUrl?params=%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 297
    .local v2, "xxx":Lorg/json/JSONObject;
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "strUrl":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lc8/jXb;->navToUrl(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 300
    return v6
.end method

.method private jsOperateMasterView(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerView"    # Lc8/jXb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 156
    const-string/jumbo v2, "PopLayerWVPlugin.jsOperateMasterView.params{%s}"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "paramsJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "operationName"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "opreationName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 167
    :goto_0
    return v5

    .line 164
    :cond_0
    const-string/jumbo v2, "params"

    .line 165
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p3, v0, v2}, Lc8/jXb;->fireEventToMasterIfExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0
.end method

.method private jsOperateTrackingView(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerView"    # Lc8/jXb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    const-string/jumbo v3, "PopLayerWVPlugin.jsOperateTrackingView.params{%s}"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "paramsJson":Lorg/json/JSONObject;
    const-string/jumbo v3, "groupId"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "groupId":Ljava/lang/String;
    const-string/jumbo v3, "operationName"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "opreationName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 151
    :goto_0
    return v6

    .line 148
    :cond_1
    const-string/jumbo v3, "params"

    .line 149
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {p3, v0, v1, v3}, Lc8/jXb;->fireEventToTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0
.end method

.method private jsPopLayerVersion(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerWebView"    # Lc8/iZm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 117
    const-string/jumbo v3, "\"PopLayer/%s\""

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/poplayer/PopLayer;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "poplayerUA":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "PopLayerWVPlugin.jsPopLayerVersion?version=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 123
    return v6
.end method

.method private jsSelectAndOperate(Lc8/iZm;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)Z
    .locals 6
    .param p1, "popLayerWebView"    # Lc8/iZm;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p3, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 237
    const-string/jumbo v2, "PopLayerWVPlugin.jsSelectAndOperate.params{%s}"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 240
    .local v1, "xxx":Lorg/json/JSONObject;
    invoke-virtual {p1, v1}, Lc8/iZm;->selectAndOperate(Lorg/json/JSONObject;)V

    .line 241
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 242
    return v5
.end method

.method private jsSetAlphaMode(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method private jsSetHardwareAccelerationEnable(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z
    .locals 10
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 277
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 279
    .local v4, "xxx":Lorg/json/JSONObject;
    const-string/jumbo v7, "enable"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 281
    .local v0, "enable":Z
    invoke-static {}, Lc8/qI;->shouldDisableHardwareRenderInLayer()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    .line 282
    .local v1, "isWindvaneEnable":Z
    :goto_0
    const-string/jumbo v7, "PopLayerWVPlugin.jsSetHardwareAccelerationEnable?(\u4e09\u661f4.x\u7cfb\u5217\u4e0d\u80fd\u5f00\u542f\u786c\u4ef6\u52a0\u901f)isWindvaneEnable=%s"

    new-array v8, v5, [Ljava/lang/Object;

    .line 283
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    .line 282
    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 285
    .local v3, "type":I
    :goto_1
    const/4 v7, 0x0

    invoke-static {p3, v3, v7}, Lc8/lZm;->setLayerType(Landroid/taobao/windvane/webview/IWVWebView;ILandroid/graphics/Paint;)V

    .line 286
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 287
    const-string/jumbo v7, "PopLayerWVPlugin.jsSetHardwareAccelerationEnable?enable=%s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return v5

    .end local v1    # "isWindvaneEnable":Z
    .end local v3    # "type":I
    :cond_0
    move v1, v6

    .line 281
    goto :goto_0

    .restart local v1    # "isWindvaneEnable":Z
    :cond_1
    move v3, v5

    .line 284
    goto :goto_1
.end method

.method private jsSetModalThreshold(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;Ljava/lang/String;)Z
    .locals 8
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "popLayerWebView"    # Lc8/iZm;
    .param p3, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 254
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 256
    .local v1, "xxx":Lorg/json/JSONObject;
    const-string/jumbo v4, "modalThreshold"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 257
    .local v2, "modalThreshold":D
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-virtual {p2, v4}, Lc8/iZm;->setPenetrateAlpha(I)V

    .line 258
    const-string/jumbo v4, "PopLayerWVPlugin.jsSetModalThreshold?params=%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 260
    return v7
.end method

.method private jsUpdateMetaConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z
    .locals 20
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "popLayerWebView"    # Lc8/iZm;

    .prologue
    .line 171
    const-string/jumbo v14, "PopLayerWVPlugin.jsUpdateMetaConfig.params{%s}"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v12

    .line 174
    .local v12, "webView":Landroid/taobao/windvane/webview/IWVWebView;
    const-string/jumbo v14, "\\;"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "metaKeyValues":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v6, v7, v15

    .line 176
    .local v6, "keyValue":Ljava/lang/String;
    const-string/jumbo v14, "\\:"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "xxx":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v5, v13, v14

    .line 178
    .local v5, "key":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v11, v13, v14

    .line 179
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v14, "modalThreshold"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 181
    :try_start_0
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 182
    .local v8, "modalThreshold":D
    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-int v14, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lc8/iZm;->setPenetrateAlpha(I)V

    .line 183
    const-string/jumbo v14, "PopLayer.Configure.modalThresholdChange"

    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v18, "modalThreshold"

    .line 184
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    .line 183
    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v8    # "modalThreshold":D
    :goto_1
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "PopLayerWVPlugin.jsUpdateMetaConfig{modalThreshold}.error"

    invoke-static {v14, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v14, "embed"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 190
    const-string/jumbo v14, "false"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "0"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v3, 0x1

    .line 191
    .local v3, "embed":Z
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v14

    check-cast v14, Lc8/lYb;

    invoke-virtual {v14}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v14

    iput-boolean v3, v14, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->embed:Z

    .line 192
    if-eqz v3, :cond_2

    const-string/jumbo v4, "embed"

    .line 193
    .local v4, "eventType":Ljava/lang/String;
    :goto_3
    const-string/jumbo v14, "PopLayer.Configure.%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v3    # "embed":Z
    .end local v4    # "eventType":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 192
    .restart local v3    # "embed":Z
    :cond_2
    const-string/jumbo v4, "unembed"

    goto :goto_3

    .line 194
    .end local v3    # "embed":Z
    :cond_3
    const-string/jumbo v14, "showCloseBtn"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 196
    const-string/jumbo v14, "false"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "0"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v10, 0x1

    .line 197
    .local v10, "show":Z
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lc8/iZm;->showCloseButton(Z)V

    .line 198
    if-eqz v10, :cond_5

    const-string/jumbo v4, "closeBtnShow"

    .line 199
    .restart local v4    # "eventType":Ljava/lang/String;
    :goto_5
    const-string/jumbo v14, "PopLayer.Configure.%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    .end local v4    # "eventType":Ljava/lang/String;
    .end local v10    # "show":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 198
    .restart local v10    # "show":Z
    :cond_5
    const-string/jumbo v4, "closeBtnRemove"

    goto :goto_5

    .line 202
    .end local v10    # "show":Z
    :cond_6
    :try_start_1
    const-string/jumbo v14, "PopLayer.Configure.Error"

    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v18, "name"

    const-string/jumbo v19, "unknownKey"

    .line 203
    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "message"

    const-string/jumbo v19, "Unsupported configure name !"

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "code"

    const/16 v19, -0x1

    .line 204
    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    .line 202
    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 205
    :catch_1
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "PopLayerWVPlugin.jsUpdateMetaConfig.error"

    invoke-static {v14, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 210
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyValue":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "xxx":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 211
    const/4 v14, 0x1

    return v14
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v4, 0x0

    .line 65
    :try_start_0
    iget-object v3, p0, Lc8/mZm;->mPopLayerWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/iZm;

    .line 66
    .local v1, "popLayerWebView":Lc8/iZm;
    if-nez v1, :cond_0

    move v3, v4

    .line 111
    .end local v1    # "popLayerWebView":Lc8/iZm;
    :goto_0
    return v3

    .line 69
    .restart local v1    # "popLayerWebView":Lc8/iZm;
    :cond_0
    invoke-virtual {v1}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    .line 70
    .local v2, "webView":Landroid/taobao/windvane/webview/IWVWebView;
    if-nez v2, :cond_1

    move v3, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v3, "close"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-direct {p0, p3, v1}, Lc8/mZm;->jsClose(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;)Z

    move-result v3

    goto :goto_0

    .line 75
    :cond_2
    const-string/jumbo v3, "navToUrl"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsNavToUrl(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z

    move-result v3

    goto :goto_0

    .line 77
    :cond_3
    const-string/jumbo v3, "setHardwareAccelerationEnable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    invoke-direct {p0, p3, p2, v2}, Lc8/mZm;->jsSetHardwareAccelerationEnable(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v3

    goto :goto_0

    .line 79
    :cond_4
    const-string/jumbo v3, "increaseReadTimes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    invoke-virtual {v1}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v3

    check-cast v3, Lc8/lYb;

    invoke-direct {p0, p3, v3, v1}, Lc8/mZm;->jsIncreaseReadTimes(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/lYb;Lc8/jXb;)Z

    move-result v3

    goto :goto_0

    .line 81
    :cond_5
    const-string/jumbo v3, "setModalThreshold"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 82
    invoke-direct {p0, p3, v1, p2}, Lc8/mZm;->jsSetModalThreshold(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 83
    :cond_6
    const-string/jumbo v3, "display"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 84
    invoke-direct {p0, p3, v1}, Lc8/mZm;->jsDisplay(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lc8/iZm;)Z

    move-result v3

    goto :goto_0

    .line 85
    :cond_7
    const-string/jumbo v3, "selectAndOperate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 86
    invoke-direct {p0, v1, p3, p2}, Lc8/mZm;->jsSelectAndOperate(Lc8/iZm;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 87
    :cond_8
    const-string/jumbo v3, "setAlphaMode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 89
    invoke-direct {p0, p3}, Lc8/mZm;->jsSetAlphaMode(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v3

    goto/16 :goto_0

    .line 90
    :cond_9
    const-string/jumbo v3, "isSoundOff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 92
    invoke-direct {p0, v1, p3}, Lc8/mZm;->jsIsSoundOff(Lc8/jXb;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v3

    goto/16 :goto_0

    .line 93
    :cond_a
    const-string/jumbo v3, "updateMetaConfig"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 95
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsUpdateMetaConfig(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z

    move-result v3

    goto/16 :goto_0

    .line 96
    :cond_b
    const-string/jumbo v3, "operateTrackingView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsOperateTrackingView(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z

    move-result v3

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string/jumbo v3, "fireEvent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 99
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsOperateMasterView(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/jXb;)Z

    move-result v3

    goto/16 :goto_0

    .line 100
    :cond_d
    const-string/jumbo v3, "getTriggerEventInfo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 101
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsGetTriggerEventInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z

    move-result v3

    goto/16 :goto_0

    .line 102
    :cond_e
    const-string/jumbo v3, "getPopLayerVersion"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 103
    invoke-direct {p0, p3, p2, v1}, Lc8/mZm;->jsPopLayerVersion(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Lc8/iZm;)Z

    move-result v3

    goto/16 :goto_0

    .line 105
    :cond_f
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 106
    goto/16 :goto_0

    .line 108
    .end local v1    # "popLayerWebView":Lc8/iZm;
    .end local v2    # "webView":Landroid/taobao/windvane/webview/IWVWebView;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    move v3, v4

    .line 111
    goto/16 :goto_0
.end method
