.class public Lc8/HN;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# instance fields
.field private awcnRequest:Lc8/eK;

.field private connectTimeout:I

.field private mCurrentRetryTimes:I

.field private mRedirectTimes:I

.field private maxRetryTime:I

.field private readTimeout:I

.field private final request:Lanetwork/channel/aidl/ParcelableRequest;

.field private rs:Lanet/channel/statist/RequestStatistic;

.field private final seqNo:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;I)V
    .locals 4
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const v3, 0x466a6000    # 15000.0f

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    .line 34
    iput v1, p0, Lc8/HN;->mCurrentRetryTimes:I

    .line 35
    iput v1, p0, Lc8/HN;->mRedirectTimes:I

    .line 36
    iput v1, p0, Lc8/HN;->maxRetryTime:I

    .line 37
    iput v1, p0, Lc8/HN;->connectTimeout:I

    .line 38
    iput v1, p0, Lc8/HN;->readTimeout:I

    .line 40
    iput-object v2, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "request is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iput-object p1, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    .line 50
    iput p2, p0, Lc8/HN;->type:I

    .line 51
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_5

    const-string/jumbo v1, "HTTP"

    :goto_0
    invoke-static {v2, v1}, Lc8/iO;->createSeqNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/HN;->seqNo:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getConnectTimeout()I

    move-result v1

    iput v1, p0, Lc8/HN;->connectTimeout:I

    .line 55
    iget v1, p0, Lc8/HN;->connectTimeout:I

    if-gtz v1, :cond_1

    .line 56
    invoke-static {}, Lc8/eM;->getNetworkTimeFactor()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lc8/HN;->connectTimeout:I

    .line 59
    :cond_1
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lc8/HN;->readTimeout:I

    .line 60
    iget v1, p0, Lc8/HN;->readTimeout:I

    if-gtz v1, :cond_2

    .line 61
    invoke-static {}, Lc8/eM;->getNetworkTimeFactor()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lc8/HN;->readTimeout:I

    .line 64
    :cond_2
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getRetryTime()I

    move-result v1

    iput v1, p0, Lc8/HN;->maxRetryTime:I

    .line 65
    iget v1, p0, Lc8/HN;->maxRetryTime:I

    if-ltz v1, :cond_3

    iget v1, p0, Lc8/HN;->maxRetryTime:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 66
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lc8/HN;->maxRetryTime:I

    .line 69
    :cond_4
    invoke-direct {p0}, Lc8/HN;->initHttpUrl()Lc8/XL;

    move-result-object v0

    .line 71
    .local v0, "httpUrl":Lc8/XL;
    new-instance v1, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getBizId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    .line 72
    iget-object v1, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0}, Lc8/XL;->simpleUrlString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v0}, Lc8/HN;->buildRequest(Lc8/XL;)Lc8/eK;

    move-result-object v1

    iput-object v1, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    .line 75
    return-void

    .line 51
    .end local v0    # "httpUrl":Lc8/XL;
    :cond_5
    const-string/jumbo v1, "DGRD"

    goto :goto_0
.end method

