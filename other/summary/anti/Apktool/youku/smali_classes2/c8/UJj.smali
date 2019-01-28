.class public Lc8/UJj;
.super Lc8/SJj;
.source "MTopConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lc8/COp;",
        "O:",
        "Lmtopsdk/mtop/domain/MtopResponse;",
        ">",
        "Lc8/SJj",
        "<TI;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    invoke-direct {p0}, Lc8/SJj;-><init>()V

    return-void
.end method

.method private buildRequest(Lc8/dJj;)Lc8/COp;
    .locals 8
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 60
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    invoke-virtual {p1}, Lc8/dJj;->getMtop()Lc8/AOp;

    move-result-object v5

    if-nez v5, :cond_3

    .line 61
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    .line 65
    .local v0, "mtop":Lc8/AOp;
    :goto_0
    invoke-virtual {p1}, Lc8/dJj;->getTtid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 66
    invoke-virtual {p1}, Lc8/dJj;->getTtid()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "ttid":Ljava/lang/String;
    :goto_1
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 72
    .local v2, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {p1}, Lc8/dJj;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lc8/dJj;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lc8/dJj;->isNeedEcode()Z

    move-result v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 75
    invoke-virtual {p1}, Lc8/dJj;->isNeedSession()Z

    move-result v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 77
    invoke-virtual {p1}, Lc8/dJj;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    invoke-virtual {p1}, Lc8/dJj;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lc8/dJj;->getDataParams()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {p1}, Lc8/dJj;->getDataParams()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v2, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 85
    :cond_1
    invoke-virtual {v0, v2, v4}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v1

    .line 86
    .local v1, "mtopBuilder":Lc8/COp;
    invoke-virtual {p1}, Lc8/dJj;->getMtopHeaders()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {p1}, Lc8/dJj;->getMtopHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc8/COp;->headers(Ljava/util/Map;)Lc8/COp;

    .line 90
    :cond_2
    invoke-virtual {p1}, Lc8/dJj;->getmTopParams()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 91
    invoke-virtual {p1}, Lc8/dJj;->getmTopParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .local v3, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lc8/COp;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    goto :goto_2

    .line 63
    .end local v0    # "mtop":Lc8/AOp;
    .end local v1    # "mtopBuilder":Lc8/COp;
    .end local v2    # "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    .end local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "ttid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lc8/dJj;->getMtop()Lc8/AOp;

    move-result-object v0

    .restart local v0    # "mtop":Lc8/AOp;
    goto/16 :goto_0

    .line 68
    :cond_4
    invoke-static {}, Lc8/FDj;->getTtid()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "ttid":Ljava/lang/String;
    goto/16 :goto_1

    .line 96
    .restart local v1    # "mtopBuilder":Lc8/COp;
    .restart local v2    # "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_5
    invoke-virtual {p1}, Lc8/dJj;->getMtopConnectTimeout()I

    move-result v5

    invoke-virtual {v1, v5}, Lc8/COp;->setConnectionTimeoutMilliSecond(I)Lc8/COp;

    .line 97
    invoke-virtual {p1}, Lc8/dJj;->getMtopReadTimeout()I

    move-result v5

    invoke-virtual {v1, v5}, Lc8/COp;->setSocketTimeoutMilliSecond(I)Lc8/COp;

    .line 98
    invoke-virtual {p1}, Lc8/dJj;->getMtopMethod()Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 99
    invoke-virtual {p1}, Lc8/dJj;->getmTopRetryTimes()I

    move-result v5

    invoke-virtual {v1, v5}, Lc8/COp;->retryTime(I)Lc8/COp;

    .line 101
    invoke-virtual {p1}, Lc8/dJj;->getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 102
    invoke-virtual {p1}, Lc8/dJj;->getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc8/COp;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;

    .line 105
    :cond_6
    invoke-virtual {p1}, Lc8/dJj;->getCustomDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 106
    invoke-virtual {p1}, Lc8/dJj;->getCustomDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc8/COp;->setCustomDomain(Ljava/lang/String;)Lc8/COp;

    .line 109
    :cond_7
    invoke-virtual {p1}, Lc8/dJj;->getMteeUa()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 110
    invoke-virtual {p1}, Lc8/dJj;->getMteeUa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc8/COp;->addMteeUa(Ljava/lang/String;)Lc8/COp;

    .line 113
    :cond_8
    invoke-virtual {p1}, Lc8/dJj;->getUseWua()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 114
    invoke-virtual {p1}, Lc8/dJj;->getUseWua()I

    move-result v5

    invoke-virtual {v1, v5}, Lc8/COp;->useWua(I)Lc8/COp;

    .line 117
    :cond_9
    invoke-virtual {p1}, Lc8/dJj;->getOpenAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p1}, Lc8/dJj;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 118
    invoke-virtual {p1}, Lc8/dJj;->getOpenAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lc8/dJj;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lc8/COp;->addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    .line 120
    :cond_a
    invoke-virtual {p1}, Lc8/dJj;->isUseCache()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 121
    invoke-virtual {v1}, Lc8/COp;->useCache()Lc8/COp;

    .line 123
    :cond_b
    invoke-virtual {p1}, Lc8/dJj;->isCacheControlNoCache()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 124
    invoke-virtual {v1}, Lc8/COp;->setCacheControlNoCache()Lc8/COp;

    .line 127
    :cond_c
    return-object v1
.end method

.method private buildResponse(Lmtopsdk/mtop/domain/MtopResponse;)Lc8/eJj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    .local p1, "response":Lmtopsdk/mtop/domain/MtopResponse;, "TO;"
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v0

    .line 132
    .local v0, "ykResponse":Lc8/eJj;
    invoke-virtual {v0, p1}, Lc8/eJj;->setMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 133
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setResponseCode(I)V

    .line 134
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setConnHeadFields(Ljava/util/Map;)V

    .line 135
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/PJj;->isSuccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/PJj;->getErrorCode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setYkErrorCode(I)V

    .line 138
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pPp;->getNetStat()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setStatisticData(Lanetwork/channel/statist/StatisticData;)V

    .line 141
    :cond_1
    return-object v0
.end method


# virtual methods
.method public requestConvert(Lc8/dJj;)Lc8/COp;
    .locals 1
    .param p1, "ykRequest"    # Lc8/dJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/dJj;",
            ")TI;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    invoke-direct {p0, p1}, Lc8/UJj;->buildRequest(Lc8/dJj;)Lc8/COp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic requestConvert(Lc8/dJj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    invoke-virtual {p0, p1}, Lc8/UJj;->requestConvert(Lc8/dJj;)Lc8/COp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseConvert(Ljava/lang/Object;)Lc8/eJj;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {p0, p1}, Lc8/UJj;->responseConvert(Lmtopsdk/mtop/domain/MtopResponse;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method

.method public responseConvert(Lmtopsdk/mtop/domain/MtopResponse;)Lc8/eJj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/UJj;, "Lcom/youku/network/converter/MTopConverter<TI;TO;>;"
    .local p1, "response":Lmtopsdk/mtop/domain/MtopResponse;, "TO;"
    invoke-direct {p0, p1}, Lc8/UJj;->buildResponse(Lmtopsdk/mtop/domain/MtopResponse;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method
