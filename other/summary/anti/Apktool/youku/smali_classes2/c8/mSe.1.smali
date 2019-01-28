.class public Lc8/mSe;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kSe;,
        Lc8/lSe;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lc8/QSe;

.field engine:Lc8/QUe;

.field private executed:Z

.field originalRequest:Lc8/VSe;


# direct methods
.method protected constructor <init>(Lc8/QSe;Lc8/VSe;)V
    .locals 1
    .param p1, "client"    # Lc8/QSe;
    .param p2, "originalRequest"    # Lc8/VSe;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lc8/QSe;->copyWithDefaults()Lc8/QSe;

    move-result-object v0

    iput-object v0, p0, Lc8/mSe;->client:Lc8/QSe;

    .line 50
    iput-object p2, p0, Lc8/mSe;->originalRequest:Lc8/VSe;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lc8/mSe;Z)Lc8/cTe;
    .locals 1
    .param p0, "x0"    # Lc8/mSe;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/mSe;->getResponseWithInterceptorChain(Z)Lc8/cTe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/mSe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mSe;

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/mSe;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/mSe;)Lc8/QSe;
    .locals 1
    .param p0, "x0"    # Lc8/mSe;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/mSe;->client:Lc8/QSe;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lc8/cTe;
    .locals 3
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lc8/kSe;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-direct {v0, p0, v1, v2, p1}, Lc8/kSe;-><init>(Lc8/mSe;ILc8/VSe;Z)V

    .line 205
    .local v0, "chain":Lc8/KSe;
    iget-object v1, p0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-interface {v0, v1}, Lc8/KSe;->proceed(Lc8/VSe;)Lc8/cTe;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    iget-boolean v2, p0, Lc8/mSe;->canceled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "canceled call"

    .line 199
    .local v1, "string":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-virtual {v2}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v2

    const-string/jumbo v3, "/..."

    invoke-virtual {v2, v3}, Lc8/JSe;->resolve(Ljava/lang/String;)Lc8/JSe;

    move-result-object v0

    .line 200
    .local v0, "redactedUrl":Lc8/JSe;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    .end local v0    # "redactedUrl":Lc8/JSe;
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/mSe;->canceled:Z

    .line 123
    iget-object v0, p0, Lc8/mSe;->engine:Lc8/QUe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v0}, Lc8/QUe;->cancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public enqueue(Lc8/nSe;)V
    .locals 1
    .param p1, "responseCallback"    # Lc8/nSe;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/mSe;->enqueue(Lc8/nSe;Z)V

    .line 107
    return-void
.end method

.method enqueue(Lc8/nSe;Z)V
    .locals 3
    .param p1, "responseCallback"    # Lc8/nSe;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lc8/mSe;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 112
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/mSe;->executed:Z

    .line 113
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v0, p0, Lc8/mSe;->client:Lc8/QSe;

    invoke-virtual {v0}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v0

    new-instance v1, Lc8/lSe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lc8/lSe;-><init>(Lc8/mSe;Lc8/nSe;ZLc8/jSe;)V

    invoke-virtual {v0, v1}, Lc8/zSe;->enqueue(Lc8/lSe;)V

    .line 115
    return-void
.end method

.method public execute()Lc8/cTe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lc8/mSe;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lc8/mSe;->executed:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    iget-object v1, p0, Lc8/mSe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/zSe;->executed(Lc8/mSe;)V

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/mSe;->getResponseWithInterceptorChain(Z)Lc8/cTe;

    move-result-object v0

    .line 81
    .local v0, "result":Lc8/cTe;
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .end local v0    # "result":Lc8/cTe;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lc8/mSe;->client:Lc8/QSe;

    invoke-virtual {v2}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/zSe;->finished(Lc8/mSe;)V

    throw v1

    .restart local v0    # "result":Lc8/cTe;
    :cond_1
    iget-object v1, p0, Lc8/mSe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/zSe;->finished(Lc8/mSe;)V

    return-object v0
.end method

