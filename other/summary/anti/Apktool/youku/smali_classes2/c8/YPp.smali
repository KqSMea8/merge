.class public final Lc8/YPp;
.super Ljava/lang/Object;
.source "ANetworkConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNetworkStats(Lanetwork/channel/statist/StatisticData;)Lmtopsdk/network/domain/NetworkStats;
    .locals 4
    .param p0, "statisticData"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 122
    .end local v0    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    .local v1, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    :goto_0
    return-object v1

    .line 106
    .end local v1    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    .restart local v0    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    :cond_0
    new-instance v0, Lmtopsdk/network/domain/NetworkStats;

    .end local v0    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    invoke-direct {v0}, Lmtopsdk/network/domain/NetworkStats;-><init>()V

    .line 107
    .restart local v0    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    iget v2, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    iput v2, v0, Lmtopsdk/network/domain/NetworkStats;->resultCode:I

    .line 108
    iget-boolean v2, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    iput-boolean v2, v0, Lmtopsdk/network/domain/NetworkStats;->isRequestSuccess:Z

    .line 109
    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    iput-object v2, v0, Lmtopsdk/network/domain/NetworkStats;->host:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    iput-object v2, v0, Lmtopsdk/network/domain/NetworkStats;->ip_port:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    iput-object v2, v0, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    .line 112
    iget-boolean v2, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    iput-boolean v2, v0, Lmtopsdk/network/domain/NetworkStats;->isSSL:Z

    .line 113
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    .line 114
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->firstDataTime:J

    .line 115
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->sendWaitTime:J

    .line 116
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->recDataTime:J

    .line 117
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->sendSize:J

    .line 118
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    .line 119
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    .line 120
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    iput-wide v2, v0, Lmtopsdk/network/domain/NetworkStats;->dataSpeed:J

    .line 121
    iget v2, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    iput v2, v0, Lmtopsdk/network/domain/NetworkStats;->retryTimes:I

    move-object v1, v0

    .line 122
    .end local v0    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    .restart local v1    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    goto :goto_0
.end method

.method public static convertRequest(Lc8/FPp;)Lc8/uM;
    .locals 6
    .param p0, "request"    # Lc8/FPp;

    .prologue
    .line 56
    new-instance v2, Lc8/IN;

    iget-object v4, p0, Lc8/FPp;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "req":Lc8/uM;
    iget-object v4, p0, Lc8/FPp;->seqNo:Ljava/lang/String;

    invoke-interface {v2, v4}, Lc8/uM;->setSeqNo(Ljava/lang/String;)V

    .line 58
    iget v4, p0, Lc8/FPp;->retryTimes:I

    invoke-interface {v2, v4}, Lc8/uM;->setRetryTime(I)V

    .line 59
    iget v4, p0, Lc8/FPp;->connectTimeoutMills:I

    invoke-interface {v2, v4}, Lc8/uM;->setConnectTimeout(I)V

    .line 60
    iget v4, p0, Lc8/FPp;->readTimeoutMills:I

    invoke-interface {v2, v4}, Lc8/uM;->setReadTimeout(I)V

    .line 61
    iget v4, p0, Lc8/FPp;->bizId:I

    invoke-interface {v2, v4}, Lc8/uM;->setBizId(I)V

    .line 64
    iget-object v4, p0, Lc8/FPp;->method:Ljava/lang/String;

    invoke-interface {v2, v4}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lc8/FPp;->headers:Ljava/util/Map;

    invoke-static {v4}, Lc8/YPp;->createRequestHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Lc8/uM;->setHeaders(Ljava/util/List;)V

    .line 66
    const-string/jumbo v4, "APPKEY"

    iget-object v5, p0, Lc8/FPp;->appKey:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v4, "AuthCode"

    iget-object v5, p0, Lc8/FPp;->authCode:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v4, p0, Lc8/FPp;->env:I

    packed-switch v4, :pswitch_data_0

    .line 82
    :goto_0
    const-string/jumbo v4, "POST"

    iget-object v5, p0, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v3, p0, Lc8/FPp;->body:Lc8/HPp;

    check-cast v3, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    .line 84
    .local v3, "requestBodyImpl":Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    new-instance v4, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    invoke-direct {v4, v3}, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;-><init>(Lmtopsdk/network/domain/ParcelableRequestBodyImpl;)V

    invoke-interface {v2, v4}, Lc8/uM;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 85
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentLength()J

    move-result-wide v0

    .line 87
    .local v0, "length":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 88
    const-string/jumbo v4, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "length":J
    .end local v3    # "requestBodyImpl":Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    :cond_0
    return-object v2

    .line 70
    :pswitch_0
    const-string/jumbo v4, "ENVIRONMENT"

    const-string/jumbo v5, "online"

    invoke-interface {v2, v4, v5}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string/jumbo v4, "ENVIRONMENT"

    const-string/jumbo v5, "pre"

    invoke-interface {v2, v4, v5}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_2
    const-string/jumbo v4, "ENVIRONMENT"

    const-string/jumbo v5, "test"

    invoke-interface {v2, v4, v5}, Lc8/uM;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRequestHeaders(Ljava/util/Map;)Ljava/util/List;
    .locals 6
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
    .line 34
    .local p0, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 45
    :cond_1
    return-object v2

    .line 38
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    new-instance v1, Lc8/zN;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lc8/zN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v1, "header":Lc8/zN;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
