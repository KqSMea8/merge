.class public Lc8/SPp;
.super Ljava/lang/Object;
.source "DefaultCallImpl.java"

# interfaces
.implements Lc8/xPp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RPp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultCallImpl"


# instance fields
.field volatile canceled:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field future:Ljava/util/concurrent/Future;

.field mRequest:Lc8/FPp;


# direct methods
.method public constructor <init>(Lc8/FPp;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "request"    # Lc8/FPp;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/SPp;->mRequest:Lc8/FPp;

    .line 51
    iput-object p2, p0, Lc8/SPp;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string/jumbo v0, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v1, "try to cancel call"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-boolean v2, p0, Lc8/SPp;->canceled:Z

    .line 120
    iget-object v0, p0, Lc8/SPp;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lc8/SPp;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 123
    :cond_0
    return-void
.end method

.method public enqueue(Lc8/yPp;)V
    .locals 4
    .param p1, "callback"    # Lc8/yPp;

    .prologue
    .line 105
    iget-object v1, p0, Lc8/SPp;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Lc8/SPp;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc8/RPp;

    invoke-virtual {p0}, Lc8/SPp;->request()Lc8/FPp;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lc8/RPp;-><init>(Lc8/SPp;Lc8/FPp;Lc8/yPp;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lc8/SPp;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, p0, v0}, Lc8/yPp;->onFailure(Lc8/xPp;Ljava/lang/Exception;)V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "miss executorService in CallImpl "

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v1}, Lc8/yPp;->onFailure(Lc8/xPp;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public execute()Lc8/KPp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lc8/SPp;->request()Lc8/FPp;

    move-result-object v5

    .line 62
    .local v5, "request":Lc8/FPp;
    const/4 v6, 0x0

    .line 63
    .local v6, "response":Lc8/KPp;
    const/4 v7, 0x0

    .line 64
    .local v7, "statusCode":I
    const/4 v4, 0x0

    .line 66
    .local v4, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "currentTimes":I
    move v2, v1

    .line 69
    .end local v1    # "currentTimes":I
    .local v2, "currentTimes":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v5}, Lc8/SPp;->openConnection(Lc8/FPp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 70
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v0, v5}, Lc8/SPp;->prepareRequest(Ljava/net/HttpURLConnection;Lc8/FPp;)V

    .line 71
    invoke-virtual {p0, v0, v5}, Lc8/SPp;->readResponse(Ljava/net/HttpURLConnection;Lc8/FPp;)Lc8/KPp;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    move v1, v2

    .line 97
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "currentTimes":I
    .restart local v1    # "currentTimes":I
    :cond_0
    if-nez v6, :cond_1

    .line 98
    new-instance v8, Lc8/JPp;

    invoke-direct {v8}, Lc8/JPp;-><init>()V

    invoke-virtual {v8, v5}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v8

    invoke-virtual {v8, v7}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v8

    invoke-virtual {v8, v4}, Lc8/JPp;->message(Ljava/lang/String;)Lc8/JPp;

    move-result-object v8

    invoke-virtual {v8}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v6

    .line 100
    :cond_1
    return-object v6

    .line 73
    .end local v1    # "currentTimes":I
    .restart local v2    # "currentTimes":I
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/net/UnknownHostException;
    const/4 v7, -0x1

    .line 75
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 95
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "currentTimes":I
    .restart local v1    # "currentTimes":I
    iget v8, v5, Lc8/FPp;->retryTimes:I

    if-ge v2, v8, :cond_0

    move v2, v1

    .end local v1    # "currentTimes":I
    .restart local v2    # "currentTimes":I
    goto :goto_0

    .line 76
    :catch_1
    move-exception v3

    .line 77
    .local v3, "e":Ljava/net/SocketTimeoutException;
    const/4 v7, -0x2

    .line 78
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 94
    goto :goto_1

    .line 79
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v3

    .line 80
    .local v3, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    const/4 v7, -0x3

    .line 81
    invoke-virtual {v3}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 94
    goto :goto_1

    .line 82
    .end local v3    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_3
    move-exception v3

    .line 83
    .local v3, "e":Ljavax/net/ssl/SSLHandshakeException;
    const/4 v7, -0x4

    .line 84
    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 94
    goto :goto_1

    .line 85
    .end local v3    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_4
    move-exception v3

    .line 86
    .local v3, "e":Ljavax/net/ssl/SSLException;
    const/4 v7, -0x5

    .line 87
    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 94
    goto :goto_1

    .line 88
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :catch_5
    move-exception v3

    .line 89
    .local v3, "e":Ljava/net/ConnectException;
    const/4 v7, -0x6

    .line 90
    invoke-virtual {v3}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 94
    goto :goto_1

    .line 91
    .end local v3    # "e":Ljava/net/ConnectException;
    :catch_6
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, -0x7

    .line 93
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method openConnection(Lc8/FPp;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "request"    # Lc8/FPp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lc8/FPp;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 133
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v1, p1, Lc8/FPp;->connectTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 134
    iget v1, p1, Lc8/FPp;->readTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    return-object v0
.end method

.method prepareRequest(Ljava/net/HttpURLConnection;Lc8/FPp;)V
    .locals 13
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lc8/FPp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 145
    iget-object v8, p2, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    iget-object v8, p2, Lc8/FPp;->headers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 147
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "Cookie"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p2, Lc8/FPp;->url:Ljava/lang/String;

    invoke-static {v8}, Lc8/zPp;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "cookie":Ljava/lang/String;
    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    const-string/jumbo v8, "Cookie"

    iget-object v9, p2, Lc8/FPp;->url:Ljava/lang/String;

    invoke-static {v9}, Lc8/zPp;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    const-string/jumbo v8, "mtopsdk.DefaultCallImpl"

    iget-object v9, p2, Lc8/FPp;->seqNo:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "request url ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p2, Lc8/FPp;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v8, "mtopsdk.DefaultCallImpl"

    iget-object v9, p2, Lc8/FPp;->seqNo:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "request headers ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_3
    const-string/jumbo v8, "POST"

    iget-object v9, p2, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 163
    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 166
    :cond_4
    iget-object v0, p2, Lc8/FPp;->body:Lc8/HPp;

    .line 167
    .local v0, "body":Lc8/HPp;
    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 169
    const-string/jumbo v8, "Content-Type"

    invoke-virtual {v0}, Lc8/HPp;->contentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lc8/HPp;->contentLength()J

    move-result-wide v6

    .line 171
    .local v6, "length":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 172
    long-to-int v8, v6

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 173
    const-string/jumbo v8, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 177
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, v5}, Lc8/HPp;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {v5}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "length":J
    :cond_6
    :goto_1
    return-void

    .line 178
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "length":J
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v9, "write outputstream error."

    invoke-static {v8, v9, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {v5}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    throw v8
.end method

.method readResponse(Ljava/net/HttpURLConnection;Lc8/FPp;)Lc8/KPp;
    .locals 13
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lc8/FPp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    const-string/jumbo v9, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v10, "[readResponse]call task is canceled."

    invoke-static {v9, v10}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v9, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v10, "call canceled"

    invoke-direct {v9, v10}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 199
    .local v8, "status":I
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "reason":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 201
    const-string/jumbo v5, ""

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 205
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, p2, Lc8/FPp;->url:Ljava/lang/String;

    invoke-virtual {p0, v9, v0}, Lc8/SPp;->storeCookies(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    sget-object v9, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v9}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    const-string/jumbo v9, "mtopsdk.DefaultCallImpl"

    iget-object v10, p2, Lc8/FPp;->seqNo:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "response headers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 212
    .local v3, "length":I
    invoke-static {v0}, Lc8/cQp;->checkContentEncodingGZip(Ljava/util/Map;)Z

    move-result v2

    .line 215
    .local v2, "isGZip":Z
    const/16 v9, 0x190

    if-lt v8, v9, :cond_3

    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 224
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    new-instance v7, Lc8/QPp;

    invoke-direct {v7, p0, v4, v3, v1}, Lc8/QPp;-><init>(Lc8/SPp;Ljava/lang/String;ILjava/io/InputStream;)V

    .line 242
    .local v7, "responseBody":Lc8/LPp;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 243
    const-string/jumbo v9, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v10, "[readResponse]call task is canceled."

    invoke-static {v9, v10}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v9, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v10, "call canceled"

    invoke-direct {v9, v10}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 218
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v7    # "responseBody":Lc8/LPp;
    :cond_3
    if-eqz v2, :cond_4

    .line 219
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 221
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 248
    .restart local v7    # "responseBody":Lc8/LPp;
    :cond_5
    invoke-virtual {v7}, Lc8/LPp;->getBytes()[B

    .line 250
    new-instance v9, Lc8/JPp;

    invoke-direct {v9}, Lc8/JPp;-><init>()V

    invoke-virtual {v9, p2}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v9

    invoke-virtual {v9, v8}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v9

    invoke-virtual {v9, v5}, Lc8/JPp;->message(Ljava/lang/String;)Lc8/JPp;

    move-result-object v9

    invoke-virtual {v9, v0}, Lc8/JPp;->headers(Ljava/util/Map;)Lc8/JPp;

    move-result-object v9

    invoke-virtual {v9, v7}, Lc8/JPp;->body(Lc8/LPp;)Lc8/JPp;

    move-result-object v9

    invoke-virtual {v9}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v6

    .line 252
    .local v6, "response":Lc8/KPp;
    return-object v6
.end method

.method public request()Lc8/FPp;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/SPp;->mRequest:Lc8/FPp;

    return-object v0
.end method

.method public storeCookies(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "heads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 262
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v5, "Set-Cookie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "Set-Cookie2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {p1, v0}, Lc8/zPp;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v0    # "cookieStr":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