.method getResponse(Lc8/VSe;Z)Lc8/cTe;
    .locals 21
    .param p1, "request"    # Lc8/VSe;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Lc8/VSe;->body()Lc8/ZSe;

    move-result-object v11

    .line 254
    .local v11, "body":Lc8/ZSe;
    if-eqz v11, :cond_1

    .line 255
    invoke-virtual/range {p1 .. p1}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v19

    .line 257
    .local v19, "requestBuilder":Lc8/USe;
    invoke-virtual {v11}, Lc8/ZSe;->contentType()Lc8/MSe;

    move-result-object v14

    .line 258
    .local v14, "contentType":Lc8/MSe;
    if-eqz v14, :cond_0

    .line 259
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v14}, Lc8/MSe;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 262
    :cond_0
    invoke-virtual {v11}, Lc8/ZSe;->contentLength()J

    move-result-wide v12

    .line 263
    .local v12, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    .line 264
    const-string/jumbo v2, "Content-Length"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 265
    const-string/jumbo v2, "Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    .line 271
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lc8/USe;->build()Lc8/VSe;

    move-result-object p1

    .line 275
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lc8/MSe;
    .end local v19    # "requestBuilder":Lc8/USe;
    :cond_1
    new-instance v2, Lc8/QUe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mSe;->client:Lc8/QSe;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lc8/QUe;-><init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    .line 277
    const/16 v17, 0x0

    .line 279
    .local v17, "followUpCount":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/mSe;->canceled:Z

    if-eqz v2, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->releaseStreamAllocation()V

    .line 281
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    .end local v17    # "followUpCount":I
    .restart local v12    # "contentLength":J
    .restart local v14    # "contentType":Lc8/MSe;
    .restart local v19    # "requestBuilder":Lc8/USe;
    :cond_3
    const-string/jumbo v2, "Transfer-Encoding"

    const-string/jumbo v3, "chunked"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 268
    const-string/jumbo v2, "Content-Length"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lc8/USe;->removeHeader(Ljava/lang/String;)Lc8/USe;

    goto :goto_0

    .line 284
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lc8/MSe;
    .end local v19    # "requestBuilder":Lc8/USe;
    .restart local v17    # "followUpCount":I
    :cond_4
    const/16 v18, 0x1

    .line 286
    .local v18, "releaseConnection":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->sendRequest()V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->readResponse()V
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/16 v18, 0x0

    .line 315
    if-eqz v18, :cond_5

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v8

    .line 317
    .local v8, "streamAllocation":Lc8/aVe;
    invoke-virtual {v8}, Lc8/aVe;->release()V

    .line 321
    .end local v8    # "streamAllocation":Lc8/aVe;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->getResponse()Lc8/cTe;

    move-result-object v10

    .line 322
    .local v10, "response":Lc8/cTe;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->followUpRequest()Lc8/VSe;

    move-result-object v16

    .line 324
    .local v16, "followUp":Lc8/VSe;
    if-nez v16, :cond_a

    .line 325
    if-nez p2, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->releaseStreamAllocation()V

    .line 328
    :cond_6
    return-object v10

    .line 289
    .end local v10    # "response":Lc8/cTe;
    .end local v16    # "followUp":Lc8/VSe;
    :catch_0
    move-exception v15

    .line 291
    .local v15, "e":Lcom/squareup/okhttp/internal/http/RequestException;
    :try_start_1
    invoke-virtual {v15}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .end local v15    # "e":Lcom/squareup/okhttp/internal/http/RequestException;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_7

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v3}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v8}, Lc8/aVe;->release()V

    .line 318
    .end local v8    # "streamAllocation":Lc8/aVe;
    :cond_7
    throw v2

    .line 292
    :catch_1
    move-exception v15

    .line 294
    .local v15, "e":Lcom/squareup/okhttp/internal/http/RouteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2, v15}, Lc8/QUe;->recover(Lcom/squareup/okhttp/internal/http/RouteException;)Lc8/QUe;

    move-result-object v20

    .line 295
    .local v20, "retryEngine":Lc8/QUe;
    if-eqz v20, :cond_8

    .line 296
    const/16 v18, 0x0

    .line 297
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/mSe;->engine:Lc8/QUe;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-eqz v18, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v8}, Lc8/aVe;->release()V

    goto/16 :goto_1

    .line 301
    .end local v8    # "streamAllocation":Lc8/aVe;
    :cond_8
    :try_start_3
    invoke-virtual {v15}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 302
    .end local v15    # "e":Lcom/squareup/okhttp/internal/http/RouteException;
    .end local v20    # "retryEngine":Lc8/QUe;
    :catch_2
    move-exception v15

    .line 304
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lc8/QUe;->recover(Ljava/io/IOException;Lc8/tWp;)Lc8/QUe;

    move-result-object v20

    .line 305
    .restart local v20    # "retryEngine":Lc8/QUe;
    if-eqz v20, :cond_9

    .line 306
    const/16 v18, 0x0

    .line 307
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/mSe;->engine:Lc8/QUe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    if-eqz v18, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v8

    .line 317
    .restart local v8    # "streamAllocation":Lc8/aVe;
    invoke-virtual {v8}, Lc8/aVe;->release()V

    goto/16 :goto_1

    .line 312
    .end local v8    # "streamAllocation":Lc8/aVe;
    :cond_9
    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "retryEngine":Lc8/QUe;
    .restart local v10    # "response":Lc8/cTe;
    .restart local v16    # "followUp":Lc8/VSe;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v2}, Lc8/QUe;->close()Lc8/aVe;

    move-result-object v8

    .line 333
    .restart local v8    # "streamAllocation":Lc8/aVe;
    add-int/lit8 v17, v17, 0x1

    const/16 v2, 0x14

    move/from16 v0, v17

    if-le v0, v2, :cond_b

    .line 334
    invoke-virtual {v8}, Lc8/aVe;->release()V

    .line 335
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual/range {v16 .. v16}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/QUe;->sameConnection(Lc8/JSe;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 339
    invoke-virtual {v8}, Lc8/aVe;->release()V

    .line 340
    const/4 v8, 0x0

    .line 343
    :cond_c
    move-object/from16 p1, v16

    .line 344
    new-instance v2, Lc8/QUe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mSe;->client:Lc8/QSe;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lc8/QUe;-><init>(Lc8/QSe;Lc8/VSe;ZZZLc8/aVe;Lc8/XUe;Lc8/cTe;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/mSe;->engine:Lc8/QUe;

    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lc8/mSe;->canceled:Z

    return v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-virtual {v0}, Lc8/VSe;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
