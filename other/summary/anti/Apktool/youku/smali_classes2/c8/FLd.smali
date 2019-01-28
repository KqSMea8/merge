.class public Lc8/FLd;
.super Ljava/lang/Object;
.source "UxIPUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPlatformMessage(Ljava/lang/String;)Lc8/uHd;
    .locals 8
    .param p0, "platformExtra"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v2, Lc8/uHd;

    invoke-direct {v2}, Lc8/uHd;-><init>()V

    .line 118
    .local v2, "platformMessage":Lc8/uHd;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "platformExtraJsonObj":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 122
    .local v5, "taskId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 123
    .local v4, "seqId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 124
    .local v3, "pushTimestamp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 125
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    const-string/jumbo v6, "task_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    :cond_0
    const-string/jumbo v6, "seq_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const-string/jumbo v6, "seq_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_1
    const-string/jumbo v6, "push_timestamp"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    const-string/jumbo v6, "push_timestamp"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_2
    const-string/jumbo v6, "device_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    const-string/jumbo v6, "device_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_3
    invoke-static {}, Lc8/uHd;->builder()Lc8/tHd;

    move-result-object v6

    .line 138
    invoke-virtual {v6, v5}, Lc8/tHd;->taskId(Ljava/lang/String;)Lc8/tHd;

    move-result-object v6

    .line 139
    invoke-virtual {v6, v0}, Lc8/tHd;->deviceId(Ljava/lang/String;)Lc8/tHd;

    move-result-object v6

    .line 140
    invoke-virtual {v6, v3}, Lc8/tHd;->pushTimesTamp(Ljava/lang/String;)Lc8/tHd;

    move-result-object v6

    .line 141
    invoke-virtual {v6, v4}, Lc8/tHd;->seqId(Ljava/lang/String;)Lc8/tHd;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lc8/tHd;->build()Lc8/uHd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 149
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "platformExtraJsonObj":Lorg/json/JSONObject;
    .end local v3    # "pushTimestamp":Ljava/lang/String;
    .end local v4    # "seqId":Ljava/lang/String;
    .end local v5    # "taskId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 144
    :catch_0
    move-exception v6

    const-string/jumbo v6, "UxIPUtils"

    const-string/jumbo v7, "the platformExtra parse error"

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_4
    const-string/jumbo v6, "UxIPUtils"

    const-string/jumbo v7, "the platformExtra is empty"

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTaskId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string/jumbo v3, "extra_app_push_task_Id"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "taskId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    :try_start_0
    const-string/jumbo v3, "pushMessage"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;

    .line 77
    .local v1, "mPushMessage":Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getTaskId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v1    # "mPushMessage":Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
    :cond_0
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "no push platform task"

    .line 82
    const-string/jumbo v3, "UxIPUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paese MessageV2 error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushInfo"    # Ljava/lang/String;
    .param p3, "pushInfoType"    # I

    .prologue
    .line 63
    const-string/jumbo v0, "3.4.3-SNAPSHOT"

    invoke-static {p0, p1, v0, p2, p3}, Lc8/FLd;->notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public static notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushsdkVersion"    # Ljava/lang/String;
    .param p3, "pushInfo"    # Ljava/lang/String;
    .param p4, "pushInfoType"    # I

    .prologue
    .line 66
    invoke-static {p1}, Lc8/FLd;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "statistics_imei_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {p1}, Lc8/FLd;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 67
    invoke-static/range {v0 .. v6}, Lc8/FLd;->onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    :cond_0
    return-void
.end method

.method public static notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushInfo"    # Ljava/lang/String;
    .param p2, "pushInfoType"    # I
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "imei"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "3.4.3-SNAPSHOT"

    move-object v0, p0

    move-object v2, p4

    move-object v3, p3

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lc8/FLd;->onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    :cond_0
    return-void
.end method

.method public static onClickPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x1

    const-string/jumbo v6, "cpm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static onDeletePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x1

    const-string/jumbo v6, "dpm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emitNow"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "taskId"    # Ljava/lang/String;
    .param p5, "seqId"    # Ljava/lang/String;
    .param p6, "eventName"    # Ljava/lang/String;
    .param p7, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v0, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "taskId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v1, "deviceId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v1, "timestamp"

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    .end local p7    # "pushTimestamp":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v1, "package_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v1, "pushsdk_version"

    const-string/jumbo v2, "3.4.3-SNAPSHOT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const-string/jumbo v1, "seq_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    invoke-static {p0, p1, p6, v0}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V

    .line 217
    return-void
.end method

.method public static onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emitNow"    # Z
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p3, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "UxIPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLogEvent eventName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] properties = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "notification_service_message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/OKd;->getAndroidTrackerClassic(Landroid/content/Context;Lc8/WKd;)Lc8/sLd;

    move-result-object v1

    invoke-static {}, Lc8/iLd;->builder()Lc8/hLd;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2}, Lc8/hLd;->eventName(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "timestamp"

    .line 231
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lc8/hLd;->timestamp(J)Lc8/dLd;

    move-result-object v0

    check-cast v0, Lc8/hLd;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/hLd;->eventCreateTime(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "deviceId"

    .line 233
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/hLd;->deviceId(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "package_name"

    .line 234
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/hLd;->packageName(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "pushsdk_version"

    .line 235
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/hLd;->pushsdkVersion(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "taskId"

    .line 236
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/hLd;->taskId(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "seq_id"

    .line 237
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Lc8/hLd;->seqId(Ljava/lang/String;)Lc8/hLd;

    move-result-object v2

    const-string/jumbo v0, "package_name"

    .line 238
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lc8/ELd;->getMessageSeqInCrease(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lc8/hLd;->messageSeq(Ljava/lang/String;)Lc8/hLd;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lc8/hLd;->build()Lc8/iLd;

    move-result-object v0

    .line 229
    invoke-virtual {v1, v0, p1}, Lc8/sLd;->track(Lc8/iLd;Z)V

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    const-string/jumbo v0, "seq_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static onNoShowPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v1, 0x0

    const-string/jumbo v6, "npm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v1, 0x0

    const-string/jumbo v6, "rpe"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static onReceiveThroughMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x1

    const-string/jumbo v6, "rpe"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "pushsdkVersion"    # Ljava/lang/String;
    .param p5, "pushInfo"    # Ljava/lang/String;
    .param p6, "pushInfoType"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "taskId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "deviceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "package_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "pushsdk_version"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "push_info"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "push_info_type"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v1, 0x0

    const-string/jumbo v2, "notification_service_message"

    invoke-static {p0, v1, v2, v0}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method public static onShowInBoxPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v1, 0x0

    const-string/jumbo v6, "sipm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "seqId"    # Ljava/lang/String;
    .param p5, "pushTimestamp"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v1, 0x1

    const-string/jumbo v6, "spm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lc8/FLd;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
