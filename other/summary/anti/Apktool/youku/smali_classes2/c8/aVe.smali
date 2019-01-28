.class public final Lc8/aVe;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final address:Lc8/XRe;

.field private canceled:Z

.field private connection:Lc8/gVe;

.field private final connectionPool:Lc8/uSe;

.field private released:Z

.field private routeSelector:Lc8/YUe;

.field private stream:Lc8/SUe;


# direct methods
.method public constructor <init>(Lc8/uSe;Lc8/XRe;)V
    .locals 0
    .param p1, "connectionPool"    # Lc8/uSe;
    .param p2, "address"    # Lc8/XRe;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    .line 88
    iput-object p2, p0, Lc8/aVe;->address:Lc8/XRe;

    .line 89
    return-void
.end method

.method private connectionFailed(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 276
    iget-object v2, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v2

    .line 277
    :try_start_0
    iget-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    iget v1, v1, Lc8/gVe;->streamCount:I

    if-nez v1, :cond_1

    .line 280
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    invoke-virtual {v1}, Lc8/gVe;->getRoute()Lc8/eTe;

    move-result-object v0

    .line 281
    .local v0, "failedRoute":Lc8/eTe;
    iget-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    invoke-virtual {v1, v0, p1}, Lc8/YUe;->connectFailed(Lc8/eTe;Ljava/io/IOException;)V

    .line 287
    .end local v0    # "failedRoute":Lc8/eTe;
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p0}, Lc8/aVe;->connectionFailed()V

    .line 289
    return-void

    .line 284
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deallocate(ZZZ)V
    .locals 6
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "connectionToClose":Lc8/gVe;
    iget-object v2, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v2

    .line 230
    if-eqz p3, :cond_0

    .line 231
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lc8/aVe;->stream:Lc8/SUe;

    .line 233
    :cond_0
    if-eqz p2, :cond_1

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/aVe;->released:Z

    .line 236
    :cond_1
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    if-eqz v1, :cond_6

    .line 237
    if-eqz p1, :cond_2

    .line 238
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lc8/gVe;->noNewStreams:Z

    .line 240
    :cond_2
    iget-object v1, p0, Lc8/aVe;->stream:Lc8/SUe;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lc8/aVe;->released:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    iget-boolean v1, v1, Lc8/gVe;->noNewStreams:Z

    if-eqz v1, :cond_6

    .line 241
    :cond_3
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    invoke-direct {p0, v1}, Lc8/aVe;->release(Lc8/gVe;)V

    .line 242
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    iget v1, v1, Lc8/gVe;->streamCount:I

    if-lez v1, :cond_4

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    .line 245
    :cond_4
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    iget-object v1, v1, Lc8/gVe;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    iget-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lc8/gVe;->idleAtNanos:J

    .line 247
    sget-object v1, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v3, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    iget-object v4, p0, Lc8/aVe;->connection:Lc8/gVe;

    invoke-virtual {v1, v3, v4}, Lc8/pTe;->connectionBecameIdle(Lc8/uSe;Lc8/gVe;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    iget-object v0, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 251
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 254
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {v0}, Lc8/gVe;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    .line 258
    :cond_7
    return-void

    .line 254
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findConnection(IIIZ)Lc8/gVe;
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lc8/aVe;->released:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "released"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/aVe;->stream:Lc8/SUe;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stream != null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-boolean v1, p0, Lc8/aVe;->canceled:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2
    iget-object v6, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 157
    .local v6, "allocatedConnection":Lc8/gVe;
    if-eqz v6, :cond_3

    iget-boolean v1, v6, Lc8/gVe;->noNewStreams:Z

    if-nez v1, :cond_3

    .line 158
    monitor-exit v2

    .line 188
    .end local v6    # "allocatedConnection":Lc8/gVe;
    :goto_0
    return-object v6

    .line 162
    .restart local v6    # "allocatedConnection":Lc8/gVe;
    :cond_3
    sget-object v1, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v3, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    iget-object v4, p0, Lc8/aVe;->address:Lc8/XRe;

    invoke-virtual {v1, v3, v4, p0}, Lc8/pTe;->get(Lc8/uSe;Lc8/XRe;Lc8/aVe;)Lc8/gVe;

    move-result-object v7

    .line 163
    .local v7, "pooledConnection":Lc8/gVe;
    if-eqz v7, :cond_4

    .line 164
    iput-object v7, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 165
    monitor-exit v2

    move-object v6, v7

    goto :goto_0

    .line 169
    :cond_4
    iget-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    if-nez v1, :cond_5

    .line 170
    new-instance v1, Lc8/YUe;

    iget-object v3, p0, Lc8/aVe;->address:Lc8/XRe;

    invoke-direct {p0}, Lc8/aVe;->routeDatabase()Lc8/yTe;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lc8/YUe;-><init>(Lc8/XRe;Lc8/yTe;)V

    iput-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    .line 172
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    iget-object v1, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    invoke-virtual {v1}, Lc8/YUe;->next()Lc8/eTe;

    move-result-object v8

    .line 175
    .local v8, "route":Lc8/eTe;
    new-instance v0, Lc8/gVe;

    invoke-direct {v0, v8}, Lc8/gVe;-><init>(Lc8/eTe;)V

    .line 176
    .local v0, "newConnection":Lc8/gVe;
    invoke-virtual {p0, v0}, Lc8/aVe;->acquire(Lc8/gVe;)V

    .line 178
    iget-object v2, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v2

    .line 179
    :try_start_2
    sget-object v1, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v3, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    invoke-virtual {v1, v3, v0}, Lc8/pTe;->put(Lc8/uSe;Lc8/gVe;)V

    .line 180
    iput-object v0, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 181
    iget-boolean v1, p0, Lc8/aVe;->canceled:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    iget-object v1, p0, Lc8/aVe;->address:Lc8/XRe;

    invoke-virtual {v1}, Lc8/XRe;->getConnectionSpecs()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/gVe;->connect(IIILjava/util/List;Z)V

    .line 186
    invoke-direct {p0}, Lc8/aVe;->routeDatabase()Lc8/yTe;

    move-result-object v1

    invoke-virtual {v0}, Lc8/gVe;->getRoute()Lc8/eTe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/yTe;->connected(Lc8/eTe;)V

    move-object v6, v0

    .line 188
    goto :goto_0
.end method

.method private findHealthyConnection(IIIZZ)Lc8/gVe;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/aVe;->findConnection(IIIZ)Lc8/gVe;

    move-result-object v0

    .line 130
    .local v0, "candidate":Lc8/gVe;
    iget-object v2, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v2

    .line 131
    :try_start_0
    iget v1, v0, Lc8/gVe;->streamCount:I

    if-nez v1, :cond_1

    .line 132
    monitor-exit v2

    .line 138
    :cond_0
    return-object v0

    .line 134
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0, p5}, Lc8/gVe;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lc8/aVe;->connectionFailed()V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isRecoverable(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 3
    .param p1, "e"    # Lcom/squareup/okhttp/internal/http/RouteException;

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    .line 373
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v2, v0, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 379
    :cond_1
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    .line 380
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    goto :goto_0

    .line 385
    :cond_2
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 392
    :cond_3
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    .line 400
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v0, 0x0

    .line 353
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    .line 362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private release(Lc8/gVe;)V
    .locals 4
    .param p1, "connection"    # Lc8/gVe;

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lc8/gVe;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 307
    iget-object v3, p1, Lc8/gVe;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 308
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 309
    iget-object v3, p1, Lc8/gVe;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    return-void

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/squareup/okhttp/internal/http/StreamAllocation;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private routeDatabase()Lc8/yTe;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lc8/pTe;->instance:Lc8/pTe;

    iget-object v1, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    invoke-virtual {v0, v1}, Lc8/pTe;->routeDatabase(Lc8/uSe;)Lc8/yTe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lc8/gVe;)V
    .locals 2
    .param p1, "connection"    # Lc8/gVe;

    .prologue
    .line 301
    iget-object v0, p1, Lc8/gVe;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 263
    iget-object v3, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v3

    .line 264
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lc8/aVe;->canceled:Z

    .line 265
    iget-object v1, p0, Lc8/aVe;->stream:Lc8/SUe;

    .line 266
    .local v1, "streamToCancel":Lc8/SUe;
    iget-object v0, p0, Lc8/aVe;->connection:Lc8/gVe;

    .line 267
    .local v0, "connectionToCancel":Lc8/gVe;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v1}, Lc8/SUe;->cancel()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    .end local v0    # "connectionToCancel":Lc8/gVe;
    .end local v1    # "streamToCancel":Lc8/SUe;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 270
    .restart local v0    # "connectionToCancel":Lc8/gVe;
    .restart local v1    # "streamToCancel":Lc8/SUe;
    :cond_1
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lc8/gVe;->cancel()V

    goto :goto_0
