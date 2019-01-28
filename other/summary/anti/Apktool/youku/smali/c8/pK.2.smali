.class public Lc8/pK;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oK;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Lc8/eK;)Lc8/oK;
    .locals 1
    .param p0, "request"    # Lc8/eK;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/pK;->connectImpl(Lc8/eK;Lc8/VI;)Lc8/oK;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Lc8/eK;Lc8/VI;)V
    .locals 0
    .param p0, "request"    # Lc8/eK;
    .param p1, "requestCb"    # Lc8/VI;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lc8/pK;->connectImpl(Lc8/eK;Lc8/VI;)Lc8/oK;

    .line 73
    return-void
.end method

.method private static connectImpl(Lc8/eK;Lc8/VI;)Lc8/oK;
    .locals 14
    .param p0, "request"    # Lc8/eK;
    .param p1, "requestCb"    # Lc8/VI;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 77
    new-instance v4, Lc8/oK;

    invoke-direct {v4}, Lc8/oK;-><init>()V

    .line 78
    .local v4, "response":Lc8/oK;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc8/eK;->getUrl()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_2

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    const/16 v6, -0x66

    const/16 v7, -0x66

    invoke-static {v7}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lanet/channel/statist/RequestStatistic;

    invoke-direct {v8, v13, v13}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6, v7, v8}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 227
    :cond_1
    :goto_0
    return-object v4

    .line 87
    :cond_2
    const/4 v0, 0x0

    .line 89
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :cond_3
    :goto_1
    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v6

    if-nez v6, :cond_4

    .line 90
    const/16 v6, -0xc8

    invoke-static {p0, v4, p1, v6, v13}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_4
    const/4 v6, 0x2

    :try_start_0
    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request URL"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getUrl()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request Method"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request headers"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_5
    invoke-static {p0}, Lc8/pK;->getConnection(Lc8/eK;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_f

    .line 100
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 101
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v7, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v7, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-object v7, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    invoke-static {v0, p0}, Lc8/pK;->postData(Ljava/net/HttpURLConnection;Lc8/eK;)I

    .line 104
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    .line 105
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v7, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v7, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    iget-object v7, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, v4, Lc8/oK;->httpCode:I

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lc8/RL;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    .line 110
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "response code"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v4, Lc8/oK;->httpCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, ""

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "response headers"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lc8/oK;->header:Ljava/util/Map;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget v6, v4, Lc8/oK;->httpCode:I

    invoke-static {p0, v6}, Lc8/RL;->checkRedirect(Lc8/eK;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 114
    iget-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    const-string/jumbo v7, "Location"

    invoke-static {v6, v7}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 116
    invoke-static {v3}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v2

    .line 117
    .local v2, "httpUrl":Lc8/XL;
    if-eqz v2, :cond_7

    .line 118
    invoke-virtual {v2}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 119
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v6

    invoke-virtual {v2}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lc8/MK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lc8/XL;->setScheme(Ljava/lang/String;)V

    .line 121
    :cond_6
    invoke-virtual {p0}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v6

    const-string/jumbo v7, "GET"

    invoke-virtual {v6, v7}, Lc8/cK;->setMethod(Ljava/lang/String;)Lc8/cK;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lc8/cK;->setBody(Lanet/channel/request/BodyEntry;)Lc8/cK;

    move-result-object v6

    invoke-virtual {v6, v2}, Lc8/cK;->setUrl(Lc8/XL;)Lc8/cK;

    move-result-object v6

    invoke-virtual {p0}, Lc8/eK;->getRedirectTimes()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lc8/cK;->setRedirectTimes(I)Lc8/cK;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lc8/cK;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lc8/cK;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lc8/cK;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lc8/cK;

    move-result-object v6

    invoke-virtual {v6}, Lc8/cK;->build()Lc8/eK;

    move-result-object p0

    .line 129
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v2}, Lc8/XL;->simpleUrlString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "redirect url is invalid!"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "redirect url"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .end local v2    # "httpUrl":Lc8/XL;
    .end local v3    # "location":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v7, v4, Lc8/oK;->header:Ljava/util/Map;

    const-string/jumbo v8, "Content-Encoding"

    invoke-static {v7, v8}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 140
    const-string/jumbo v6, "HEAD"

    invoke-virtual {p0}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, v4, Lc8/oK;->httpCode:I

    const/16 v7, 0x130

    if-eq v6, v7, :cond_9

    iget v6, v4, Lc8/oK;->httpCode:I

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_9

    iget v6, v4, Lc8/oK;->httpCode:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_c

    iget v6, v4, Lc8/oK;->httpCode:I

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_c

    .line 144
    :cond_9
    if-eqz p1, :cond_a

    .line 145
    iget v6, v4, Lc8/oK;->httpCode:I

    iget-object v7, v4, Lc8/oK;->header:Ljava/util/Map;

    invoke-interface {p1, v6, v7}, Lc8/VI;->onResponseCode(ILjava/util/Map;)V

    .line 160
    :cond_a
    :goto_2
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 161
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v7, v4, Lc8/oK;->httpCode:I

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 162
    iget-object v6, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v7, 0x1

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 164
    if-eqz p1, :cond_b

    .line 165
    iget v6, v4, Lc8/oK;->httpCode:I

    const-string/jumbo v7, "SUCCESS"

    iget-object v8, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p1, v6, v7, v8}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :cond_b
    :goto_3
    if-eqz v0, :cond_1

    .line 217
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 219
    :catch_1
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_4
    iget-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    invoke-static {v6}, Lc8/RL;->parseContentLength(Ljava/util/Map;)I

    move-result v6

    iput v6, v4, Lc8/oK;->contentLength:I

    .line 149
    iget-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    invoke-static {v6}, Lc8/RL;->checkContentEncodingGZip(Ljava/util/Map;)Z

    move-result v6

    iput-boolean v6, v4, Lc8/oK;->isGZip:Z

    .line 150
    iget-boolean v6, v4, Lc8/oK;->isGZip:Z

    if-eqz v6, :cond_d

    .line 151
    iget-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    const-string/jumbo v7, "Content-Encoding"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v6, v4, Lc8/oK;->header:Ljava/util/Map;

    const-string/jumbo v7, "Content-Length"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_d
    if-eqz p1, :cond_e

    .line 155
    iget v6, v4, Lc8/oK;->httpCode:I

    iget-object v7, v4, Lc8/oK;->header:Ljava/util/Map;

    invoke-interface {p1, v6, v7}, Lc8/VI;->onResponseCode(ILjava/util/Map;)V

    .line 157
    :cond_e
    invoke-static {v0, p0, v4, p1}, Lc8/pK;->parseBody(Ljava/net/HttpURLConnection;Lc8/eK;Lc8/oK;Lc8/VI;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 170
    :catch_2
    move-exception v1

    .line 171
    .local v1, "e":Ljava/net/UnknownHostException;
    const/16 v6, -0x195

    :try_start_5
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 172
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "Unknown Host Exception"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lc8/FK;->printNetworkDetail()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 219
    :catch_3
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    const/16 v6, -0x197

    const/4 v7, 0x0

    :try_start_7
    invoke-static {p0, v4, p1, v6, v7}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 175
    :catch_4
    move-exception v1

    .line 176
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const/16 v6, -0x191

    :try_start_8
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 177
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Socket Timeout"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lc8/FK;->printNetworkDetail()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 219
    :catch_5
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 181
    .local v1, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    const/16 v6, -0x190

    :try_start_a
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 182
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Timeout"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lc8/FK;->printNetworkDetail()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 219
    :catch_7
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 186
    .local v1, "e":Ljava/net/ConnectException;
    const/16 v6, -0x196

    :try_start_c
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 187
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Exception"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lc8/FK;->printNetworkDetail()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_0

    .line 219
    :catch_9
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v1

    .line 191
    .local v1, "e":Ljavax/net/ssl/SSLHandshakeException;
    :try_start_e
    invoke-static {}, Lc8/RK;->getInstance()Lc8/RK;

    move-result-object v6

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/RK;->onSslFail(Ljava/lang/String;)V

    .line 192
    const/16 v6, -0x192

    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 193
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect SSLHandshakeException"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_0

    .line 219
    :catch_b
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v1

    .line 196
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_10
    invoke-static {}, Lc8/RK;->getInstance()Lc8/RK;

    move-result-object v6

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/RK;->onSslFail(Ljava/lang/String;)V

    .line 197
    const/16 v6, -0x192

    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 198
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "connect SSLException"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "host"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_0

    .line 219
    :catch_d
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v1

    .line 201
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const/16 v6, -0xcc

    :try_start_12
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 202
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Request Cancel"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_0

    .line 219
    :catch_f
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v1

    .line 205
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_10

    const-string/jumbo v6, "not verified"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 207
    invoke-static {}, Lc8/RK;->getInstance()Lc8/RK;

    move-result-object v6

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/RK;->onSslFail(Ljava/lang/String;)V

    .line 208
    const/16 v6, -0x193

    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    .line 212
    :goto_4
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "HTTP Connect Exception"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    :try_start_15
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    goto/16 :goto_0

    .line 219
    :catch_11
    move-exception v1

    .line 220
    const-string/jumbo v6, "awcn.HttpConnector"

    const-string/jumbo v7, "http disconnect"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v13, v1, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 210
    :cond_10
    const/16 v6, -0x65

    :try_start_16
    invoke-static {p0, v4, p1, v6, v1}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_4

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 216
    if-eqz v0, :cond_11

    .line 217
    :try_start_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 221
    :cond_11
    :goto_5
    throw v6

    .line 219
    :catch_12
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "awcn.HttpConnector"

    const-string/jumbo v8, "http disconnect"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v13, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private static getConnection(Lc8/eK;)Ljava/net/HttpURLConnection;
    .locals 15
    .param p0, "request"    # Lc8/eK;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lc8/FK;->getWifiProxy()Landroid/util/Pair;

    move-result-object v8

    .line 255
    .local v8, "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 256
    .local v7, "p":Ljava/net/Proxy;
    if-eqz v8, :cond_0

    .line 257
    new-instance v7, Ljava/net/Proxy;

    .end local v7    # "p":Ljava/net/Proxy;
    sget-object v13, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v14, Ljava/net/InetSocketAddress;

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v14, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v7, v13, v14}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 261
    .restart local v7    # "p":Ljava/net/Proxy;
    :cond_0
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v11

    invoke-virtual {v11}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lc8/TI;->getProxySetting()Lc8/YL;

    move-result-object v9

    .local v9, "proxySetting":Lc8/YL;
    if-eqz v9, :cond_1

    .line 263
    iget-object v7, v9, Lc8/YL;->proxy:Ljava/net/Proxy;

    .line 266
    .end local v9    # "proxySetting":Lc8/YL;
    :cond_1
    const/4 v1, 0x0

    .line 268
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Lc8/eK;->getUrl()Ljava/net/URL;

    move-result-object v10

    .line 269
    .local v10, "url":Ljava/net/URL;
    if-eqz v7, :cond_3

    .line 270
    invoke-virtual {v10, v7}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 275
    :goto_0
    invoke-virtual {p0}, Lc8/eK;->getConnectTimeout()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 276
    invoke-virtual {p0}, Lc8/eK;->getReadTimeout()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 277
    invoke-virtual {p0}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lc8/eK;->containsBody()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 280
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    :cond_2
    invoke-virtual {p0}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 286
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 287
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "method":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    .line 319
    :goto_2
    return-object v1

    .line 272
    .restart local v10    # "url":Ljava/net/URL;
    :cond_3
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto :goto_0

    .line 291
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "method":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "Host"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .local v4, "host":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 293
    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 295
    :cond_5
    const-string/jumbo v11, "Host"

    invoke-virtual {v1, v11, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lc8/FK;->getApn()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "cmwap"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 297
    const-string/jumbo v11, "x-online-host"

    invoke-virtual {v1, v11, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_6
    const-string/jumbo v11, "Accept-Encoding"

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 302
    const-string/jumbo v11, "Accept-Encoding"

    const-string/jumbo v12, "gzip"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_7
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "https"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 311
    invoke-static {v1, p0, v4}, Lc8/pK;->supportHttps(Ljava/net/HttpURLConnection;Lc8/eK;Ljava/lang/String;)V

    .line 314
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private static onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V
    .locals 8
    .param p0, "request"    # Lc8/eK;
    .param p1, "response"    # Lc8/oK;
    .param p2, "requestCb"    # Lc8/VI;
    .param p3, "errCode"    # I
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 231
    invoke-static {p3}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "errMsg":Ljava/lang/String;
    const-string/jumbo v2, "awcn.HttpConnector"

    const-string/jumbo v3, "onException"

    invoke-virtual {p0}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "errorCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "errMsg"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Lc8/eK;->getUrlString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    iput p3, p1, Lc8/oK;->httpCode:I

    .line 240
    :cond_0
    iget-object v2, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iput p3, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 241
    iget-object v2, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v6, v3, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 243
    if-eqz p2, :cond_1

    .line 244
    iget-object v2, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, v2}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 247
    :cond_1
    const/16 v2, -0xcc

    if-eq p3, v2, :cond_2

    .line 248
    new-instance v1, Lanet/channel/statist/ExceptionStatistic;

    iget-object v2, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-direct {v1, p3, v0, v2, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 249
    .local v1, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    invoke-interface {v2, v1}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 251
    .end local v1    # "es":Lanet/channel/statist/ExceptionStatistic;
    :cond_2
    return-void
.end method

.method private static parseBody(Ljava/net/HttpURLConnection;Lc8/eK;Lc8/oK;Lc8/VI;)V
    .locals 20
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "request"    # Lc8/eK;
    .param p2, "response"    # Lc8/oK;
    .param p3, "requestCb"    # Lc8/VI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v9, 0x0

    .line 380
    .local v9, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v10, v9

    .line 390
    .end local v9    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    :goto_0
    if-nez v10, :cond_1

    .line 391
    const/16 v14, -0x194

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14, v15}, Lc8/pK;->onException(Lc8/eK;Lc8/oK;Lc8/VI;ILjava/lang/Throwable;)V

    move-object v9, v10

    .line 457
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .line 381
    :catch_0
    move-exception v7

    .line 383
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 387
    :goto_2
    const-string/jumbo v14, "awcn.HttpConnector"

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v0, v7, v1}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v10, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 384
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    .line 385
    .local v8, "e2":Ljava/lang/Exception;
    const-string/jumbo v14, "awcn.HttpConnector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "get error stream failed."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v0, v8, v1}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 396
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e2":Ljava/lang/Exception;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v5, 0x0

    .line 397
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    if-nez p3, :cond_2

    .line 398
    move-object/from16 v0, p2

    iget v14, v0, Lc8/oK;->contentLength:I

    if-gtz v14, :cond_4

    const/16 v11, 0x400

    .line 400
    .local v11, "preAllocSize":I
    :goto_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v5, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 404
    .end local v11    # "preAllocSize":I
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_2
    new-instance v4, Lc8/yL;

    invoke-direct {v4, v10}, Lc8/yL;-><init>(Ljava/io/InputStream;)V

    .line 405
    .local v4, "bis":Lc8/yL;
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lc8/oK;->isGZip:Z

    if-eqz v14, :cond_6

    .line 406
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_4
    const/4 v12, 0x0

    .line 413
    .local v12, "readCount":I
    const/4 v6, 0x0

    .line 415
    .local v6, "buffer":Lanet/channel/bytes/ByteArray;
    :goto_5
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 416
    new-instance v14, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v15, "task cancelled"

    invoke-direct {v14, v15}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    :catchall_0
    move-exception v14

    .end local v4    # "bis":Lc8/yL;
    .end local v6    # "buffer":Lanet/channel/bytes/ByteArray;
    .end local v12    # "readCount":I
    :goto_6
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_7
    throw v14

    .line 398
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lc8/oK;->isGZip:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p2

    iget v14, v0, Lc8/oK;->contentLength:I

    shl-int/lit8 v11, v14, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Lc8/oK;->contentLength:I

    goto :goto_3

    .line 408
    .restart local v4    # "bis":Lc8/yL;
    :cond_6
    move-object v9, v4

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 418
    .restart local v6    # "buffer":Lanet/channel/bytes/ByteArray;
    .restart local v12    # "readCount":I
    :cond_7
    if-nez v6, :cond_8

    .line 419
    :try_start_5
    invoke-static {}, Lc8/uJ;->getInstance()Lc8/uJ;

    move-result-object v14

    const/16 v15, 0x800

    invoke-virtual {v14, v15}, Lc8/uJ;->retrieve(I)Lanet/channel/bytes/ByteArray;

    move-result-object v6

    .line 421
    :cond_8
    invoke-virtual {v6, v9}, Lanet/channel/bytes/ByteArray;->readFrom(Ljava/io/InputStream;)I

    move-result v13

    .line 422
    .local v13, "readLen":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    .line 423
    if-nez v12, :cond_9

    .line 424
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 426
    :cond_9
    if-eqz v5, :cond_a

    .line 427
    invoke-virtual {v6, v5}, Lanet/channel/bytes/ByteArray;->writeTo(Ljava/io/OutputStream;)V

    .line 432
    :goto_8
    add-int/2addr v12, v13

    goto :goto_5

    .line 429
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v14}, Lc8/VI;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 430
    const/4 v6, 0x0

    goto :goto_8

    .line 434
    :cond_b
    if-eqz v5, :cond_e

    .line 435
    invoke-virtual {v6}, Lanet/channel/bytes/ByteArray;->recycle()V

    .line 443
    :goto_9
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v14, Lanet/channel/statist/RequestStatistic;->rspStart:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_c

    .line 444
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 446
    :cond_c
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, v15, Lanet/channel/statist/RequestStatistic;->rspStart:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, v15, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 447
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, v15, Lanet/channel/statist/RequestStatistic;->rspStart:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 448
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 449
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v4}, Lc8/yL;->getReadByteCount()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 450
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    .line 452
    if-eqz v5, :cond_d

    .line 453
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v14, v0, Lc8/oK;->out:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :cond_d
    if-eqz v9, :cond_0

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 457
    :catch_2
    move-exception v14

    goto/16 :goto_1

    .line 437
    :cond_e
    const/4 v14, 0x1

    :try_start_7
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v14}, Lc8/VI;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_9

    .end local v4    # "bis":Lc8/yL;
    .end local v6    # "buffer":Lanet/channel/bytes/ByteArray;
    .end local v12    # "readCount":I
    .end local v13    # "readLen":I
    :catch_3
    move-exception v15

    goto/16 :goto_7

    .line 456
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto/16 :goto_6
.end method

