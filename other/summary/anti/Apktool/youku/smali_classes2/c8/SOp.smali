.class public Lc8/SOp;
.super Ljava/lang/Object;
.source "ProductProtocolParamBuilderImpl.java"

# interfaces
.implements Lc8/POp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ProductProtocolParamBuilderImpl"


# instance fields
.field private mtopConfig:Lc8/kOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    return-void
.end method

.method private buildExtParams(Lc8/IMp;Ljava/util/Map;)V
    .locals 11
    .param p1, "mtopContext"    # Lc8/IMp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/IMp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 169
    .local v2, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    const-string/jumbo v8, "netType"

    const-string/jumbo v9, "netType"

    invoke-static {v9}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v8, "nq"

    const-string/jumbo v9, "nq"

    invoke-static {v9}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v8, "umt"

    iget-object v9, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v9}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "umt"

    invoke-static {v9, v10}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v8, p0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    iget-object v0, v8, Lc8/kOp;->appVersion:Ljava/lang/String;

    .line 175
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 176
    const-string/jumbo v8, "x-app-ver"

    invoke-interface {p2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    iget-object v8, p0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    iget-object v7, v8, Lc8/kOp;->xOrangeQ:Ljava/lang/String;

    .line 180
    .local v7, "xOrangeQ":Ljava/lang/String;
    invoke-static {v7}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 181
    const-string/jumbo v8, "x-orange-q"

    invoke-interface {p2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1
    const-string/jumbo v8, "ua"

    invoke-static {v8}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "userAgent":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 186
    const-string/jumbo v8, "user-agent"

    invoke-interface {p2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_2
    const-string/jumbo v8, "x-c-traceid"

    iget-object v9, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v8, "f-refer"

    const-string/jumbo v9, "mtop"

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget v8, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    if-lez v8, :cond_5

    .line 194
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v3, "netInfo":Lorg/json/JSONObject;
    iget v8, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 196
    sget-object v6, Lc8/yQp;->ssid:Ljava/lang/String;

    .line 197
    .local v6, "wifiSSID":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 199
    :try_start_0
    const-string/jumbo v8, "SSID"

    invoke-virtual {v3, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v6    # "wifiSSID":Ljava/lang/String;
    :cond_3
    :goto_0
    iget v8, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    .line 207
    sget-object v5, Lc8/yQp;->bssid:Ljava/lang/String;

    .line 208
    .local v5, "wifiBSSID":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 210
    :try_start_1
    const-string/jumbo v8, "BSSID"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .end local v5    # "wifiBSSID":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 218
    const-string/jumbo v8, "x-netinfo"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v3    # "netInfo":Lorg/json/JSONObject;
    :cond_5
    return-void

    .line 200
    .restart local v3    # "netInfo":Lorg/json/JSONObject;
    .restart local v6    # "wifiSSID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "mtopsdk.ProductProtocolParamBuilderImpl"

    const-string/jumbo v9, "set wifi ssid error."

    invoke-static {v8, v9, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "wifiSSID":Ljava/lang/String;
    .restart local v5    # "wifiBSSID":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 212
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v8, "mtopsdk.ProductProtocolParamBuilderImpl"

    const-string/jumbo v9, "set wifi bssid error."

    invoke-static {v8, v9, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public buildParams(Lc8/IMp;)Ljava/util/Map;
    .locals 32
    .param p1, "mtopContext"    # Lc8/IMp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/IMp;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 49
    .local v20, "startTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "instanceId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/SOp;->mtopConfig:Lc8/kOp;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v15, v0, Lc8/kOp;->sign:Lc8/gQp;

    .line 52
    .local v15, "signGenerator":Lc8/gQp;
    if-nez v15, :cond_0

    .line 53
    const-string/jumbo v28, "mtopsdk.ProductProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " ISign of mtopConfig in mtopInstance is null"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v13, 0x0

    .line 157
    :goto_0
    return-object v13

    .line 57
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 58
    .local v12, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 60
    .local v11, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v13, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v28, "data"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 68
    const-string/jumbo v28, "reqbiz-ext"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/hOp;->getMtopTotalFeatures(Lc8/AOp;)J

    move-result-wide v26

    .line 73
    .local v26, "x_features":J
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    move/from16 v28, v0

    if-lez v28, :cond_2

    .line 74
    const/16 v28, 0xb

    invoke-static/range {v28 .. v28}, Lc8/hOp;->getMtopFeatureValue(I)J

    move-result-wide v28

    or-long v26, v26, v28

    .line 76
    :cond_2
    const-string/jumbo v28, "x-features"

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v28, "lat"

    invoke-static/range {v28 .. v28}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "lat":Ljava/lang/String;
    invoke-static {v7}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 81
    const-string/jumbo v28, "lng"

    invoke-static/range {v28 .. v28}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "lng":Ljava/lang/String;
    invoke-static {v8}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 83
    const-string/jumbo v28, "lat"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v28, "lng"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v8    # "lng":Ljava/lang/String;
    :cond_3
    const-string/jumbo v28, "pv"

    const-string/jumbo v29, "1.0"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v28, "utdid"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v29, "uid"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    move-object/from16 v28, v0

    :goto_1
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lc8/kOp;->appKey:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/SOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lc8/kOp;->authCode:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 100
    :cond_4
    iget-object v4, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 101
    .local v4, "appKey":Ljava/lang/String;
    iget-object v5, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 103
    .local v5, "authCode":Ljava/lang/String;
    const-string/jumbo v28, "appKey"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 108
    .local v24, "time":Ljava/lang/String;
    const-string/jumbo v28, "t"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v28, "api"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v28, "v"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v28, "sid"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lc8/AOp;->getSid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v28, "ttid"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .local v18, "startSignTime":J
    move-object/from16 v28, v13

    .line 122
    check-cast v28, Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-interface {v15, v0, v4, v5}, Lc8/gQp;->getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "sign":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v18

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lc8/pPp;->computeSignTime:J

    .line 124
    invoke-static {v14}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v28, 0x80

    move/from16 v0, v28

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v9, "logBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v28, "apiKey="

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v28, " call getMtopApiSign failed.[appKey="

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v28, ", authCode="

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v28, "mtopsdk.ProductProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "authCode":Ljava/lang/String;
    .end local v9    # "logBuf":Ljava/lang/StringBuilder;
    .end local v14    # "sign":Ljava/lang/String;
    .end local v18    # "startSignTime":J
    .end local v24    # "time":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lc8/AOp;->getUserId()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 132
    .restart local v4    # "appKey":Ljava/lang/String;
    .restart local v5    # "authCode":Ljava/lang/String;
    .restart local v14    # "sign":Ljava/lang/String;
    .restart local v18    # "startSignTime":J
    .restart local v24    # "time":Ljava/lang/String;
    :cond_6
    const-string/jumbo v28, "sign"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v28, v0

    if-ltz v28, :cond_7

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 137
    .local v22, "startWuaTime":J
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v15, v0, v4, v5, v1}, Lc8/gQp;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 138
    .local v25, "wua":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lc8/pPp;->computeWuaTime:J

    .line 139
    const-string/jumbo v28, "wua"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static/range {v25 .. v25}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    sget-object v28, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static/range {v28 .. v28}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 141
    const-string/jumbo v28, "mtopsdk.ProductProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " call getSecurityBodyDataEx for wua failed."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v22    # "startWuaTime":J
    .end local v25    # "wua":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 147
    .local v16, "startMiniWuaTime":J
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v15, v0, v4, v5, v1}, Lc8/gQp;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "mini_wua":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v16

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lc8/pPp;->computeMiniWuaTime:J

    .line 149
    const-string/jumbo v28, "x-mini-wua"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v10}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 151
    const-string/jumbo v28, "mtopsdk.ProductProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " call getSecurityBodyDataEx for mini_wua failed."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lc8/SOp;->buildExtParams(Lc8/IMp;Ljava/util/Map;)V

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lc8/pPp;->buildParamsTime:J

    goto/16 :goto_0
.end method
