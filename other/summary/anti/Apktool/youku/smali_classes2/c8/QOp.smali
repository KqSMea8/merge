.class public Lc8/QOp;
.super Ljava/lang/Object;
.source "InnerProtocolParamBuilderImpl.java"

# interfaces
.implements Lc8/POp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerProtocolParamBuilderImpl"


# instance fields
.field private mtopConfig:Lc8/kOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    return-void
.end method

.method private buildExtParams(Lc8/IMp;Ljava/util/Map;)V
    .locals 16
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
    .line 174
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 176
    .local v5, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    const-string/jumbo v13, "pv"

    const-string/jumbo v14, "5.1"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v13, "netType"

    const-string/jumbo v14, "netType"

    invoke-static {v14}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v13, "nq"

    const-string/jumbo v14, "nq"

    invoke-static {v14}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v13, "umt"

    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v14}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "umt"

    invoke-static {v14, v15}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    iget-object v3, v13, Lc8/kOp;->appVersion:Ljava/lang/String;

    .line 183
    .local v3, "appVersion":Ljava/lang/String;
    invoke-static {v3}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 184
    const-string/jumbo v13, "x-app-ver"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    iget-object v12, v13, Lc8/kOp;->xOrangeQ:Ljava/lang/String;

    .line 188
    .local v12, "xOrangeQ":Ljava/lang/String;
    invoke-static {v12}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 189
    const-string/jumbo v13, "x-orange-q"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    const-string/jumbo v13, "ua"

    invoke-static {v13}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "userAgent":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 194
    const-string/jumbo v13, "user-agent"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    const-string/jumbo v13, "x-c-traceid"

    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v13, "f-refer"

    const-string/jumbo v14, "mtop"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget v13, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    if-lez v13, :cond_5

    .line 202
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v6, "netInfo":Lorg/json/JSONObject;
    iget v13, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 204
    sget-object v11, Lc8/yQp;->ssid:Ljava/lang/String;

    .line 205
    .local v11, "wifiSSID":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 207
    :try_start_0
    const-string/jumbo v13, "SSID"

    invoke-virtual {v6, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v11    # "wifiSSID":Ljava/lang/String;
    :cond_3
    :goto_0
    iget v13, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_4

    .line 215
    sget-object v10, Lc8/yQp;->bssid:Ljava/lang/String;

    .line 216
    .local v10, "wifiBSSID":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 218
    :try_start_1
    const-string/jumbo v13, "BSSID"

    invoke-virtual {v6, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    .end local v10    # "wifiBSSID":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 226
    const-string/jumbo v13, "x-netinfo"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v6    # "netInfo":Lorg/json/JSONObject;
    :cond_5
    iget-object v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 232
    .local v9, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    if-eqz v9, :cond_a

    sget-object v13, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v13}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v14}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 234
    iget-object v13, v9, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-static {v13}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 235
    const-string/jumbo v13, "x-unitinfo"

    iget-object v14, v9, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v13}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v13

    iget-object v7, v13, Lc8/kOp;->unitService:Lc8/cPp;

    .line 238
    .local v7, "unitService":Lc8/cPp;
    if-eqz v7, :cond_7

    .line 239
    invoke-interface {v7}, Lc8/cPp;->getApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v2

    .line 240
    .local v2, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v2, :cond_7

    iget-object v13, v2, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-static {v13}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 241
    const-string/jumbo v13, "x-m-unitapi-v"

    iget-object v14, v2, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v2    # "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v7    # "unitService":Lc8/cPp;
    :cond_7
    :goto_2
    iget-object v13, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 251
    const-string/jumbo v13, "x-page-name"

    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_8
    iget-object v13, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    if-eqz v13, :cond_9

    .line 255
    const-string/jumbo v13, "x-page-url"

    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    iget-object v13, v13, Lc8/kOp;->mtopGlobalABTestParams:Ljava/util/Map;

    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    .local v1, "abtestParam":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 259
    const-string/jumbo v13, "x-page-mab"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v1    # "abtestParam":Ljava/lang/String;
    :cond_9
    return-void

    .line 208
    .end local v9    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    .restart local v6    # "netInfo":Lorg/json/JSONObject;
    .restart local v11    # "wifiSSID":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 209
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v13, "mtopsdk.InnerProtocolParamBuilderImpl"

    const-string/jumbo v14, "set wifi ssid error."

    invoke-static {v13, v14, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 219
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v11    # "wifiSSID":Ljava/lang/String;
    .restart local v10    # "wifiBSSID":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 220
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string/jumbo v13, "mtopsdk.InnerProtocolParamBuilderImpl"

    const-string/jumbo v14, "set wifi bssid error."

    invoke-static {v13, v14, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 246
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "netInfo":Lorg/json/JSONObject;
    .end local v10    # "wifiBSSID":Ljava/lang/String;
    .restart local v9    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :cond_a
    const-string/jumbo v13, "x-unitinfo"

    sget-object v14, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v14}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private prepareSignExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "openAppKey"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .local v0, "extBuilder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string/jumbo v1, "openappkey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    invoke-static {p2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "accesstoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 51
    .local v20, "startTime":J
    move-object/from16 v0, p1

    iget-object v10, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 52
    .local v10, "mtopInstance":Lc8/AOp;
    invoke-virtual {v10}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/QOp;->mtopConfig:Lc8/kOp;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v15, v0, Lc8/kOp;->sign:Lc8/gQp;

    .line 54
    .local v15, "signGenerator":Lc8/gQp;
    if-nez v15, :cond_0

    .line 55
    const-string/jumbo v28, "mtopsdk.InnerProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "ISign of mtopConfig in mtopInstance is null"

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v13, 0x0

    .line 164
    :goto_0
    return-object v13

    .line 59
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 60
    .local v12, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 62
    .local v11, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v13, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v28, "utdid"

    invoke-virtual {v10}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v29, "uid"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    move-object/from16 v28, v0

    :goto_1
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 71
    const-string/jumbo v28, "reqbiz-ext"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lc8/kOp;->appKey:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QOp;->mtopConfig:Lc8/kOp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lc8/kOp;->authCode:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 80
    :cond_2
    iget-object v4, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 81
    .local v4, "appKey":Ljava/lang/String;
    iget-object v5, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 83
    .local v5, "authCode":Ljava/lang/String;
    const-string/jumbo v28, "appKey"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v28, "data"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 90
    .local v24, "time":Ljava/lang/String;
    const-string/jumbo v28, "t"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v28, "api"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v28, "v"

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v28, "sid"

    invoke-virtual {v10}, Lc8/AOp;->getSid()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v28, "ttid"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v28, "deviceId"

    invoke-virtual {v10}, Lc8/AOp;->getDeviceId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v28, "lat"

    invoke-static/range {v28 .. v28}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "lat":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 107
    const-string/jumbo v28, "lng"

    invoke-static/range {v28 .. v28}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "lng":Ljava/lang/String;
    invoke-static {v7}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 109
    const-string/jumbo v28, "lat"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v28, "lng"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v7    # "lng":Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Lc8/hOp;->getMtopTotalFeatures(Lc8/AOp;)J

    move-result-wide v26

    .line 116
    .local v26, "x_features":J
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    move/from16 v28, v0

    if-lez v28, :cond_4

    .line 117
    const/16 v28, 0xb

    invoke-static/range {v28 .. v28}, Lc8/hOp;->getMtopFeatureValue(I)J

    move-result-wide v28

    or-long v26, v26, v28

    .line 119
    :cond_4
    const-string/jumbo v28, "x-features"

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-boolean v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 124
    const-string/jumbo v28, "exttype"

    sget-object v29, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual/range {v29 .. v29}, Lmtopsdk/mtop/domain/ApiTypeEnum;->getApiType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v28, "extdata"

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lc8/QOp;->prepareSignExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 129
    .local v18, "startSignTime":J
    invoke-interface {v15, v13, v4, v5}, Lc8/gQp;->getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 130
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

    .line 131
    invoke-static {v14}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v28, 0x80

    move/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v8, "logBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v28, "apiKey="

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v28, " call getMtopApiSign failed.[appKey="

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v28, ", authCode="

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v28, "mtopsdk.InnerProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "authCode":Ljava/lang/String;
    .end local v6    # "lat":Ljava/lang/String;
    .end local v8    # "logBuf":Ljava/lang/StringBuilder;
    .end local v14    # "sign":Ljava/lang/String;
    .end local v18    # "startSignTime":J
    .end local v24    # "time":Ljava/lang/String;
    .end local v26    # "x_features":J
    :cond_6
    invoke-virtual {v10}, Lc8/AOp;->getUserId()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 139
    .restart local v4    # "appKey":Ljava/lang/String;
    .restart local v5    # "authCode":Ljava/lang/String;
    .restart local v6    # "lat":Ljava/lang/String;
    .restart local v14    # "sign":Ljava/lang/String;
    .restart local v18    # "startSignTime":J
    .restart local v24    # "time":Ljava/lang/String;
    .restart local v26    # "x_features":J
    :cond_7
    const-string/jumbo v28, "sign"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v28, v0

    if-ltz v28, :cond_8

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 144
    .local v22, "startWuaTime":J
    iget v0, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-interface {v15, v14, v5, v0}, Lc8/gQp;->getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 145
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

    .line 146
    const-string/jumbo v28, "wua"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static/range {v25 .. v25}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    sget-object v28, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static/range {v28 .. v28}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 148
    const-string/jumbo v28, "mtopsdk.InnerProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " call getAvmpSign for wua fail."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v22    # "startWuaTime":J
    .end local v25    # "wua":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 154
    .local v16, "startMiniWuaTime":J
    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v15, v0, v4, v5, v1}, Lc8/gQp;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "mini_wua":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v16

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lc8/pPp;->computeMiniWuaTime:J

    .line 156
    const-string/jumbo v28, "x-mini-wua"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v9}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 158
    const-string/jumbo v28, "mtopsdk.InnerProtocolParamBuilderImpl"

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

    .line 162
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lc8/QOp;->buildExtParams(Lc8/IMp;Ljava/util/Map;)V

    .line 163
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
