.class public final Lc8/QUe;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PUe;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lc8/dTe;

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lc8/ZVp;

.field private cacheResponse:Lc8/cTe;

.field private cacheStrategy:Lc8/zUe;

.field private final callerWritesRequestBody:Z

.field final client:Lc8/QSe;

.field private final forWebSocket:Z

.field private httpStream:Lc8/SUe;

.field private networkRequest:Lc8/VSe;

.field private final priorResponse:Lc8/cTe;

.field private requestBodyOut:Lc8/tWp;

.field sentRequestMillis:J

.field private storeRequest:Lc8/wUe;

.field public final streamAllocation:Lc8/aVe;

.field private transparentGzip:Z

.field private final userRequest:Lc8/VSe;

.field private userResponse:Lc8/cTe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lc8/NUe;

    invoke-direct {v0}, Lc8/NUe;-><init>()V

    sput-object v0, Lc8/QUe;->EMPTY_BODY:Lc8/dTe;

    return-void
.end method

.method public constructor <init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V
    .locals 2
    .param p1, "client"    # Lc8/QSe;
    .param p2, "request"    # Lc8/VSe;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "streamAllocation"    # Lc8/aVe;
    .param p7, "requestBodyOut"    # Lc8/XUe;
    .param p8, "priorResponse"    # Lc8/cTe;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/QUe;->sentRequestMillis:J

    .line 175
    iput-object p1, p0, Lc8/QUe;->client:Lc8/QSe;

    .line 176
    iput-object p2, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    .line 177
    iput-boolean p3, p0, Lc8/QUe;->bufferRequestBody:Z

    .line 178
    iput-boolean p4, p0, Lc8/QUe;->callerWritesRequestBody:Z

    .line 179
    iput-boolean p5, p0, Lc8/QUe;->forWebSocket:Z

    .line 180
    if-eqz p6, :cond_0

    .line 182
    .end local p6    # "streamAllocation":Lc8/aVe;
    :goto_0
    iput-object p6, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    .line 183
    iput-object p7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    .line 184
    iput-object p8, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    .line 185
    return-void

    .line 180
    .restart local p6    # "streamAllocation":Lc8/aVe;
    :cond_0
    new-instance p6, Lc8/aVe;

    .line 182
    .end local p6    # "streamAllocation":Lc8/aVe;
    invoke-virtual {p1}, Lc8/QSe;->getConnectionPool()Lc8/uSe;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/QUe;->createAddress(Lc8/QSe;Lc8/VSe;)Lc8/XRe;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lc8/aVe;-><init>(Lc8/uSe;Lc8/XRe;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/QUe;)Lc8/SUe;
    .locals 1
    .param p0, "x0"    # Lc8/QUe;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    return-object v0
.end method

.method static synthetic access$102(Lc8/QUe;Lc8/VSe;)Lc8/VSe;
    .locals 0
    .param p0, "x0"    # Lc8/QUe;
    .param p1, "x1"    # Lc8/VSe;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    return-object p1
.end method

.method static synthetic access$200(Lc8/QUe;)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/QUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lc8/QUe;->readNetworkResponse()Lc8/cTe;

    move-result-object v0

    return-object v0
.end method

.method private cacheWritingResponse(Lc8/wUe;Lc8/cTe;)Lc8/cTe;
    .locals 8
    .param p1, "cacheRequest"    # Lc8/wUe;
    .param p2, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    if-nez p1, :cond_1

    .line 817
    .end local p2    # "response":Lc8/cTe;
    :cond_0
    :goto_0
    return-object p2

    .line 767
    .restart local p2    # "response":Lc8/cTe;
    :cond_1
    invoke-interface {p1}, Lc8/wUe;->body()Lc8/tWp;

    move-result-object v1

    .line 768
    .local v1, "cacheBodyUnbuffered":Lc8/tWp;
    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {p2}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/dTe;->source()Lc8/aWp;

    move-result-object v3

    .line 771
    .local v3, "source":Lc8/aWp;
    invoke-static {v1}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v0

    .line 773
    .local v0, "cacheBody":Lc8/ZVp;
    new-instance v2, Lc8/OUe;

    invoke-direct {v2, p0, v3, p1, v0}, Lc8/OUe;-><init>(Lc8/QUe;Lc8/aWp;Lc8/wUe;Lc8/ZVp;)V

    .line 815
    .local v2, "cacheWritingSource":Lc8/uWp;
    invoke-virtual {p2}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v4

    new-instance v5, Lc8/VUe;

    .line 816
    invoke-virtual {p2}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v6

    invoke-static {v2}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/VUe;-><init>(Lc8/GSe;Lc8/aWp;)V

    invoke-virtual {v4, v5}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v4

    .line 817
    invoke-virtual {v4}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object p2

    goto :goto_0