.end method

.method public declared-synchronized connection()Lc8/gVe;
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/aVe;->connection:Lc8/gVe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectionFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lc8/aVe;->deallocate(ZZZ)V

    .line 294
    return-void
.end method

.method public newStream(IIIZZ)Lc8/SUe;
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lc8/aVe;->findHealthyConnection(IIIZZ)Lc8/gVe;

    move-result-object v1

    .line 99
    .local v1, "resultConnection":Lc8/gVe;
    iget-object v3, v1, Lc8/gVe;->framedConnection:Lc8/TTe;

    if-eqz v3, :cond_0

    .line 100
    new-instance v2, Lc8/KUe;

    iget-object v3, v1, Lc8/gVe;->framedConnection:Lc8/TTe;

    invoke-direct {v2, p0, v3}, Lc8/KUe;-><init>(Lc8/aVe;Lc8/TTe;)V

    .line 108
    .local v2, "resultStream":Lc8/SUe;
    :goto_0
    iget-object v4, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget v3, v1, Lc8/gVe;->streamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lc8/gVe;->streamCount:I

    .line 110
    iput-object v2, p0, Lc8/aVe;->stream:Lc8/SUe;

    .line 111
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 102
    .end local v2    # "resultStream":Lc8/SUe;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lc8/gVe;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    iget-object v3, v1, Lc8/gVe;->source:Lc8/aWp;

    invoke-interface {v3}, Lc8/aWp;->timeout()Lc8/wWp;

    move-result-object v3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    .line 104
    iget-object v3, v1, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->timeout()Lc8/wWp;

    move-result-object v3

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    .line 105
    new-instance v2, Lc8/IUe;

    iget-object v3, v1, Lc8/gVe;->source:Lc8/aWp;

    iget-object v4, v1, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-direct {v2, p0, v3, v4}, Lc8/IUe;-><init>(Lc8/aVe;Lc8/aWp;Lc8/ZVp;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v2    # "resultStream":Lc8/SUe;
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    .end local v1    # "resultConnection":Lc8/gVe;
    .end local v2    # "resultStream":Lc8/SUe;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v3, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public noNewStreams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lc8/aVe;->deallocate(ZZZ)V

    .line 221
    return-void
.end method

.method public recover(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 1
    .param p1, "e"    # Lcom/squareup/okhttp/internal/http/RouteException;

    .prologue
    .line 317
    iget-object v0, p0, Lc8/aVe;->connection:Lc8/gVe;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/aVe;->connectionFailed(Ljava/io/IOException;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    invoke-virtual {v0}, Lc8/YUe;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    :cond_1
    invoke-direct {p0, p1}, Lc8/aVe;->isRecoverable(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    :cond_2
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public recover(Ljava/io/IOException;Lc8/tWp;)Z
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lc8/tWp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v4, p0, Lc8/aVe;->connection:Lc8/gVe;

    if-eqz v4, :cond_1

    .line 331
    iget-object v4, p0, Lc8/aVe;->connection:Lc8/gVe;

    iget v1, v4, Lc8/gVe;->streamCount:I

    .line 332
    .local v1, "streamCount":I
    invoke-direct {p0, p1}, Lc8/aVe;->connectionFailed(Ljava/io/IOException;)V

    .line 334
    if-ne v1, v3, :cond_1

    .line 348
    .end local v1    # "streamCount":I
    :cond_0
    :goto_0
    return v2

    .line 341
    :cond_1
    if-eqz p2, :cond_2

    instance-of v4, p2, Lc8/XUe;

    if-eqz v4, :cond_4

    :cond_2
    move v0, v3

    .line 342
    .local v0, "canRetryRequestBody":Z
    :goto_1
    iget-object v4, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/aVe;->routeSelector:Lc8/YUe;

    invoke-virtual {v4}, Lc8/YUe;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    :cond_3
    invoke-direct {p0, p1}, Lc8/aVe;->isRecoverable(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    .line 348
    goto :goto_0

    .end local v0    # "canRetryRequestBody":Z
    :cond_4
    move v0, v2

    .line 341
    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lc8/aVe;->deallocate(ZZZ)V

    .line 216
    return-void
.end method

.method public streamFinished(Lc8/SUe;)V
    .locals 4
    .param p1, "stream"    # Lc8/SUe;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lc8/aVe;->connectionPool:Lc8/uSe;

    monitor-enter v1

    .line 193
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lc8/aVe;->stream:Lc8/SUe;

    if-eq p1, v0, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/aVe;->stream:Lc8/SUe;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v0}, Lc8/aVe;->deallocate(ZZZ)V

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lc8/aVe;->address:Lc8/XRe;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
