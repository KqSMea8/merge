.class public Lc8/pL;
.super Ljava/lang/Object;
.source "DispatchCore.java"


# static fields
.field static hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field static random:Ljava/util/Random;

.field static seq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/pL;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lc8/oL;

    invoke-direct {v0}, Lc8/oL;-><init>()V

    sput-object v0, Lc8/pL;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lc8/pL;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;
    .locals 4
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p4, "retry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v1, "url":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    const-string/jumbo v2, "https"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lc8/pL;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string/jumbo p0, "http"

    .line 140
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p1, :cond_3

    .line 143
    if-nez p2, :cond_1

    .line 144
    const-string/jumbo v2, "https"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p2, 0x1bb

    .line 146
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    const-string/jumbo v2, "/amdc/mobileDispatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 153
    .local v0, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appkey"

    const-string/jumbo v3, "appkey"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v2, "v"

    const-string/jumbo v3, "v"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v2, "deviceId"

    const-string/jumbo v3, "deviceId"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "platform"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lc8/zL;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 144
    .end local v0    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/16 p2, 0x50

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static commitFlow(Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "upstream"    # J
    .param p3, "donwstream"    # J

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Lc8/GJ;

    invoke-direct {v1}, Lc8/GJ;-><init>()V

    .line 326
    .local v1, "flow":Lc8/GJ;
    const-string/jumbo v2, "amdc"

    iput-object v2, v1, Lc8/GJ;->refer:Ljava/lang/String;

    .line 327
    const-string/jumbo v2, "http"

    iput-object v2, v1, Lc8/GJ;->protocoltype:Ljava/lang/String;

    .line 328
    iput-object p0, v1, Lc8/GJ;->req_identifier:Ljava/lang/String;

    .line 329
    iput-wide p1, v1, Lc8/GJ;->upstream:J

    .line 330
    iput-wide p3, v1, Lc8/GJ;->downstream:J

    .line 331
    invoke-static {}, Lc8/JJ;->getInstance()Lc8/HJ;

    move-result-object v2

    invoke-interface {v2, v1}, Lc8/HJ;->commitFlow(Lc8/GJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "flow":Lc8/GJ;
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.DispatchCore"

    const-string/jumbo v3, "commit flow info failed!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "retryTimes"    # I
    .param p4, "ret"    # I

    .prologue
    .line 306
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    :cond_0
    invoke-static {}, Lc8/TI;->isTargetProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    :try_start_0
    new-instance v0, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {v0}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 309
    .local v0, "as":Lanet/channel/statist/AmdcStatistic;
    iput-object p0, v0, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 310
    iput-object p1, v0, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    .line 311
    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 313
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 315
    :cond_1
    iput p3, v0, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 316
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "as":Lanet/channel/statist/AmdcStatistic;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static prepareConnStrategy(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    .local v1, "connStrategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-static {}, Lc8/FK;->isProxy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v3

    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/MK;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 74
    .local v2, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IConnStrategy;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 76
    .local v0, "connStrategy":Lanet/channel/strategy/IConnStrategy;
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v3

    iget-object v3, v3, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 82
    .end local v0    # "connStrategy":Lanet/channel/strategy/IConnStrategy;
    .end local v2    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IConnStrategy;>;"
    :cond_1
    return-object v1
.end method

.method static readAnswer(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "gzip"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x400

    .line 283
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 286
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_4

    .line 287
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    new-instance v4, Landroid/util/Base64InputStream;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v1, v7, [B

    .line 292
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "c":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 293
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 296
    .end local v1    # "buffer":[B
    .end local v2    # "c":I
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "awcn.DispatchCore"

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v3, v10}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 301
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    return-object v6

    .line 295
    .restart local v1    # "buffer":[B
    .restart local v2    # "c":I
    :cond_1
    :try_start_5
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string/jumbo v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_4
    move-object v6, v7

    goto :goto_3

    .end local v1    # "buffer":[B
    .end local v2    # "c":I
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_6
    throw v6

    .restart local v1    # "buffer":[B
    .restart local v2    # "c":I
    :catch_1
    move-exception v6

    goto :goto_4

    .line 300
    .end local v1    # "buffer":[B
    .end local v2    # "c":I
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_6

    .line 299
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 296
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    :cond_4
    move-object v5, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static sendOneNetworkRequest(Ljava/lang/String;Ljava/util/Map;I)I
    .locals 31
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/util/Map;
    .param p2, "retry"    # I

    .prologue
    .line 165
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "AMDC"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lc8/pL;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 166
    .local v23, "seqNo":Ljava/lang/String;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "send amdc request"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "url"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v26, "Env"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lanet/channel/entity/ENV;

    .line 168
    .local v13, "env":Lanet/channel/entity/ENV;
    const/16 v24, 0x0

    .line 169
    .local v24, "url":Ljava/net/URL;
    const/4 v11, 0x0

    .line 171
    .local v11, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v24    # "url":Ljava/net/URL;
    .local v25, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v11, v0

    .line 173
    const/16 v26, 0x4e20

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 174
    const/16 v26, 0x4e20

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 175
    const-string/jumbo v26, "POST"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 177
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 178
    const-string/jumbo v26, "Connection"

    const-string/jumbo v27, "close"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v26, "Accept-Encoding"

    const-string/jumbo v27, "gzip"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 181
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "https"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 182
    move-object v0, v11

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    sget-object v27, Lc8/pL;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 186
    :cond_0
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 187
    .local v19, "os":Ljava/io/OutputStream;
    const-string/jumbo v26, "utf-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lc8/zL;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 188
    .local v8, "body":[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 191
    .local v20, "responseCode":I
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    .line 193
    .local v16, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lc8/KL;->isPrintLog(I)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 194
    const-string/jumbo v26, "awcn.DispatchCore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "amdc response. code: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "\nheaders"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v16, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_1
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 199
    const/16 v26, 0x12e

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x133

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v21, 0x2

    .line 200
    .local v21, "ret":I
    :goto_0
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "response code not 200"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    if-eqz v11, :cond_3

    .line 274
    :try_start_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object/from16 v24, v25

    .line 278
    .end local v8    # "body":[B
    .end local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19    # "os":Ljava/io/OutputStream;
    .end local v20    # "responseCode":I
    .end local v21    # "ret":I
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_4
    :goto_2
    return v21

    .line 199
    .end local v24    # "url":Ljava/net/URL;
    .restart local v8    # "body":[B
    .restart local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "os":Ljava/io/OutputStream;
    .restart local v20    # "responseCode":I
    .restart local v25    # "url":Ljava/net/URL;
    :cond_5
    const/16 v21, 0x1

    goto :goto_0

    .line 276
    .restart local v21    # "ret":I
    :catch_0
    move-exception v12

    .line 277
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v21    # "ret":I
    :cond_6
    :try_start_3
    const-string/jumbo v26, "x-am-code"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lc8/zL;->getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "code":Ljava/lang/String;
    const-string/jumbo v26, "1000"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 207
    const-string/jumbo v26, "1007"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string/jumbo v26, "1008"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_7
    const/16 v21, 0x2

    .line 208
    .restart local v21    # "ret":I
    :goto_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "return code: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-static {v10, v0, v1, v2, v3}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    if-eqz v11, :cond_8

    .line 274
    :try_start_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    :goto_4
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto :goto_2

    .line 207
    .end local v21    # "ret":I
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :cond_9
    const/16 v21, 0x1

    goto :goto_3

    .line 276
    .restart local v21    # "ret":I
    :catch_1
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 213
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v21    # "ret":I
    :cond_a
    :try_start_5
    const-string/jumbo v26, "x-am-sign"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lc8/zL;->getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 214
    .local v22, "retSign":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 215
    const-string/jumbo v26, "-1001"

    const-string/jumbo v27, "response sign is empty"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    const/16 v21, 0x1

    .line 273
    if-eqz v11, :cond_b

    .line 274
    :try_start_6
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_b
    :goto_5
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 276
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_2
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 219
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_7
    new-instance v7, Lc8/yL;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Lc8/yL;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v7, "bis":Lc8/yL;
    const-string/jumbo v26, "gzip"

    const-string/jumbo v27, "Content-Encoding"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lc8/zL;->getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    invoke-static {v7, v0}, Lc8/pL;->readAnswer(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "answer":Ljava/lang/String;
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lc8/KL;->isPrintLog(I)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 223
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "amdc response body"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "\nbody"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v6, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_d
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-virtual {v7}, Lc8/yL;->getReadByteCount()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitFlow(Ljava/lang/String;JJ)V

    .line 228
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 229
    const-string/jumbo v26, "-1002"

    const-string/jumbo v27, "read answer error"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 230
    const/16 v21, 0x1

    .line 273
    if-eqz v11, :cond_e

    .line 274
    :try_start_8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_e
    :goto_6
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 276
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_3
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 234
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v9, 0x0

    .line 235
    .local v9, "checkSign":Ljava/lang/String;
    :try_start_9
    invoke-static {}, Lc8/kL;->getSign()Lc8/vL;

    move-result-object v17

    .line 236
    .local v17, "iAmdcSign":Lc8/vL;
    if-eqz v17, :cond_10

    .line 237
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lc8/vL;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 239
    :cond_10
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 240
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "check ret sign failed"

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "retSign"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v22, v28, v29

    const/16 v29, 0x2

    const-string/jumbo v30, "checkSign"

    aput-object v30, v28, v29

    const/16 v29, 0x3

    aput-object v9, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const-string/jumbo v26, "-1003"

    const-string/jumbo v27, "check sign failed"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 242
    const/16 v21, 0x1

    .line 273
    if-eqz v11, :cond_11

    .line 274
    :try_start_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_11
    :goto_7
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 276
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_4
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 246
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_b
    new-instance v26, Lorg/json/JSONTokener;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONObject;

    .line 249
    .local v18, "jsonResponse":Lorg/json/JSONObject;
    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v26

    move-object/from16 v0, v26

    if-eq v0, v13, :cond_14

    .line 250
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "env change, do not notify result"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 251
    const/16 v21, 0x0

    .line 273
    if-eqz v11, :cond_13

    .line 274
    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_13
    :goto_8
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 276
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_5
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 253
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_14
    :try_start_d
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v26

    new-instance v27, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {v26 .. v27}, Lc8/uL;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 261
    :try_start_e
    const-string/jumbo v26, "request success"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v10, v0, v1, v2, v3}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 262
    const/16 v21, 0x0

    .line 273
    if-eqz v11, :cond_15

    .line 274
    :try_start_f
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    :cond_15
    :goto_9
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 255
    .end local v18    # "jsonResponse":Lorg/json/JSONObject;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_6
    move-exception v26

    :try_start_10
    invoke-static {}, Lc8/uL;->getInstance()Lc8/uL;

    move-result-object v26

    new-instance v27, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v27 .. v29}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {v26 .. v27}, Lc8/uL;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V

    .line 256
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "resolve amdc anser failed"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const-string/jumbo v26, "-1004"

    const-string/jumbo v27, "resolve answer failed"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, p2

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 258
    const/16 v21, 0x1

    .line 273
    if-eqz v11, :cond_16

    .line 274
    :try_start_11
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :cond_16
    :goto_a
    move-object/from16 v24, v25

    .line 278
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 276
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_7
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_a

    .line 276
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "jsonResponse":Lorg/json/JSONObject;
    :catch_8
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 263
    .end local v6    # "answer":Ljava/lang/String;
    .end local v7    # "bis":Lc8/yL;
    .end local v8    # "body":[B
    .end local v9    # "checkSign":Ljava/lang/String;
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "iAmdcSign":Lc8/vL;
    .end local v18    # "jsonResponse":Lorg/json/JSONObject;
    .end local v19    # "os":Ljava/io/OutputStream;
    .end local v20    # "responseCode":I
    .end local v22    # "retSign":Ljava/lang/String;
    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :catch_9
    move-exception v15

    .line 264
    .local v15, "ex":Ljava/lang/Throwable;
    :goto_b
    :try_start_12
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, "errorMsg":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 266
    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 268
    :cond_17
    const-string/jumbo v26, "-1000"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v14, v1, v2, v3}, Lc8/pL;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V

    .line 269
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "amdc request fail"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v15, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 270
    const/16 v21, 0x1

    .line 273
    if-eqz v11, :cond_4

    .line 274
    :try_start_13
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_2

    .line 276
    :catch_a
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "awcn.DispatchCore"

    const-string/jumbo v27, "http disconnect failed"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 272
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "errorMsg":Ljava/lang/String;
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v26

    .line 273
    :goto_c
    if-eqz v11, :cond_18

    .line 274
    :try_start_14
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 278
    :cond_18
    :goto_d
    throw v26

    .line 276
    :catch_b
    move-exception v12

    .line 277
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v27, "awcn.DispatchCore"

    const-string/jumbo v28, "http disconnect failed"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v12, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_d

    .line 272
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v26

    move-object/from16 v24, v25

    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto :goto_c

    .line 263
    .end local v24    # "url":Ljava/net/URL;
    .restart local v25    # "url":Ljava/net/URL;
    :catch_c
    move-exception v15

    move-object/from16 v24, v25

    .end local v25    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto/16 :goto_b
.end method

.method public static sendRequest(Ljava/util/Map;)V
    .locals 15
    .param p0, "params"    # Ljava/util/Map;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 87
    const-string/jumbo v9, "awcn.DispatchCore"

    const-string/jumbo v11, "amdc request\'s parameter invalid!"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v13, v10}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v9

    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "http"

    invoke-interface {v9, v11, v12}, Lc8/MK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "scheme":Ljava/lang/String;
    invoke-static {v6}, Lc8/pL;->prepareConnStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "connStrategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    const/4 v5, 0x0

    .local v5, "retry":I
    :goto_0
    const/4 v9, 0x3

    if-ge v5, v9, :cond_0

    .line 95
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 98
    .local v4, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .line 99
    .local v1, "connStrategy":Lanet/channel/strategy/IConnStrategy;
    if-eq v5, v14, :cond_5

    .line 100
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 101
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "connStrategy":Lanet/channel/strategy/IConnStrategy;
    check-cast v1, Lanet/channel/strategy/IConnStrategy;

    .line 104
    .restart local v1    # "connStrategy":Lanet/channel/strategy/IConnStrategy;
    :cond_2
    if-eqz v1, :cond_4

    .line 105
    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v11

    invoke-static {v6, v9, v11, v4, v5}, Lc8/pL;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "urlString":Ljava/lang/String;
    :goto_1
    invoke-static {v8, v4, v5}, Lc8/pL;->sendOneNetworkRequest(Ljava/lang/String;Ljava/util/Map;I)I

    move-result v7

    .line 120
    .local v7, "status":I
    if-eqz v1, :cond_3

    .line 121
    new-instance v0, Lc8/JK;

    invoke-direct {v0}, Lc8/JK;-><init>()V

    .line 122
    .local v0, "connEvent":Lc8/JK;
    if-nez v7, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v0, Lc8/JK;->isSuccess:Z

    .line 123
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v9

    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, v1, v0}, Lc8/MK;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    .line 126
    .end local v0    # "connEvent":Lc8/JK;
    :cond_3
    if-eqz v7, :cond_0

    if-eq v7, v14, :cond_0

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v7    # "status":I
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_4
    invoke-static {v6, v13, v10, v4, v5}, Lc8/pL;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "urlString":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lc8/nL;->getAmdcServerFixIp()[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "ips":[Ljava/lang/String;
    if-eqz v3, :cond_6

    array-length v9, v3

    if-lez v9, :cond_6

    .line 112
    sget-object v9, Lc8/pL;->random:Ljava/util/Random;

    array-length v11, v3

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget-object v9, v3, v9

    invoke-static {v6, v9, v10, v4, v5}, Lc8/pL;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "urlString":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_6
    invoke-static {v6, v13, v10, v4, v5}, Lc8/pL;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "urlString":Ljava/lang/String;
    goto :goto_1

    .end local v3    # "ips":[Ljava/lang/String;
    .restart local v0    # "connEvent":Lc8/JK;
    .restart local v7    # "status":I
    :cond_7
    move v9, v10

    .line 122
    goto :goto_2
.end method
