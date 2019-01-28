.class public Lc8/HAb;
.super Ljava/lang/Object;
.source "SelfChecker.java"

# interfaces
.implements Lc8/xzb;


# static fields
.field private static instance:Lc8/HAb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/HAb;

    invoke-direct {v0}, Lc8/HAb;-><init>()V

    sput-object v0, Lc8/HAb;->instance:Lc8/HAb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/HAb;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/HAb;->instance:Lc8/HAb;

    return-object v0
.end method

.method private samplingCheck(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v4, 0x0

    .line 125
    .local v4, "event_type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 126
    .local v8, "monitor_point":Ljava/lang/String;
    const/4 v7, 0x0

    .line 127
    .local v7, "module":Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, "eventId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, "arg1":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_4

    .line 131
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v5, "jo":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 133
    const-string/jumbo v10, "cp"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 134
    .local v2, "cpObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 135
    const-string/jumbo v10, "ap"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    .local v0, "apObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v10, "type"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string/jumbo v10, "module"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    const-string/jumbo v10, "point"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 141
    :cond_0
    const-string/jumbo v10, "ut"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 142
    .local v9, "utObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 143
    const-string/jumbo v10, "eventId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string/jumbo v10, "arg1"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .end local v0    # "apObject":Lorg/json/JSONObject;
    .end local v9    # "utObject":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 148
    const-string/jumbo v10, "ap_sampling_result"

    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v11

    invoke-static {v4}, Lcom/alibaba/appmonitor/event/EventType;->getEventTypeByNameSpace(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v12

    invoke-virtual {v11, v12, v7, v8}, Lc8/AEb;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 150
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 151
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 154
    sget-object v10, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_3
    const-string/jumbo v10, "ut_sampling_result"

    invoke-static {}, Lc8/Pzb;->getInstance()Lc8/Pzb;

    move-result-object v11

    invoke-virtual {v11, v6}, Lc8/Pzb;->isSampleSuccess(Ljava/util/Map;)Z

    move-result v11

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v2    # "cpObject":Lorg/json/JSONObject;
    .end local v5    # "jo":Lorg/json/JSONObject;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v10

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v12, "current_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v12, "is_init"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v14

    invoke-virtual {v14}, Lc8/uzb;->isInit()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v12, "sdk_version"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v14

    invoke-virtual {v14}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v12, "appkey"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v14

    invoke-virtual {v14}, Lc8/uzb;->getAppkey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v12, "secret"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v14

    invoke-virtual {v14}, Lc8/uzb;->getSecret()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/uzb;->getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v2

    .line 73
    .local v2, "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    if-eqz v2, :cond_6

    .line 74
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v12, :cond_3

    .line 75
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "1"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_0
    :goto_0
    const-string/jumbo v12, "run_process"

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v13

    invoke-virtual {v13}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lc8/uBb;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v12, "ut_realtime_debug_switch"

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v13

    invoke-virtual {v13}, Lc8/uzb;->isRealTimeDebug()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v12, "ap_realtime_debug_switch"

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v13

    invoke-virtual {v13}, Lc8/uzb;->isApRealTimeDebugging()Z

    move-result v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v12, "ap_sampling_seed"

    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v13

    invoke-virtual {v13}, Lc8/AEb;->getSamplingSeed()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v12, "upload_interval"

    invoke-static {}, Lc8/nBb;->getInstance()Lc8/nBb;

    move-result-object v13

    invoke-virtual {v13}, Lc8/nBb;->getCurrentUploadInterval()J

    move-result-wide v14

    invoke-virtual {v9, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lc8/HAb;->samplingCheck(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/gBb;->hasSuccess()Z

    move-result v11

    .line 92
    .local v11, "uploadSuccess":Z
    const-string/jumbo v12, "upload_success"

    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v12, "upload_mode"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/nBb;->getInstance()Lc8/nBb;

    move-result-object v14

    invoke-virtual {v14}, Lc8/nBb;->getCurrentMode()Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/uzb;->isHttpService()Z

    move-result v8

    .line 95
    .local v8, "isDegradeToHttp":Z
    const-string/jumbo v12, "tnet_degrade"

    invoke-virtual {v9, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    if-eqz v8, :cond_1

    .line 97
    const-string/jumbo v12, "tnet_error_code"

    sget v13, Lc8/dBb;->mErrorCode:I

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    :cond_1
    if-nez v11, :cond_2

    .line 100
    const-string/jumbo v12, "http_error_code"

    sget v13, Lc8/qBb;->mErrorCode:I

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    :cond_2
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v12

    const-class v13, Lc8/Dzb;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-virtual/range {v12 .. v16}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 104
    .local v6, "entitys":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    if-eqz v6, :cond_4

    .line 105
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 106
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Dzb;

    .line 107
    .local v5, "entity":Lc8/Dzb;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "entity.getGroupname()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lc8/Dzb;->getConfContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 76
    .end local v5    # "entity":Lc8/Dzb;
    .end local v6    # "entitys":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    .end local v7    # "i":I
    .end local v8    # "isDegradeToHttp":Z
    .end local v11    # "uploadSuccess":Z
    :cond_3
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    if-eqz v12, :cond_5

    .line 77
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "2"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v12, "resport_error"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "ret":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/HAb;->report(Ljava/lang/String;)V

    .line 119
    return-object v10

    .line 78
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_5
    :try_start_2
    instance-of v12, v2, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v12, :cond_0

    .line 79
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "3"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 82
    :cond_6
    const-string/jumbo v12, "security_mode"

    const-string/jumbo v13, "-1"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v2    # "authRequest":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .restart local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 114
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v1, "SelfChecker"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lc8/GAb;

    invoke-direct {v0, p0, p1, p2}, Lc8/GAb;-><init>(Lc8/HAb;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "selfCheckTask":Ljava/lang/Runnable;
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v0, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 62
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v0

    const-string/jumbo v1, "selfcheck"

    invoke-virtual {v0, v1, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V

    .line 46
    return-void
.end method

.method public report(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "logs"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 170
    .local v3, "logsDir":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 171
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "analytics.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "analytics":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 187
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v0    # "analytics":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 176
    .restart local v0    # "analytics":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    invoke-static {}, Lc8/NBb;->e()V

    goto :goto_1
.end method