.end method

.method private static combine(Lc8/GSe;Lc8/GSe;)Lc8/GSe;
    .locals 6
    .param p0, "cachedHeaders"    # Lc8/GSe;
    .param p1, "networkHeaders"    # Lc8/GSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    new-instance v2, Lc8/FSe;

    invoke-direct {v2}, Lc8/FSe;-><init>()V

    .line 851
    .local v2, "result":Lc8/FSe;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 852
    invoke-virtual {p0, v1}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 857
    :cond_0
    invoke-static {v0}, Lc8/UUe;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v0}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 858
    :cond_1
    invoke-virtual {v2, v0, v4}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 851
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Lc8/GSe;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_5

    .line 863
    invoke-virtual {p1, v1}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 867
    invoke-static {v0}, Lc8/UUe;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 868
    invoke-virtual {p1, v1}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 862
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 872
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v5

    return-object v5
.end method

.method private connect()Lc8/SUe;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;,
            Lcom/squareup/okhttp/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-virtual {v0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 281
    .local v5, "doExtensiveHealthChecks":Z
    :goto_0
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getConnectTimeout()I

    move-result v1

    iget-object v2, p0, Lc8/QUe;->client:Lc8/QSe;

    .line 282
    invoke-virtual {v2}, Lc8/QSe;->getReadTimeout()I

    move-result v2

    iget-object v3, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v3}, Lc8/QSe;->getWriteTimeout()I

    move-result v3

    iget-object v4, p0, Lc8/QUe;->client:Lc8/QSe;

    .line 283
    invoke-virtual {v4}, Lc8/QSe;->getRetryOnConnectionFailure()Z

    move-result v4

    .line 281
    invoke-virtual/range {v0 .. v5}, Lc8/aVe;->newStream(IIIZZ)Lc8/SUe;

    move-result-object v0

    return-object v0

    .line 280
    .end local v5    # "doExtensiveHealthChecks":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static createAddress(Lc8/QSe;Lc8/VSe;)Lc8/XRe;
    .locals 13
    .param p0, "client"    # Lc8/QSe;
    .param p1, "request"    # Lc8/VSe;

    .prologue
    .line 973
    const/4 v5, 0x0

    .line 974
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 975
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 976
    .local v7, "certificatePinner":Lc8/qSe;
    invoke-virtual {p1}, Lc8/VSe;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lc8/QSe;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 978
    invoke-virtual {p0}, Lc8/QSe;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 979
    invoke-virtual {p0}, Lc8/QSe;->getCertificatePinner()Lc8/qSe;

    move-result-object v7

    .line 982
    :cond_0
    new-instance v0, Lc8/XRe;

    invoke-virtual {p1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/JSe;->port()I

    move-result v2

    invoke-virtual {p0}, Lc8/QSe;->getDns()Lc8/BSe;

    move-result-object v3

    .line 983
    invoke-virtual {p0}, Lc8/QSe;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    .line 984
    invoke-virtual {p0}, Lc8/QSe;->getAuthenticator()Lc8/YRe;

    move-result-object v8

    invoke-virtual {p0}, Lc8/QSe;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lc8/QSe;->getProtocols()Ljava/util/List;

    move-result-object v10

    .line 985
    invoke-virtual {p0}, Lc8/QSe;->getConnectionSpecs()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lc8/QSe;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lc8/XRe;-><init>(Ljava/lang/String;ILc8/BSe;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc8/qSe;Lc8/YRe;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method public static hasBody(Lc8/cTe;)Z
    .locals 8
    .param p0, "response"    # Lc8/cTe;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 494
    :cond_1
    invoke-virtual {p0}, Lc8/cTe;->code()I

    move-result v0

    .line 495
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 498
    goto :goto_0

    .line 504
    :cond_3
    invoke-static {p0}, Lc8/UUe;->contentLength(Lc8/cTe;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string/jumbo v3, "chunked"

    const-string/jumbo v4, "Transfer-Encoding"

    .line 505
    invoke-virtual {p0, v4}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 506
    goto :goto_0
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v1, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v2, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v1, v2}, Lc8/pTe;->internalCache(Lc8/QSe;)Lc8/qTe;

    move-result-object v0

    .line 389
    .local v0, "responseCache":Lc8/qTe;
    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    iget-object v2, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-static {v1, v2}, Lc8/zUe;->isCacheable(Lc8/cTe;Lc8/VSe;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-virtual {v1}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/RUe;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    :try_start_0
    iget-object v1, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v0, v1}, Lc8/qTe;->remove(Lc8/VSe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-static {v1}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/qTe;->put(Lc8/cTe;)Lc8/wUe;

    move-result-object v1

    iput-object v1, p0, Lc8/QUe;->storeRequest:Lc8/wUe;

    goto :goto_0
.end method

.method private networkRequest(Lc8/VSe;)Lc8/VSe;
    .locals 6
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p1}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v3

    .line 521
    .local v3, "result":Lc8/USe;
    const-string/jumbo v4, "Host"

    invoke-virtual {p1, v4}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 522
    const-string/jumbo v4, "Host"

    invoke-virtual {p1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v5

    invoke-static {v5}, Lc8/ATe;->hostHeader(Lc8/JSe;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 525
    :cond_0
    const-string/jumbo v4, "Connection"

    invoke-virtual {p1, v4}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 526
    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 529
    :cond_1
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {p1, v4}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 530
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/QUe;->transparentGzip:Z

    .line 531
    const-string/jumbo v4, "Accept-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 534
    :cond_2
    iget-object v4, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v4}, Lc8/QSe;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 535
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {v3}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/UUe;->toMultimap(Lc8/GSe;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 541
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lc8/VSe;->uri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 544
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lc8/UUe;->addCookies(Lc8/USe;Ljava/util/Map;)V

    .line 547
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p1, v4}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 548
    const-string/jumbo v4, "User-Agent"

    invoke-static {}, Lc8/BTe;->userAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 551
    :cond_4
    invoke-virtual {v3}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v4

    return-object v4
.end method

.method private readNetworkResponse()Lc8/cTe;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    iget-object v1, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    invoke-interface {v1}, Lc8/SUe;->finishRequest()V

    .line 737
    iget-object v1, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    invoke-interface {v1}, Lc8/SUe;->readResponseHeaders()Lc8/bTe;

    move-result-object v1

    iget-object v2, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    .line 738
    invoke-virtual {v1, v2}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v1

    iget-object v2, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    .line 739
    invoke-virtual {v2}, Lc8/aVe;->connection()Lc8/gVe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/gVe;->getHandshake()Lc8/DSe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bTe;->handshake(Lc8/DSe;)Lc8/bTe;

    move-result-object v1

    sget-object v2, Lc8/UUe;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v4, p0, Lc8/QUe;->sentRequestMillis:J

    .line 740
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/bTe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;

    move-result-object v1

    sget-object v2, Lc8/UUe;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/bTe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;

    move-result-object v1

    .line 742
    invoke-virtual {v1}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v0

    .line 744
    .local v0, "networkResponse":Lc8/cTe;
    iget-boolean v1, p0, Lc8/QUe;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 745
    invoke-virtual {v0}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v1

    iget-object v2, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    .line 746
    invoke-interface {v2, v0}, Lc8/SUe;->openResponseBody(Lc8/cTe;)Lc8/dTe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v0

    .line 750
    :cond_0
    const-string/jumbo v1, "close"

    invoke-virtual {v0}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v2

    const-string/jumbo v3, "Connection"

    invoke-virtual {v2, v3}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "close"

    const-string/jumbo v2, "Connection"

    .line 751
    invoke-virtual {v0, v2}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    :cond_1
    iget-object v1, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v1}, Lc8/aVe;->noNewStreams()V

    .line 755
    :cond_2
    return-object v0
.end method

.method private static stripBody(Lc8/cTe;)Lc8/cTe;
    .locals 2
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 287
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object p0

    .end local p0    # "response":Lc8/cTe;
    :cond_0
    return-object p0
.end method

.method private unzip(Lc8/cTe;)Lc8/cTe;
    .locals 5
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget-boolean v2, p0, Lc8/QUe;->transparentGzip:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "gzip"

    iget-object v3, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    const-string/jumbo v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    .end local p1    # "response":Lc8/cTe;
    :cond_0
    :goto_0
    return-object p1

    .line 469
    .restart local p1    # "response":Lc8/cTe;
    :cond_1
    invoke-virtual {p1}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    new-instance v0, Lc8/fWp;

    invoke-virtual {p1}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/dTe;->source()Lc8/aWp;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/fWp;-><init>(Lc8/uWp;)V

    .line 474
    .local v0, "responseBody":Lc8/fWp;
    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/GSe;->newBuilder()Lc8/FSe;

    move-result-object v2

    const-string/jumbo v3, "Content-Encoding"

    .line 475
    invoke-virtual {v2, v3}, Lc8/FSe;->removeAll(Ljava/lang/String;)Lc8/FSe;

    move-result-object v2

    const-string/jumbo v3, "Content-Length"

    .line 476
    invoke-virtual {v2, v3}, Lc8/FSe;->removeAll(Ljava/lang/String;)Lc8/FSe;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v1

    .line 478
    .local v1, "strippedHeaders":Lc8/GSe;
    invoke-virtual {p1}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v2

    .line 479
    invoke-virtual {v2, v1}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v2

    new-instance v3, Lc8/VUe;

    .line 480
    invoke-static {v0}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lc8/VUe;-><init>(Lc8/GSe;Lc8/aWp;)V

    invoke-virtual {v2, v3}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object p1

    goto :goto_0
.end method

.method private static validate(Lc8/cTe;Lc8/cTe;)Z
    .locals 8
    .param p0, "cached"    # Lc8/cTe;
    .param p1, "network"    # Lc8/cTe;

    .prologue
    const/4 v2, 0x1

    .line 825
    invoke-virtual {p1}, Lc8/cTe;->code()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v2

    .line 832
    :cond_1
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v3

    const-string/jumbo v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lc8/GSe;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 833
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 834
    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v3

    const-string/jumbo v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lc8/GSe;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 835
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_2

    .line 836
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 841
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->cancel()V

    .line 427
    return-void
.end method

.method public close()Lc8/aVe;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 441
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-virtual {v0}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v0

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 448
    :goto_1
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    return-object v0

    .line 437
    :cond_1
    iget-object v0, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->connectionFailed()V

    goto :goto_1
.end method

.method public followUpRequest()Lc8/VSe;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 888
    iget-object v10, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    if-nez v10, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 889
    :cond_0
    iget-object v10, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v10}, Lc8/aVe;->connection()Lc8/gVe;

    move-result-object v0

    .line 890
    .local v0, "connection":Lc8/sSe;
    if-eqz v0, :cond_2

    .line 891
    invoke-interface {v0}, Lc8/sSe;->getRoute()Lc8/eTe;

    move-result-object v5

    .line 893
    .local v5, "route":Lc8/eTe;
    :goto_0
    if-eqz v5, :cond_3

    .line 894
    invoke-virtual {v5}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .line 896
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_1
    iget-object v10, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-virtual {v10}, Lc8/cTe;->code()I

    move-result v4

    .line 898
    .local v4, "responseCode":I
    iget-object v10, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v10}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "method":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 957
    :cond_1
    :goto_2
    return-object v9

    .end local v2    # "method":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "route":Lc8/eTe;
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_2
    move-object v5, v9

    .line 891
    goto :goto_0

    .line 894
    .restart local v5    # "route":Lc8/eTe;
    :cond_3
    iget-object v10, p0, Lc8/QUe;->client:Lc8/QSe;

    .line 895
    invoke-virtual {v10}, Lc8/QSe;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    goto :goto_1

    .line 901
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_4

    .line 902
    new-instance v9, Ljava/net/ProtocolException;

    const-string/jumbo v10, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 906
    :cond_4
    :sswitch_1
    iget-object v9, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v9}, Lc8/QSe;->getAuthenticator()Lc8/YRe;

    move-result-object v9

    iget-object v10, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-static {v9, v10, v7}, Lc8/UUe;->processAuthHeader(Lc8/YRe;Lc8/cTe;Ljava/net/Proxy;)Lc8/VSe;

    move-result-object v9

    goto :goto_2

    .line 912
    :sswitch_2
    const-string/jumbo v10, "GET"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "HEAD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 921
    :cond_5
    :sswitch_3
    iget-object v10, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v10}, Lc8/QSe;->getFollowRedirects()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 923
    iget-object v10, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    const-string/jumbo v11, "Location"

    invoke-virtual {v10, v11}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 925
    iget-object v10, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v10}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v10

    invoke-virtual {v10, v1}, Lc8/JSe;->resolve(Ljava/lang/String;)Lc8/JSe;

    move-result-object v8

    .line 928
    .local v8, "url":Lc8/JSe;
    if-eqz v8, :cond_1

    .line 931
    invoke-virtual {v8}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v11}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v11

    invoke-virtual {v11}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 932
    .local v6, "sameScheme":Z
    if-nez v6, :cond_6

    iget-object v10, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v10}, Lc8/QSe;->getFollowSslRedirects()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 935
    :cond_6
    iget-object v10, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v10}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v3

    .line 936
    .local v3, "requestBuilder":Lc8/USe;
    invoke-static {v2}, Lc8/RUe;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 937
    invoke-static {v2}, Lc8/RUe;->redirectsToGet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 938
    const-string/jumbo v10, "GET"

    invoke-virtual {v3, v10, v9}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    .line 942
    :goto_3
    const-string/jumbo v9, "Transfer-Encoding"

    invoke-virtual {v3, v9}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    .line 943
    const-string/jumbo v9, "Content-Length"

    invoke-virtual {v3, v9}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    .line 944
    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v3, v9}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    .line 950
    :cond_7
    invoke-virtual {p0, v8}, Lc8/QUe;->sameConnection(Lc8/JSe;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 951
    const-string/jumbo v9, "Authorization"

    invoke-virtual {v3, v9}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    .line 954
    :cond_8
    invoke-virtual {v3, v8}, Lc8/USe;->url(Lc8/JSe;)Lc8/USe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v9

    goto/16 :goto_2

    .line 940
    :cond_9
    invoke-virtual {v3, v2, v9}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    goto :goto_3

    .line 899
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lc8/ZVp;
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    .line 314
    .local v1, "result":Lc8/ZVp;
    if-eqz v1, :cond_0

    .line 317
    .end local v1    # "result":Lc8/ZVp;
    :goto_0
    return-object v1

    .line 315
    .restart local v1    # "result":Lc8/ZVp;
    :cond_0
    invoke-virtual {p0}, Lc8/QUe;->getRequestBody()Lc8/tWp;

    move-result-object v0

    .line 316
    .local v0, "requestBody":Lc8/tWp;
    if-eqz v0, :cond_1

    .line 317
    invoke-static {v0}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v1

    .end local v1    # "result":Lc8/ZVp;
    iput-object v1, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    goto :goto_0

    .restart local v1    # "result":Lc8/ZVp;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnection()Lc8/sSe;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->connection()Lc8/gVe;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lc8/VSe;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    return-object v0
.end method

.method public getRequestBody()Lc8/tWp;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    return-object v0
.end method

.method public getResponse()Lc8/cTe;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 333
    :cond_0
    iget-object v0, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method permitsRequestBody(Lc8/VSe;)Z
    .locals 1
    .param p1, "request"    # Lc8/VSe;

    .prologue
    .line 303
    invoke-virtual {p1}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/RUe;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readResponse()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 559
    iget-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    if-eqz v4, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v4, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    if-nez v4, :cond_2

    .line 563
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "call sendRequest() first!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_2
    iget-object v4, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    if-eqz v4, :cond_0

    .line 571
    iget-boolean v4, p0, Lc8/QUe;->forWebSocket:Z

    if-eqz v4, :cond_3

    .line 572
    iget-object v4, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v5, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v4, v5}, Lc8/SUe;->writeRequestHeaders(Lc8/VSe;)V

    .line 573
    invoke-direct {p0}, Lc8/QUe;->readNetworkResponse()Lc8/cTe;

    move-result-object v2

    .line 612
    .local v2, "networkResponse":Lc8/cTe;
    :goto_1
    invoke-virtual {v2}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/QUe;->receiveHeaders(Lc8/GSe;)V

    .line 615
    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    if-eqz v4, :cond_b

    .line 616
    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    invoke-static {v4, v2}, Lc8/QUe;->validate(Lc8/cTe;Lc8/cTe;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 617
    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    invoke-virtual {v4}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    .line 618
    invoke-virtual {v4, v5}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    .line 619
    invoke-static {v5}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->priorResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    .line 620
    invoke-virtual {v5}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v5

    invoke-virtual {v2}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/QUe;->combine(Lc8/GSe;Lc8/GSe;)Lc8/GSe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    .line 621
    invoke-static {v5}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->cacheResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    .line 622
    invoke-static {v2}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->networkResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    .line 623
    invoke-virtual {v4}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v4

    iput-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    .line 624
    invoke-virtual {v2}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/dTe;->close()V

    .line 625
    invoke-virtual {p0}, Lc8/QUe;->releaseStreamAllocation()V

    .line 629
    sget-object v4, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v5, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v4, v5}, Lc8/pTe;->internalCache(Lc8/QSe;)Lc8/qTe;

    move-result-object v3

    .line 630
    .local v3, "responseCache":Lc8/qTe;
    invoke-interface {v3}, Lc8/qTe;->trackConditionalCacheHit()V

    .line 631
    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    iget-object v5, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-static {v5}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc8/qTe;->update(Lc8/cTe;Lc8/cTe;)V

    .line 632
    iget-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-direct {p0, v4}, Lc8/QUe;->unzip(Lc8/cTe;)Lc8/cTe;

    move-result-object v4

    iput-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    goto/16 :goto_0

    .line 575
    .end local v2    # "networkResponse":Lc8/cTe;
    .end local v3    # "responseCache":Lc8/qTe;
    :cond_3
    iget-boolean v4, p0, Lc8/QUe;->callerWritesRequestBody:Z

    if-nez v4, :cond_4

    .line 576
    new-instance v4, Lc8/PUe;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-direct {v4, p0, v5, v6}, Lc8/PUe;-><init>(Lc8/QUe;ILc8/VSe;)V

    iget-object v5, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-virtual {v4, v5}, Lc8/PUe;->proceed(Lc8/VSe;)Lc8/cTe;

    move-result-object v2

    .restart local v2    # "networkResponse":Lc8/cTe;
    goto/16 :goto_1

    .line 580
    .end local v2    # "networkResponse":Lc8/cTe;
    :cond_4
    iget-object v4, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->buffer()Lc8/YVp;

    move-result-object v4

    invoke-virtual {v4}, Lc8/YVp;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 581
    iget-object v4, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->emit()Lc8/ZVp;

    .line 585
    :cond_5
    iget-wide v4, p0, Lc8/QUe;->sentRequestMillis:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 586
    iget-object v4, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-static {v4}, Lc8/UUe;->contentLength(Lc8/VSe;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_6

    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    instance-of v4, v4, Lc8/XUe;

    if-eqz v4, :cond_6

    .line 588
    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    check-cast v4, Lc8/XUe;

    invoke-virtual {v4}, Lc8/XUe;->contentLength()J

    move-result-wide v0

    .line 589
    .local v0, "contentLength":J
    iget-object v4, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-virtual {v4}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v4

    const-string/jumbo v5, "Content-Length"

    .line 590
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    move-result-object v4

    .line 591
    invoke-virtual {v4}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v4

    iput-object v4, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    .line 593
    .end local v0    # "contentLength":J
    :cond_6
    iget-object v4, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v5, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v4, v5}, Lc8/SUe;->writeRequestHeaders(Lc8/VSe;)V

    .line 597
    :cond_7
    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    if-eqz v4, :cond_8

    .line 598
    iget-object v4, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    if-eqz v4, :cond_9

    .line 600
    iget-object v4, p0, Lc8/QUe;->bufferedRequestBody:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->close()V

    .line 604
    :goto_2
    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    instance-of v4, v4, Lc8/XUe;

    if-eqz v4, :cond_8

    .line 605
    iget-object v5, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    check-cast v4, Lc8/XUe;

    invoke-interface {v5, v4}, Lc8/SUe;->writeRequestBody(Lc8/XUe;)V

    .line 609
    :cond_8
    invoke-direct {p0}, Lc8/QUe;->readNetworkResponse()Lc8/cTe;

    move-result-object v2

    .restart local v2    # "networkResponse":Lc8/cTe;
    goto/16 :goto_1

    .line 602
    .end local v2    # "networkResponse":Lc8/cTe;
    :cond_9
    iget-object v4, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    invoke-interface {v4}, Lc8/tWp;->close()V

    goto :goto_2

    .line 635
    .restart local v2    # "networkResponse":Lc8/cTe;
    :cond_a
    iget-object v4, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    invoke-virtual {v4}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v4

    invoke-static {v4}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 639
    :cond_b
    invoke-virtual {v2}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    .line 640
    invoke-virtual {v4, v5}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    .line 641
    invoke-static {v5}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->priorResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    iget-object v5, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    .line 642
    invoke-static {v5}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->cacheResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    .line 643
    invoke-static {v2}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->networkResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v4

    .line 644
    invoke-virtual {v4}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v4

    iput-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    .line 646
    iget-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-static {v4}, Lc8/QUe;->hasBody(Lc8/cTe;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    invoke-direct {p0}, Lc8/QUe;->maybeCache()V

    .line 648
    iget-object v4, p0, Lc8/QUe;->storeRequest:Lc8/wUe;

    iget-object v5, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-direct {p0, v4, v5}, Lc8/QUe;->cacheWritingResponse(Lc8/wUe;Lc8/cTe;)Lc8/cTe;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/QUe;->unzip(Lc8/cTe;)Lc8/cTe;

    move-result-object v4

    iput-object v4, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lc8/GSe;)V
    .locals 3
    .param p1, "headers"    # Lc8/GSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 877
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    .line 878
    iget-object v1, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v1}, Lc8/VSe;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lc8/UUe;->toMultimap(Lc8/GSe;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 880
    :cond_0
    return-void
.end method

.method public recover(Lcom/squareup/okhttp/internal/http/RouteException;)Lc8/QUe;
    .locals 9
    .param p1, "e"    # Lcom/squareup/okhttp/internal/http/RouteException;

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v1, p1}, Lc8/aVe;->recover(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getRetryOnConnectionFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v6

    .line 357
    .local v6, "streamAllocation":Lc8/aVe;
    new-instance v0, Lc8/QUe;

    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    iget-object v2, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    iget-boolean v3, p0, Lc8/QUe;->bufferRequestBody:Z

    iget-boolean v4, p0, Lc8/QUe;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lc8/QUe;->forWebSocket:Z

    iget-object v7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    check-cast v7, Lc8/XUe;

    iget-object v8, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    invoke-direct/range {v0 .. v8}, Lc8/QUe;-><init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V

    goto :goto_0
.end method

.method public recover(Ljava/io/IOException;)Lc8/QUe;
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 384
    iget-object v0, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    invoke-virtual {p0, p1, v0}, Lc8/QUe;->recover(Ljava/io/IOException;Lc8/tWp;)Lc8/QUe;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;Lc8/tWp;)Lc8/QUe;
    .locals 9
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lc8/tWp;

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v1, p1, p2}, Lc8/aVe;->recover(Ljava/io/IOException;Lc8/tWp;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getRetryOnConnectionFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v6

    .line 379
    .local v6, "streamAllocation":Lc8/aVe;
    new-instance v0, Lc8/QUe;

    iget-object v1, p0, Lc8/QUe;->client:Lc8/QSe;

    iget-object v2, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    iget-boolean v3, p0, Lc8/QUe;->bufferRequestBody:Z

    iget-boolean v4, p0, Lc8/QUe;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lc8/QUe;->forWebSocket:Z

    move-object v7, p2

    check-cast v7, Lc8/XUe;

    iget-object v8, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    invoke-direct/range {v0 .. v8}, Lc8/QUe;-><init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V

    goto :goto_0
.end method

.method public releaseStreamAllocation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->release()V

    .line 414
    return-void
.end method

.method public sameConnection(Lc8/JSe;)Z
    .locals 3
    .param p1, "followUp"    # Lc8/JSe;

    .prologue
    .line 966
    iget-object v1, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-virtual {v1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v0

    .line 967
    .local v0, "url":Lc8/JSe;
    invoke-virtual {v0}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-virtual {v0}, Lc8/JSe;->port()I

    move-result v1

    invoke-virtual {p1}, Lc8/JSe;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 969
    invoke-virtual {v0}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/JSe;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RequestException;,
            Lcom/squareup/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v7, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    if-eqz v7, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 203
    :cond_2
    iget-object v7, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    invoke-direct {p0, v7}, Lc8/QUe;->networkRequest(Lc8/VSe;)Lc8/VSe;

    move-result-object v1

    .line 205
    .local v1, "request":Lc8/VSe;
    sget-object v7, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v8, p0, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v7, v8}, Lc8/pTe;->internalCache(Lc8/QSe;)Lc8/qTe;

    move-result-object v6

    .line 206
    .local v6, "responseCache":Lc8/qTe;
    if-eqz v6, :cond_5

    .line 207
    invoke-interface {v6, v1}, Lc8/qTe;->get(Lc8/VSe;)Lc8/cTe;

    move-result-object v0

    .line 210
    .local v0, "cacheCandidate":Lc8/cTe;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 211
    .local v4, "now":J
    new-instance v7, Lc8/yUe;

    invoke-direct {v7, v4, v5, v1, v0}, Lc8/yUe;-><init>(JLc8/VSe;Lc8/cTe;)V

    invoke-virtual {v7}, Lc8/yUe;->get()Lc8/zUe;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    .line 212
    iget-object v7, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    iget-object v7, v7, Lc8/zUe;->networkRequest:Lc8/VSe;

    iput-object v7, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    .line 213
    iget-object v7, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    iget-object v7, v7, Lc8/zUe;->cacheResponse:Lc8/cTe;

    iput-object v7, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    .line 215
    if-eqz v6, :cond_3

    .line 216
    iget-object v7, p0, Lc8/QUe;->cacheStrategy:Lc8/zUe;

    invoke-interface {v6, v7}, Lc8/qTe;->trackResponse(Lc8/zUe;)V

    .line 219
    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    if-nez v7, :cond_4

    .line 220
    invoke-virtual {v0}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v7

    invoke-static {v7}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 223
    :cond_4
    iget-object v7, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    if-eqz v7, :cond_9

    .line 224
    invoke-direct {p0}, Lc8/QUe;->connect()Lc8/SUe;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    .line 225
    iget-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    invoke-interface {v7, p0}, Lc8/SUe;->setHttpEngine(Lc8/QUe;)V

    .line 231
    iget-boolean v7, p0, Lc8/QUe;->callerWritesRequestBody:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-virtual {p0, v7}, Lc8/QUe;->permitsRequestBody(Lc8/VSe;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    if-nez v7, :cond_0

    .line 232
    invoke-static {v1}, Lc8/UUe;->contentLength(Lc8/VSe;)J

    move-result-wide v2

    .line 233
    .local v2, "contentLength":J
    iget-boolean v7, p0, Lc8/QUe;->bufferRequestBody:Z

    if-eqz v7, :cond_8

    .line 234
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-lez v7, :cond_6

    .line 235
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 207
    .end local v0    # "cacheCandidate":Lc8/cTe;
    .end local v2    # "contentLength":J
    .end local v4    # "now":J
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    .restart local v0    # "cacheCandidate":Lc8/cTe;
    .restart local v2    # "contentLength":J
    .restart local v4    # "now":J
    :cond_6
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_7

    .line 241
    iget-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v8, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v7, v8}, Lc8/SUe;->writeRequestHeaders(Lc8/VSe;)V

    .line 242
    new-instance v7, Lc8/XUe;

    long-to-int v8, v2

    invoke-direct {v7, v8}, Lc8/XUe;-><init>(I)V

    iput-object v7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    goto/16 :goto_0

    .line 247
    :cond_7
    new-instance v7, Lc8/XUe;

    invoke-direct {v7}, Lc8/XUe;-><init>()V

    iput-object v7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    goto/16 :goto_0

    .line 250
    :cond_8
    iget-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v8, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v7, v8}, Lc8/SUe;->writeRequestHeaders(Lc8/VSe;)V

    .line 251
    iget-object v7, p0, Lc8/QUe;->httpStream:Lc8/SUe;

    iget-object v8, p0, Lc8/QUe;->networkRequest:Lc8/VSe;

    invoke-interface {v7, v8, v2, v3}, Lc8/SUe;->createRequestBody(Lc8/VSe;J)Lc8/tWp;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->requestBodyOut:Lc8/tWp;

    goto/16 :goto_0

    .line 256
    .end local v2    # "contentLength":J
    :cond_9
    iget-object v7, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    if-eqz v7, :cond_a

    .line 258
    iget-object v7, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    invoke-virtual {v7}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v7

    iget-object v8, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    .line 259
    invoke-virtual {v7, v8}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v7

    iget-object v8, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    .line 260
    invoke-static {v8}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/bTe;->priorResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v7

    iget-object v8, p0, Lc8/QUe;->cacheResponse:Lc8/cTe;

    .line 261
    invoke-static {v8}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/bTe;->cacheResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v7

    .line 262
    invoke-virtual {v7}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    .line 275
    :goto_2
    iget-object v7, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    invoke-direct {p0, v7}, Lc8/QUe;->unzip(Lc8/cTe;)Lc8/cTe;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    goto/16 :goto_0

    .line 265
    :cond_a
    new-instance v7, Lc8/bTe;

    invoke-direct {v7}, Lc8/bTe;-><init>()V

    iget-object v8, p0, Lc8/QUe;->userRequest:Lc8/VSe;

    .line 266
    invoke-virtual {v7, v8}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v7

    iget-object v8, p0, Lc8/QUe;->priorResponse:Lc8/cTe;

    .line 267
    invoke-static {v8}, Lc8/QUe;->stripBody(Lc8/cTe;)Lc8/cTe;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/bTe;->priorResponse(Lc8/cTe;)Lc8/bTe;

    move-result-object v7

    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    .line 268
    invoke-virtual {v7, v8}, Lc8/bTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;

    move-result-object v7

    const/16 v8, 0x1f8

    .line 269
    invoke-virtual {v7, v8}, Lc8/bTe;->code(I)Lc8/bTe;

    move-result-object v7

    const-string/jumbo v8, "Unsatisfiable Request (only-if-cached)"

    .line 270
    invoke-virtual {v7, v8}, Lc8/bTe;->message(Ljava/lang/String;)Lc8/bTe;

    move-result-object v7

    sget-object v8, Lc8/QUe;->EMPTY_BODY:Lc8/dTe;

    .line 271
    invoke-virtual {v7, v8}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v7

    .line 272
    invoke-virtual {v7}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v7

    iput-object v7, p0, Lc8/QUe;->userResponse:Lc8/cTe;

    goto :goto_2
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 298
    iget-wide v0, p0, Lc8/QUe;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 299
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/QUe;->sentRequestMillis:J

    .line 300
    return-void
.end method