.method private static postData(Ljava/net/HttpURLConnection;Lc8/eK;)I
    .locals 8
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "request"    # Lc8/eK;

    .prologue
    const/4 v7, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "cnt":I
    invoke-virtual {p1}, Lc8/eK;->containsBody()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 356
    invoke-virtual {p1, v2}, Lc8/eK;->postBody(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 360
    if-eqz v2, :cond_0

    .line 362
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 363
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_0
    :goto_0
    iget-object v3, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v4, v0

    iput-wide v4, v3, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 370
    iget-object v3, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v4, v0

    iput-wide v4, v3, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 371
    iget-object v3, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v4, v0

    iput-wide v4, v3, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 373
    .end local v2    # "os":Ljava/io/OutputStream;
    :cond_1
    return v0

    .line 364
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "awcn.HttpConnector"

    const-string/jumbo v4, "postData"

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v1, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "awcn.HttpConnector"

    const-string/jumbo v4, "postData error"

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v1, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    if-eqz v2, :cond_0

    .line 362
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 363
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 364
    :catch_2
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "awcn.HttpConnector"

    const-string/jumbo v4, "postData"

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v1, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 362
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 363
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 366
    :cond_2
    :goto_1
    throw v3

    .line 364
    :catch_3
    move-exception v1

    .line 365
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "awcn.HttpConnector"

    const-string/jumbo v5, "postData"

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static supportHttps(Ljava/net/HttpURLConnection;Lc8/eK;Ljava/lang/String;)V
    .locals 5
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "request"    # Lc8/eK;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 323
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 324
    const-string/jumbo v1, "awcn.HttpConnector"

    const-string/jumbo v2, "supportHttps"

    const-string/jumbo v3, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 327
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 330
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {p1}, Lc8/eK;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p1}, Lc8/eK;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 336
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lc8/eK;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    invoke-virtual {p1}, Lc8/eK;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-static {}, Lc8/WL;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    invoke-static {}, Lc8/WL;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-static {}, Lc8/WL;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 339
    invoke-static {}, Lc8/WL;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    .line 341
    :cond_4
    new-instance v1, Lc8/nK;

    invoke-direct {v1, p2}, Lc8/nK;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0
.end method
