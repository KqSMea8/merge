.class public Lc8/ROp;
.super Ljava/lang/Object;
.source "OpenProtocolParamBuilderImpl.java"

# interfaces
.implements Lc8/POp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.OpenProtocolParamBuilderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildExtParams(Lc8/IMp;Ljava/util/Map;)V
    .locals 5
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
    .line 137
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v4}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v4

    iget-object v0, v4, Lc8/kOp;->appVersion:Ljava/lang/String;

    .line 138
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string/jumbo v4, "x-app-ver"

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    const-string/jumbo v4, "ua"

    invoke-static {v4}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "userAgent":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 144
    const-string/jumbo v4, "user-agent"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    const-string/jumbo v4, "lat"

    invoke-static {v4}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "lat":Ljava/lang/String;
    invoke-static {v1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    const-string/jumbo v4, "lng"

    invoke-static {v4}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "lng":Ljava/lang/String;
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    const-string/jumbo v4, "lat"

    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v4, "lng"

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v2    # "lng":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public buildParams(Lc8/IMp;)Ljava/util/Map;
    .locals 30
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
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 35
    .local v18, "startTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "instanceId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v8

    .line 37
    .local v8, "mtopConfig":Lc8/kOp;
    iget-object v0, v8, Lc8/kOp;->sign:Lc8/gQp;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 38
    const-string/jumbo v26, "mtopsdk.OpenProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " [buildParams] ISign in mtopConfig of mtopInstance  is null"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v12, 0x0

    .line 124
    :goto_0
    return-object v12

    .line 42
    :cond_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 43
    .local v11, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    move-object/from16 v0, p1

    iget-object v10, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 44
    .local v10, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    move-object/from16 v0, p1

    iget-object v9, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 46
    .local v9, "mtopInstance":Lc8/AOp;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v26, "api"

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v26, "v"

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v26, "data"

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 57
    iget-object v0, v8, Lc8/kOp;->appKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 58
    iget-object v0, v8, Lc8/kOp;->authCode:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v4, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 61
    .local v4, "appKey":Ljava/lang/String;
    iget-object v5, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 63
    .local v5, "authCode":Ljava/lang/String;
    const-string/jumbo v26, "appKey"

    move-object/from16 v0, v26

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v26, "accessToken"

    iget-object v0, v8, Lc8/kOp;->instanceId:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string/jumbo v28, "accessToken"

    invoke-static/range {v27 .. v28}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "time":Ljava/lang/String;
    const-string/jumbo v26, "t"

    move-object/from16 v0, v26

    invoke-interface {v12, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v26, "utdid"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v26, "pv"

    const-string/jumbo v27, "1.0"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v9}, Lc8/hOp;->getMtopTotalFeatures(Lc8/AOp;)J

    move-result-wide v24

    .line 80
    .local v24, "x_features":J
    const-string/jumbo v26, "x-features"

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v26, "ttid"

    iget-object v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v26, "sid"

    invoke-virtual {v9}, Lc8/AOp;->getSid()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v14, v8, Lc8/kOp;->sign:Lc8/gQp;

    .line 91
    .local v14, "signGenerator":Lc8/gQp;
    iget v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v26, v0

    if-ltz v26, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 93
    .local v20, "startWuaTime":J
    iget-object v0, v8, Lc8/kOp;->wuaAuthCode:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 94
    .local v23, "wuaAuthCode":Ljava/lang/String;
    iget v0, v10, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v14, v15, v4, v0, v1}, Lc8/gQp;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 95
    .local v22, "wua":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lc8/pPp;->computeWuaTime:J

    .line 96
    const-string/jumbo v26, "wua"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static/range {v22 .. v22}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    sget-object v26, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static/range {v26 .. v26}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v26, 0x80

    move/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    .local v7, "log":Ljava/lang/StringBuilder;
    const-string/jumbo v26, "apiKey="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v26, " call getSecurityBodyDataEx fail, wua is null.[appKey="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v26, ", wuaAuthCode="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v26, "mtopsdk.OpenProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v7    # "log":Ljava/lang/StringBuilder;
    .end local v20    # "startWuaTime":J
    .end local v22    # "wua":Ljava/lang/String;
    .end local v23    # "wuaAuthCode":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "startSignTime":J
    move-object/from16 v26, v12

    .line 108
    check-cast v26, Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-interface {v14, v0, v4, v5}, Lc8/gQp;->getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "sign":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v16

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lc8/pPp;->computeSignTime:J

    .line 110
    invoke-static {v13}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v26, 0x80

    move/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .restart local v7    # "log":Ljava/lang/StringBuilder;
    const-string/jumbo v26, "apiKey="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v26, " call getMtopApiSign failed.[appKey="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v26, ", authCode="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v26, "mtopsdk.OpenProtocolParamBuilderImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v7    # "log":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v26, "sign"

    move-object/from16 v0, v26

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lc8/ROp;->buildExtParams(Lc8/IMp;Ljava/util/Map;)V

    .line 123
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v18

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lc8/pPp;->buildParamsTime:J

    goto/16 :goto_0
.end method
