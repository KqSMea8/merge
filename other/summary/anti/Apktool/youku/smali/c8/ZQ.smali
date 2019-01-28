.class public Lc8/ZQ;
.super Ljava/lang/Object;
.source "ConnectUtil.java"


# static fields
.field private static instance:Lc8/ZQ;


# instance fields
.field private userAgentStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lc8/ZQ;->instance:Lc8/ZQ;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZQ;->userAgentStr:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;ZZZ)Ljava/lang/String;
    .locals 10
    .param p1, "httpclient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "addUserInfo"    # Z
    .param p4, "usingZip"    # Z
    .param p5, "status"    # Z

    .prologue
    .line 284
    const/4 v3, 0x0

    .line 286
    .local v3, "instream":Ljava/io/InputStream;
    if-eqz p4, :cond_0

    .line 287
    :try_start_0
    const-string/jumbo v8, "Accept-Encoding"

    const-string/jumbo v9, "gzip"

    invoke-interface {p2, v8, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 290
    .local v5, "response":Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_3

    .line 333
    if-eqz v3, :cond_1

    .line 334
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 342
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-object v6

    .line 337
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 295
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 296
    .local v7, "statusCode":Ljava/lang/String;
    if-eqz p5, :cond_5

    .line 333
    if-eqz v3, :cond_4

    .line 334
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move-object v6, v7

    .line 298
    goto :goto_1

    .line 337
    :catch_1
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string/jumbo v8, "Content-Encoding"

    invoke-interface {v5, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 302
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_7

    .line 303
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 304
    if-eqz v0, :cond_6

    .line 305
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 306
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v4, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 308
    move-object v3, v4

    .line 310
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_6
    invoke-virtual {p0, v3}, Lc8/ZQ;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 333
    .local v6, "result":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_2

    .line 334
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 337
    :catch_2
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto :goto_1

    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    move-object v6, v7

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_3

    .line 316
    .end local v0    # "contentEncoding":Lorg/apache/http/Header;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "statusCode":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 317
    .local v1, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_6
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 318
    const/4 v6, 0x0

    .line 333
    .restart local v6    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 334
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 337
    :catch_4
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto :goto_1

    .line 319
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 320
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_8
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 321
    const/4 v6, 0x0

    .line 333
    .restart local v6    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 334
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 337
    :catch_6
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 323
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_a
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 324
    const/4 v6, 0x0

    .line 333
    .restart local v6    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 334
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_1

    .line 337
    :catch_8
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 325
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :catch_9
    move-exception v1

    .line 326
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_c
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 327
    const/4 v6, 0x0

    .line 333
    .restart local v6    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 334
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_1

    .line 337
    :catch_a
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 328
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :catch_b
    move-exception v1

    .line 329
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 330
    const/4 v6, 0x0

    .line 333
    .restart local v6    # "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 334
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_1

    .line 337
    :catch_c
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 331
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 333
    if-eqz v3, :cond_8

    .line 334
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 341
    :cond_8
    :goto_4
    throw v8

    .line 337
    :catch_d
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static getInstance()Lc8/ZQ;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lc8/ZQ;->instance:Lc8/ZQ;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lc8/ZQ;

    invoke-direct {v0}, Lc8/ZQ;-><init>()V

    sput-object v0, Lc8/ZQ;->instance:Lc8/ZQ;

    .line 62
    :cond_0
    sget-object v0, Lc8/ZQ;->instance:Lc8/ZQ;

    return-object v0
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 190
    const/16 v5, 0x2000

    .line 189
    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 191
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 202
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 196
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    .end local v1    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 202
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    :goto_2
    throw v4

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0, v0, v0}, Lc8/ZQ;->get(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "addUserInfo"    # Z
    .param p3, "usingGZip"    # Z
    .param p4, "status"    # Z

    .prologue
    .line 132
    const-string/jumbo v7, ""

    .line 134
    .local v7, "s":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0}, Lc8/ZQ;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/ZQ;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;ZZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 139
    .end local v2    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v7

    .line 136
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    .line 212
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 215
    .local v2, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v4, Lc8/EQ;->OFFLINECACHE_TIMEOUT:I

    int-to-long v4, v4

    .line 214
    invoke-static {v2, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 217
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v5, Lc8/EQ;->DEFAULT_MAX_CONNECTIONS:I

    invoke-direct {v4, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 216
    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 219
    sget v4, Lc8/EQ;->DEFAULT_MAX_CONNECTIONS:I

    .line 218
    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 222
    sget v4, Lc8/EQ;->OFFLINECACHE_TIMEOUT:I

    mul-int/lit16 v4, v4, 0x3e8

    .line 221
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 224
    sget v4, Lc8/EQ;->OFFLINECACHE_TIMEOUT:I

    mul-int/lit16 v4, v4, 0x3e8

    .line 223
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 225
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 227
    sget v4, Lc8/EQ;->DEFAULT_SOCKET_BUFFER_SIZE:I

    .line 226
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 229
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 231
    iget-object v4, p0, Lc8/ZQ;->userAgentStr:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 232
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 234
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 235
    .local v3, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "http"

    .line 236
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 235
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 237
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "https"

    .line 238
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 237
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 239
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 241
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    const-string/jumbo v4, "http.protocol.handle-redirects"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 242
    const-string/jumbo v4, "http.protocol.content-charset"

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 245
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v1
.end method
