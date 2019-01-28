.class public Lc8/cVe;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# static fields
.field private static final EMPTY_REQUEST_BODY:Lc8/ZSe;

.field private static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final client:Lc8/QSe;

.field private fixedContentLength:J

.field private followUpCount:I

.field handshake:Lc8/DSe;

.field protected httpEngine:Lc8/QUe;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private requestHeaders:Lc8/FSe;

.field private responseHeaders:Lc8/GSe;

.field private route:Lc8/eTe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "OPTIONS"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "PUT"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "DELETE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "TRACE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "PATCH"

    aput-object v3, v1, v2

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lc8/cVe;->METHODS:Ljava/util/Set;

    .line 84
    const/4 v0, 0x0

    new-array v1, v4, [B

    invoke-static {v0, v1}, Lc8/ZSe;->create(Lc8/MSe;[B)Lc8/ZSe;

    move-result-object v0

    sput-object v0, Lc8/cVe;->EMPTY_REQUEST_BODY:Lc8/ZSe;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lc8/QSe;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lc8/QSe;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 88
    new-instance v0, Lc8/FSe;

    invoke-direct {v0}, Lc8/FSe;-><init>()V

    iput-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/cVe;->fixedContentLength:J

    .line 112
    iput-object p2, p0, Lc8/cVe;->client:Lc8/QSe;

    .line 113
    return-void
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    const-string/jumbo v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/ATe;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lc8/BTe;->userAgent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private execute(Z)Z
    .locals 8
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 448
    const/4 v2, 0x1

    .line 450
    .local v2, "releaseConnection":Z
    :try_start_0
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->sendRequest()V

    .line 451
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->getConnection()Lc8/sSe;

    move-result-object v0

    .line 452
    .local v0, "connection":Lc8/sSe;
    if-eqz v0, :cond_2

    .line 453
    invoke-interface {v0}, Lc8/sSe;->getRoute()Lc8/eTe;

    move-result-object v7

    iput-object v7, p0, Lc8/cVe;->route:Lc8/eTe;

    .line 454
    invoke-interface {v0}, Lc8/sSe;->getHandshake()Lc8/DSe;

    move-result-object v7

    iput-object v7, p0, Lc8/cVe;->handshake:Lc8/DSe;

    .line 459
    :goto_0
    if-eqz p1, :cond_0

    .line 460
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->readResponse()V
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    const/4 v2, 0x0

    .line 464
    const/4 v6, 0x1

    .line 497
    if-eqz v2, :cond_1

    .line 498
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v4

    .line 499
    .local v4, "streamAllocation":Lc8/aVe;
    invoke-virtual {v4}, Lc8/aVe;->release()V

    .line 500
    .end local v0    # "connection":Lc8/sSe;
    .end local v4    # "streamAllocation":Lc8/aVe;
    :cond_1
    :goto_1
    return v6

    .line 456
    .restart local v0    # "connection":Lc8/sSe;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lc8/cVe;->route:Lc8/eTe;

    .line 457
    const/4 v7, 0x0

    iput-object v7, p0, Lc8/cVe;->handshake:Lc8/DSe;
    :try_end_1
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    .end local v0    # "connection":Lc8/sSe;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Lcom/squareup/okhttp/internal/http/RequestException;
    :try_start_2
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v5

    .line 468
    .local v5, "toThrow":Ljava/io/IOException;
    iput-object v5, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    .line 469
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .end local v1    # "e":Lcom/squareup/okhttp/internal/http/RequestException;
    .end local v5    # "toThrow":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    .line 498
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v4

    .line 499
    .restart local v4    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v4}, Lc8/aVe;->release()V

    .line 500
    .end local v4    # "streamAllocation":Lc8/aVe;
    :cond_3
    throw v6

    .line 470
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Lcom/squareup/okhttp/internal/http/RouteException;
    :try_start_3
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7, v1}, Lc8/QUe;->recover(Lcom/squareup/okhttp/internal/http/RouteException;)Lc8/QUe;

    move-result-object v3

    .line 473
    .local v3, "retryEngine":Lc8/QUe;
    if-eqz v3, :cond_4

    .line 474
    const/4 v2, 0x0

    .line 475
    iput-object v3, p0, Lc8/cVe;->httpEngine:Lc8/QUe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    if-eqz v2, :cond_1

    .line 498
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v4

    .line 499
    .restart local v4    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v4}, Lc8/aVe;->release()V

    goto :goto_1

    .line 480
    .end local v4    # "streamAllocation":Lc8/aVe;
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v5

    .line 481
    .restart local v5    # "toThrow":Ljava/io/IOException;
    iput-object v5, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    .line 482
    throw v5

    .line 483
    .end local v1    # "e":Lcom/squareup/okhttp/internal/http/RouteException;
    .end local v3    # "retryEngine":Lc8/QUe;
    .end local v5    # "toThrow":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7, v1}, Lc8/QUe;->recover(Ljava/io/IOException;)Lc8/QUe;

    move-result-object v3

    .line 486
    .restart local v3    # "retryEngine":Lc8/QUe;
    if-eqz v3, :cond_5

    .line 487
    const/4 v2, 0x0

    .line 488
    iput-object v3, p0, Lc8/cVe;->httpEngine:Lc8/QUe;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 497
    if-eqz v2, :cond_1

    .line 498
    iget-object v7, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v7}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v4

    .line 499
    .restart local v4    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v4}, Lc8/aVe;->release()V

    goto :goto_1

    .line 493
    .end local v4    # "streamAllocation":Lc8/aVe;
    :cond_5
    :try_start_5
    iput-object v1, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    .line 494
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private getHeaders()Lc8/GSe;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v2, p0, Lc8/cVe;->responseHeaders:Lc8/GSe;

    if-nez v2, :cond_0

    .line 155
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v1

    .line 156
    .local v1, "response":Lc8/cTe;
    invoke-virtual {v1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v0

    .line 157
    .local v0, "headers":Lc8/GSe;
    invoke-virtual {v0}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v2

    sget-object v3, Lc8/UUe;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 158
    invoke-virtual {v1}, Lc8/cTe;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    move-result-object v2

    sget-object v3, Lc8/UUe;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 159
    invoke-static {v1}, Lc8/cVe;->responseSourceHeader(Lc8/cTe;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v2

    iput-object v2, p0, Lc8/cVe;->responseHeaders:Lc8/GSe;

    .line 162
    .end local v0    # "headers":Lc8/GSe;
    .end local v1    # "response":Lc8/cTe;
    :cond_0
    iget-object v2, p0, Lc8/cVe;->responseHeaders:Lc8/GSe;

    return-object v2
.end method

.method private getResponse()Lc8/QUe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lc8/cVe;->initHttpEngine()V

    .line 394
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->hasResponse()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    .line 408
    :goto_0
    return-object v4

    .line 431
    .local v0, "followUp":Lc8/VSe;
    .local v1, "requestBody":Lc8/tWp;
    .local v2, "response":Lc8/cTe;
    :cond_0
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v3

    .line 432
    .local v3, "streamAllocation":Lc8/aVe;
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/QUe;->sameConnection(Lc8/JSe;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    invoke-virtual {v3}, Lc8/aVe;->release()V

    .line 434
    const/4 v3, 0x0

    .line 437
    :cond_1
    invoke-virtual {v0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lc8/XUe;

    .end local v1    # "requestBody":Lc8/tWp;
    invoke-direct {p0, v4, v3, v1, v2}, Lc8/cVe;->newHttpEngine(Ljava/lang/String;Lc8/aVe;Lc8/XUe;Lc8/cTe;)Lc8/QUe;

    move-result-object v4

    iput-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    .line 399
    .end local v0    # "followUp":Lc8/VSe;
    .end local v2    # "response":Lc8/cTe;
    .end local v3    # "streamAllocation":Lc8/aVe;
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lc8/cVe;->execute(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v2

    .line 404
    .restart local v2    # "response":Lc8/cTe;
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->followUpRequest()Lc8/VSe;

    move-result-object v0

    .line 406
    .restart local v0    # "followUp":Lc8/VSe;
    if-nez v0, :cond_3

    .line 407
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->releaseStreamAllocation()V

    .line 408
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    goto :goto_0

    .line 411
    :cond_3
    iget v4, p0, Lc8/cVe;->followUpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/cVe;->followUpCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_4

    .line 412
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Too many follow-up requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/cVe;->followUpCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    :cond_4
    invoke-virtual {v0}, Lc8/VSe;->url()Ljava/net/URL;

    move-result-object v4

    iput-object v4, p0, Lc8/cVe;->url:Ljava/net/URL;

    .line 417
    invoke-virtual {v0}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v4

    iput-object v4, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    .line 422
    iget-object v4, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->getRequestBody()Lc8/tWp;

    move-result-object v1

    .line 423
    .restart local v1    # "requestBody":Lc8/tWp;
    invoke-virtual {v0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/cVe;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 424
    const/4 v1, 0x0

    .line 427
    :cond_5
    if-eqz v1, :cond_0

    instance-of v4, v1, Lc8/XUe;

    if-nez v4, :cond_0

    .line 428
    new-instance v4, Ljava/net/HttpRetryException;

    const-string/jumbo v5, "Cannot retry streamed HTTP body"

    iget v6, p0, Lc8/cVe;->responseCode:I

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v1, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 309
    :cond_0
    iget-object v1, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    if-eqz v1, :cond_1

    .line 328
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/cVe;->connected:Z

    .line 315
    :try_start_0
    iget-boolean v1, p0, Lc8/cVe;->doOutput:Z

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lc8/cVe;->method:Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    const-string/jumbo v1, "POST"

    iput-object v1, p0, Lc8/cVe;->method:Ljava/lang/String;

    .line 324
    :cond_2
    iget-object v1, p0, Lc8/cVe;->method:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lc8/cVe;->newHttpEngine(Ljava/lang/String;Lc8/aVe;Lc8/XUe;Lc8/cTe;)Lc8/QUe;

    move-result-object v1

    iput-object v1, p0, Lc8/cVe;->httpEngine:Lc8/QUe;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lc8/cVe;->httpEngineFailure:Ljava/io/IOException;

    .line 327
    throw v0

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/cVe;->method:Ljava/lang/String;

    invoke-static {v1}, Lc8/RUe;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/cVe;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private newHttpEngine(Ljava/lang/String;Lc8/aVe;Lc8/XUe;Lc8/cTe;)Lc8/QUe;
    .locals 18
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "streamAllocation"    # Lc8/aVe;
    .param p3, "requestBody"    # Lc8/XUe;
    .param p4, "priorResponse"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static/range {p1 .. p1}, Lc8/RUe;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v15, Lc8/cVe;->EMPTY_REQUEST_BODY:Lc8/ZSe;

    .line 338
    .local v15, "placeholderBody":Lc8/ZSe;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lc8/cVe;->getURL()Ljava/net/URL;

    move-result-object v17

    .line 339
    .local v17, "url":Ljava/net/URL;
    sget-object v2, Lc8/pTe;->instance:Lc8/pTe;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lc8/pTe;->getHttpUrlChecked(Ljava/lang/String;)Lc8/JSe;

    move-result-object v13

    .line 340
    .local v13, "httpUrl":Lc8/JSe;
    new-instance v2, Lc8/USe;

    invoke-direct {v2}, Lc8/USe;-><init>()V

    .line 341
    invoke-virtual {v2, v13}, Lc8/USe;->url(Lc8/JSe;)Lc8/USe;

    move-result-object v2

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v15}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    move-result-object v11

    .line 343
    .local v11, "builder":Lc8/USe;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    invoke-virtual {v2}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v12

    .line 344
    .local v12, "headers":Lc8/GSe;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual {v12}, Lc8/GSe;->size()I

    move-result v16

    .local v16, "size":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    .line 345
    invoke-virtual {v12, v14}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lc8/USe;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 344
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 335
    .end local v11    # "builder":Lc8/USe;
    .end local v12    # "headers":Lc8/GSe;
    .end local v13    # "httpUrl":Lc8/JSe;
    .end local v14    # "i":I
    .end local v15    # "placeholderBody":Lc8/ZSe;
    .end local v16    # "size":I
    .end local v17    # "url":Ljava/net/URL;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 348
    .restart local v11    # "builder":Lc8/USe;
    .restart local v12    # "headers":Lc8/GSe;
    .restart local v13    # "httpUrl":Lc8/JSe;
    .restart local v14    # "i":I
    .restart local v15    # "placeholderBody":Lc8/ZSe;
    .restart local v16    # "size":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_1
    const/4 v5, 0x0

    .line 349
    .local v5, "bufferRequestBody":Z
    invoke-static/range {p1 .. p1}, Lc8/RUe;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/cVe;->fixedContentLength:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    .line 352
    const-string/jumbo v2, "Content-Length"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/cVe;->fixedContentLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 360
    :goto_2
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v12, v2}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 361
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v6, "application/x-www-form-urlencoded"

    invoke-virtual {v11, v2, v6}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 365
    :cond_2
    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v12, v2}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 366
    const-string/jumbo v2, "User-Agent"

    invoke-direct/range {p0 .. p0}, Lc8/cVe;->defaultUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 369
    :cond_3
    invoke-virtual {v11}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v4

    .line 372
    .local v4, "request":Lc8/VSe;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/cVe;->client:Lc8/QSe;

    .line 373
    .local v3, "engineClient":Lc8/QSe;
    sget-object v2, Lc8/pTe;->instance:Lc8/pTe;

    invoke-virtual {v2, v3}, Lc8/pTe;->internalCache(Lc8/QSe;)Lc8/qTe;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc8/cVe;->getUseCaches()Z

    move-result v2

    if-nez v2, :cond_4

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v2}, Lc8/QSe;->clone()Lc8/QSe;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lc8/QSe;->setCache(Lc8/fSe;)Lc8/QSe;

    move-result-object v3

    .line 377
    :cond_4
    new-instance v2, Lc8/QUe;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lc8/QUe;-><init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V

    return-object v2

    .line 353
    .end local v3    # "engineClient":Lc8/QSe;
    .end local v4    # "request":Lc8/VSe;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lc8/cVe;->chunkLength:I

    if-lez v2, :cond_6

    .line 354
    const-string/jumbo v2, "Transfer-Encoding"

    const-string/jumbo v6, "chunked"

    invoke-virtual {v11, v2, v6}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    goto :goto_2

    .line 356
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private static responseSourceHeader(Lc8/cTe;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 166
    invoke-virtual {p0}, Lc8/cTe;->networkResponse()Lc8/cTe;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lc8/cTe;->cacheResponse()Lc8/cTe;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v0, "NONE"

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/cTe;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lc8/cTe;->cacheResponse()Lc8/cTe;

    move-result-object v0

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/cTe;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/cTe;->networkResponse()Lc8/cTe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cTe;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setProtocols(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v2, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    .line 598
    iget-object v3, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v3}, Lc8/QSe;->getProtocols()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_0
    const-string/jumbo v3, ","

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 602
    .local v1, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 607
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v3, v2}, Lc8/QSe;->setProtocols(Ljava/util/List;)Lc8/QSe;

    .line 608
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-boolean v0, p0, Lc8/cVe;->connected:Z

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    if-nez p1, :cond_1

    .line 569
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    if-nez p2, :cond_2

    .line 577
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/xTe;->logW(Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void

    .line 582
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lc8/cVe;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 585
    :cond_4
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    goto :goto_0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lc8/cVe;->initHttpEngine()V

    .line 119
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/cVe;->execute(Z)Z

    move-result v0

    .line 120
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 121
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v0}, Lc8/QUe;->cancel()V

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v0}, Lc8/QSe;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    :try_start_0
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v0

    .line 143
    .local v0, "response":Lc8/QUe;
    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v2

    invoke-static {v2}, Lc8/QUe;->hasBody(Lc8/cTe;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cTe;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/dTe;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    .end local v0    # "response":Lc8/QUe;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0}, Lc8/cVe;->getHeaders()Lc8/GSe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/GSe;->value(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    :try_start_0
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v0

    invoke-static {v0}, Lc8/ZUe;->get(Lc8/cTe;)Lc8/ZUe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ZUe;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-direct {p0}, Lc8/cVe;->getHeaders()Lc8/GSe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lc8/cVe;->getHeaders()Lc8/GSe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/GSe;->name(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-direct {p0}, Lc8/cVe;->getHeaders()Lc8/GSe;

    move-result-object v0

    .line 216
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v1

    invoke-static {v1}, Lc8/ZUe;->get(Lc8/cTe;)Lc8/ZUe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ZUe;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lc8/UUe;->toMultimap(Lc8/GSe;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v1, p0, Lc8/cVe;->doInput:Z

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "This protocol does not support input"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v0

    .line 242
    .local v0, "response":Lc8/QUe;
    invoke-virtual {p0}, Lc8/cVe;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 243
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v2, p0, Lc8/cVe;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/dTe;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v0}, Lc8/QSe;->getFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lc8/cVe;->connect()V

    .line 252
    iget-object v1, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v1}, Lc8/QUe;->getBufferedRequestBody()Lc8/ZVp;

    move-result-object v0

    .line 253
    .local v0, "sink":Lc8/ZVp;
    if-nez v0, :cond_0

    .line 254
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/cVe;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    iget-object v1, p0, Lc8/cVe;->httpEngine:Lc8/QUe;

    invoke-virtual {v1}, Lc8/QUe;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    invoke-interface {v0}, Lc8/ZVp;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lc8/cVe;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 264
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 266
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 268
    .local v1, "hostPort":I
    :goto_0
    invoke-virtual {p0}, Lc8/cVe;->usingProxy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    iget-object v4, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v4}, Lc8/QSe;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 270
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 273
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v4, Ljava/net/SocketPermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "connect, resolve"

    invoke-direct {v4, v5, v6}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 267
    .end local v1    # "hostPort":I
    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/JSe;->defaultPort(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v0}, Lc8/QSe;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lc8/cVe;->connected:Z

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    invoke-virtual {v0}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/UUe;->toMultimap(Lc8/GSe;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 277
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    invoke-virtual {v0, p1}, Lc8/FSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cTe;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-direct {p0}, Lc8/cVe;->getResponse()Lc8/QUe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cTe;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc8/QSe;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 283
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 618
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lc8/cVe;->setFixedLengthStreamingMode(J)V

    .line 619
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 622
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    iget v0, p0, Lc8/cVe;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2
    iput-wide p1, p0, Lc8/cVe;->fixedContentLength:J

    .line 626
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 627
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7
    .param p1, "newValue"    # J

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 557
    iget-wide v0, p0, Lc8/cVe;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    const-string/jumbo v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lc8/cVe;->ifModifiedSince:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lc8/MUe;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/FSe;->set(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lc8/FSe;->removeAll(Ljava/lang/String;)Lc8/FSe;

    goto :goto_0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    invoke-virtual {v0, p1}, Lc8/QSe;->setFollowRedirects(Z)V

    .line 288
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lc8/cVe;->client:Lc8/QSe;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc8/QSe;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 300
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 611
    sget-object v0, Lc8/cVe;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/cVe;->METHODS:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    iput-object p1, p0, Lc8/cVe;->method:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-boolean v0, p0, Lc8/cVe;->connected:Z

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    if-nez p1, :cond_1

    .line 535
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1
    if-nez p2, :cond_2

    .line 543
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/xTe;->logW(Ljava/lang/String;)V

    .line 553
    :goto_0
    return-void

    .line 548
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lc8/cVe;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lc8/cVe;->requestHeaders:Lc8/FSe;

    invoke-virtual {v0, p1, p2}, Lc8/FSe;->set(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 3

    .prologue
    .line 516
    iget-object v1, p0, Lc8/cVe;->route:Lc8/eTe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/cVe;->route:Lc8/eTe;

    .line 517
    invoke-virtual {v1}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 519
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 517
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_0
    iget-object v1, p0, Lc8/cVe;->client:Lc8/QSe;

    .line 518
    invoke-virtual {v1}, Lc8/QSe;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 519
    .restart local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