.method private buildRequest(Lc8/XL;)Lc8/eK;
    .locals 5
    .param p1, "httpUrl"    # Lc8/XL;

    .prologue
    .line 100
    new-instance v3, Lc8/cK;

    invoke-direct {v3}, Lc8/cK;-><init>()V

    invoke-virtual {v3, p1}, Lc8/cK;->setUrl(Lc8/XL;)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/cK;->setMethod(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/cK;->setBody(Lanet/channel/request/BodyEntry;)Lc8/cK;

    move-result-object v3

    invoke-virtual {p0}, Lc8/HN;->getReadTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Lc8/cK;->setReadTimeout(I)Lc8/cK;

    move-result-object v3

    invoke-virtual {p0}, Lc8/HN;->getConnectTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Lc8/cK;->setConnectTimeout(I)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getFollowRedirects()Z

    move-result v4

    invoke-virtual {v3, v4}, Lc8/cK;->setRedirectEnable(Z)Lc8/cK;

    move-result-object v3

    iget v4, p0, Lc8/HN;->mRedirectTimes:I

    invoke-virtual {v3, v4}, Lc8/cK;->setRedirectTimes(I)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getBizId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/cK;->setBizId(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    invoke-virtual {p0}, Lc8/HN;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/cK;->setSeq(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v3, v4}, Lc8/cK;->setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lc8/cK;

    move-result-object v0

    .line 112
    .local v0, "builder":Lc8/cK;
    iget-object v3, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getParams()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getParams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/tM;

    .line 114
    .local v2, "param":Lc8/tM;
    invoke-interface {v2}, Lc8/tM;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lc8/tM;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc8/cK;->addParam(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    goto :goto_0

    .line 118
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "param":Lc8/tM;
    :cond_0
    iget-object v3, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/cK;->setCharset(Ljava/lang/String;)Lc8/cK;

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lc8/HN;->initHeaders(Lc8/XL;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/cK;->setHeaders(Ljava/util/Map;)Lc8/cK;

    .line 123
    invoke-virtual {v0}, Lc8/cK;->build()Lc8/eK;

    move-result-object v3

    return-object v3
.end method

.method private initHeaders(Lc8/XL;)Ljava/util/Map;
    .locals 9
    .param p1, "httpUrl"    # Lc8/XL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XL;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v5, 0x1

    .line 185
    .local v5, "removeHost":Z
    invoke-virtual {p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/zL;->isIPV4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    const/4 v5, 0x0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v6}, Lanetwork/channel/aidl/ParcelableRequest;->getHeaders()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 191
    iget-object v6, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v6}, Lanetwork/channel/aidl/ParcelableRequest;->getHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fM;

    .line 192
    .local v0, "header":Lc8/fM;
    invoke-interface {v0}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v6, "Host"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, ":host"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    :cond_2
    if-nez v5, :cond_1

    .line 195
    const-string/jumbo v6, "Host"

    invoke-interface {v0}, Lc8/fM;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_3
    const-string/jumbo v6, "true"

    iget-object v7, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string/jumbo v8, "KeepCustomCookie"

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 202
    .local v3, "isRequestKeepCustomCookie":Z
    const-string/jumbo v6, "Cookie"

    invoke-interface {v0}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_1

    .line 205
    :cond_4
    invoke-interface {v0}, Lc8/fM;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    .end local v0    # "header":Lc8/fM;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isRequestKeepCustomCookie":Z
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private initHttpUrl()Lc8/XL;
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v0

    .line 87
    .local v0, "httpUrl":Lc8/XL;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url is invalid. url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    invoke-static {}, Lc8/qN;->isSSLEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-virtual {v0}, Lc8/XL;->downgradeSchemeAndLock()V

    .line 96
    :cond_1
    :goto_0
    return-object v0

    .line 93
    :cond_2
    const-string/jumbo v1, "false"

    iget-object v2, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string/jumbo v3, "EnableSchemeReplace"

    invoke-virtual {v2, v3}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v0}, Lc8/XL;->lockScheme()V

    goto :goto_0
.end method


# virtual methods
.method public getAwcnRequest()Lc8/eK;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lc8/HN;->connectTimeout:I

    return v0
.end method

.method public getCurrentRetryTimes()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lc8/HN;->mCurrentRetryTimes:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    invoke-virtual {v0}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrl()Lc8/XL;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    invoke-virtual {v0}, Lc8/eK;->getHttpUrl()Lc8/XL;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lc8/HN;->readTimeout:I

    return v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lc8/HN;->type:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/HN;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatistic()Lanet/channel/statist/RequestStatistic;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    invoke-virtual {v0}, Lc8/eK;->getUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWaitTimeout()I
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lc8/HN;->readTimeout:I

    iget v1, p0, Lc8/HN;->maxRetryTime:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public isAllowRetry()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lc8/HN;->mCurrentRetryTimes:I

    iget v1, p0, Lc8/HN;->maxRetryTime:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttpSessionEnable()Z
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lc8/qN;->isHttpSessionEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "false"

    iget-object v1, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string/jumbo v2, "EnableHttpDns"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lc8/qN;->isAllowHttpIpRetry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/HN;->getCurrentRetryTimes()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestCookieEnabled()Z
    .locals 3

    .prologue
    .line 213
    const-string/jumbo v0, "false"

    iget-object v1, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    const-string/jumbo v2, "EnableCookie"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redirectToUrl(Lc8/XL;)V
    .locals 3
    .param p1, "httpUrl"    # Lc8/XL;

    .prologue
    .line 222
    iget v0, p0, Lc8/HN;->mRedirectTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/HN;->mRedirectTimes:I

    .line 223
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/HN;->request:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableRequest;->getBizId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    .line 224
    iget-object v0, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lc8/XL;->simpleUrlString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 226
    invoke-direct {p0, p1}, Lc8/HN;->buildRequest(Lc8/XL;)Lc8/eK;

    move-result-object v0

    iput-object v0, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    .line 227
    return-void
.end method

.method public retryRequest()V
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lc8/HN;->mCurrentRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/HN;->mCurrentRetryTimes:I

    .line 218
    iget-object v0, p0, Lc8/HN;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p0, Lc8/HN;->mCurrentRetryTimes:I

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    .line 219
    return-void
.end method

.method public setAwcnRequest(Lc8/eK;)V
    .locals 0
    .param p1, "request"    # Lc8/eK;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/HN;->awcnRequest:Lc8/eK;

    .line 83
    return-void
.end method
