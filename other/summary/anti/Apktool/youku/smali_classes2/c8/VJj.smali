.class public Lc8/VJj;
.super Lc8/SJj;
.source "NetworkConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lc8/uM;",
        "O::",
        "Lc8/vM;",
        ">",
        "Lc8/SJj",
        "<TI;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    invoke-direct {p0}, Lc8/SJj;-><init>()V

    return-void
.end method

.method private buildRequest(Lc8/dJj;)Lc8/uM;
    .locals 7
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 49
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    invoke-virtual {p1}, Lc8/dJj;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/VJj;->createRequestHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Header;>;"
    invoke-virtual {p1}, Lc8/dJj;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/VJj;->createRequestParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    new-instance v3, Lc8/IN;

    invoke-virtual {p1}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, "request":Lc8/uM;
    invoke-virtual {p1}, Lc8/dJj;->getConnectTimeout()I

    move-result v4

    invoke-interface {v3, v4}, Lc8/uM;->setConnectTimeout(I)V

    .line 54
    invoke-virtual {p1}, Lc8/dJj;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lc8/dJj;->getReadTimeout()I

    move-result v4

    invoke-interface {v3, v4}, Lc8/uM;->setReadTimeout(I)V

    .line 56
    invoke-virtual {p1}, Lc8/dJj;->isAutoRedirect()Z

    move-result v4

    invoke-interface {v3, v4}, Lc8/uM;->setFollowRedirects(Z)V

    .line 57
    invoke-virtual {p1}, Lc8/dJj;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/uM;->setCharset(Ljava/lang/String;)V

    .line 59
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    invoke-interface {v3, v1}, Lc8/uM;->setHeaders(Ljava/util/List;)V

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fM;

    .line 63
    .local v0, "header":Lc8/fM;
    const-string/jumbo v5, "Cookie"

    invoke-interface {v0}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lc8/fM;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    const-string/jumbo v5, "KeepCustomCookie"

    const-string/jumbo v6, "true"

    invoke-interface {v3, v5, v6}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "header":Lc8/fM;
    :cond_1
    invoke-virtual {p1}, Lc8/dJj;->getRetryTimes()I

    move-result v4

    invoke-interface {v3, v4}, Lc8/uM;->setRetryTime(I)V

    .line 73
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 74
    invoke-interface {v3, v2}, Lc8/uM;->setParams(Ljava/util/List;)V

    .line 76
    :cond_2
    invoke-virtual {p1}, Lc8/dJj;->getJsonBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    new-instance v4, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {p1}, Lc8/dJj;->getJsonBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    invoke-interface {v3, v4}, Lc8/uM;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 79
    :cond_3
    return-object v3
.end method

.method private buildResponse(Lc8/vM;)Lc8/eJj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    .local p1, "response":Lc8/vM;, "TO;"
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v0

    .line 123
    .local v0, "ykResponse":Lc8/eJj;
    invoke-interface {p1}, Lc8/vM;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setResponseCode(I)V

    .line 124
    invoke-interface {p1}, Lc8/vM;->getBytedata()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setBytedata([B)V

    .line 125
    invoke-interface {p1}, Lc8/vM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setConnHeadFields(Ljava/util/Map;)V

    .line 126
    invoke-interface {p1}, Lc8/vM;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setDesc(Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Lc8/vM;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    .line 128
    invoke-interface {p1}, Lc8/vM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setStatisticData(Lanetwork/channel/statist/StatisticData;)V

    .line 129
    return-object v0
.end method

.method private createRequestHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    :cond_0
    const/4 v2, 0x0

    .line 118
    :cond_1
    :goto_0
    return-object v2

    .line 102
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Header;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lc8/tSh;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    .local v5, "value":Ljava/lang/String;
    new-instance v1, Lc8/zN;

    const-string/jumbo v6, "User-Agent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Lc8/VJj;->getEncodedUA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    invoke-direct {v1, v3, v5}, Lc8/zN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v1, "header":Lc8/zN;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "header":Lc8/zN;
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    sget-boolean v6, Lc8/oSh;->isShowLog:Z

    if-eqz v6, :cond_1

    .line 112
    sget-object v6, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "utdid":Ljava/lang/String;
    new-instance v1, Lc8/zN;

    const-string/jumbo v6, "x-utdid"

    invoke-direct {v1, v6, v4}, Lc8/zN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .restart local v1    # "header":Lc8/zN;
    sget-object v6, Lc8/cKj;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "x-utdid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createRequestParams(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 94
    :cond_1
    return-object v3

    .line 86
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 88
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 90
    new-instance v2, Lc8/JN;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lc8/JN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v2, "param":Lc8/tM;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public requestConvert(Lc8/dJj;)Lc8/uM;
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
    .line 39
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    invoke-direct {p0, p1}, Lc8/VJj;->buildRequest(Lc8/dJj;)Lc8/uM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic requestConvert(Lc8/dJj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    invoke-virtual {p0, p1}, Lc8/VJj;->requestConvert(Lc8/dJj;)Lc8/uM;

    move-result-object v0

    return-object v0
.end method

.method public responseConvert(Lc8/vM;)Lc8/eJj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    .local p1, "response":Lc8/vM;, "TO;"
    invoke-direct {p0, p1}, Lc8/VJj;->buildResponse(Lc8/vM;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseConvert(Ljava/lang/Object;)Lc8/eJj;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lc8/VJj;, "Lcom/youku/network/converter/NetworkConverter<TI;TO;>;"
    check-cast p1, Lc8/vM;

    invoke-virtual {p0, p1}, Lc8/VJj;->responseConvert(Lc8/vM;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method
