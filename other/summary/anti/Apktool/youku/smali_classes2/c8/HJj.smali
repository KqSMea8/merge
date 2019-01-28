.class public Lc8/HJj;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/jM;
.implements Lc8/lM;


# instance fields
.field private callback:Lc8/OIj;

.field private contentLength:I

.field private finishEvent:Lc8/nM;

.field private handler:Landroid/os/Handler;

.field private isInputStreamGet:Z

.field private isNeedCallFinish:Z

.field private ykResponse:Lc8/eJj;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lc8/OIj;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lc8/OIj;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v0

    iput-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    .line 32
    iput-boolean v1, p0, Lc8/HJj;->isInputStreamGet:Z

    .line 36
    iput-boolean v1, p0, Lc8/HJj;->isNeedCallFinish:Z

    .line 38
    iput v1, p0, Lc8/HJj;->contentLength:I

    .line 47
    iput-object p2, p0, Lc8/HJj;->callback:Lc8/OIj;

    .line 48
    iput-object p1, p0, Lc8/HJj;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Lc8/OIj;)V
    .locals 1
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lc8/HJj;-><init>(Landroid/os/Handler;Lc8/OIj;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lc8/HJj;ILjava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/HJj;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lc8/HJj;->onResponseCodeRun(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lc8/HJj;Lc8/PM;)V
    .locals 0
    .param p0, "x0"    # Lc8/HJj;
    .param p1, "x1"    # Lc8/PM;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/HJj;->onInputStreamRun(Lc8/PM;)V

    return-void
.end method

.method static synthetic access$200(Lc8/HJj;Lc8/nM;)V
    .locals 0
    .param p0, "x0"    # Lc8/HJj;
    .param p1, "x1"    # Lc8/nM;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/HJj;->onFinishedRun(Lc8/nM;)V

    return-void
.end method

.method static synthetic access$300(Lc8/HJj;)Lc8/eJj;
    .locals 1
    .param p0, "x0"    # Lc8/HJj;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    return-object v0
.end method

.method static synthetic access$400(Lc8/HJj;)Lc8/OIj;
    .locals 1
    .param p0, "x0"    # Lc8/HJj;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/HJj;->callback:Lc8/OIj;

    return-object v0
.end method

.method private getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lc8/tSh;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 175
    :goto_0
    return-object v1

    .line 170
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    move-object v1, v2

    .line 175
    goto :goto_0
.end method

.method private getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/HJj;->getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    iget-object v1, p0, Lc8/HJj;->finishEvent:Lc8/nM;

    invoke-interface {v1}, Lc8/nM;->getHttpCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setResponseCode(I)V

    .line 190
    iget-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    iget-object v1, p0, Lc8/HJj;->finishEvent:Lc8/nM;

    invoke-interface {v1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setDesc(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    iget-object v1, p0, Lc8/HJj;->finishEvent:Lc8/nM;

    invoke-interface {v1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eJj;->setStatisticData(Lanetwork/channel/statist/StatisticData;)V

    .line 192
    iget-object v0, p0, Lc8/HJj;->callback:Lc8/OIj;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lc8/HJj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lc8/HJj;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/GJj;

    invoke-direct {v1, p0}, Lc8/GJj;-><init>(Lc8/HJj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lc8/HJj;->callback:Lc8/OIj;

    iget-object v1, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    invoke-interface {v0, v1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    goto :goto_0
.end method

.method private onFinishedRun(Lc8/nM;)V
    .locals 1
    .param p1, "event"    # Lc8/nM;

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iput-object p1, p0, Lc8/HJj;->finishEvent:Lc8/nM;

    .line 182
    iget-boolean v0, p0, Lc8/HJj;->isInputStreamGet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/HJj;->isNeedCallFinish:Z

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    invoke-direct {p0}, Lc8/HJj;->onFinish()V

    .line 185
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onInputStreamRun(Lc8/PM;)V
    .locals 3
    .param p1, "inputStream"    # Lc8/PM;

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lc8/HJj;->isInputStreamGet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    iget-object v1, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    invoke-direct {p0, p1}, Lc8/HJj;->parseInputStream(Lc8/PM;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/eJj;->setBytedata([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    :try_start_2
    iget-object v1, p0, Lc8/HJj;->finishEvent:Lc8/nM;

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Lc8/HJj;->onFinish()V

    .line 96
    :goto_1
    monitor-exit p0

    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    const/16 v2, -0xbba

    invoke-virtual {v1, v2}, Lc8/eJj;->setYkErrorCode(I)V

    .line 89
    iget-object v1, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    invoke-virtual {v1, v0}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 94
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lc8/HJj;->isNeedCallFinish:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private onResponseCodeRun(ILjava/util/Map;)V
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 138
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lc8/HJj;->ykResponse:Lc8/eJj;

    invoke-virtual {v0, p2}, Lc8/eJj;->setConnHeadFields(Ljava/util/Map;)V

    .line 140
    invoke-direct {p0, p2}, Lc8/HJj;->parseResLength(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lc8/HJj;->contentLength:I

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseInputStream(Lc8/PM;)[B
    .locals 13
    .param p1, "inputStream"    # Lc8/PM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1}, Lc8/PM;->length()I

    move-result v5

    .line 103
    .local v5, "length":I
    if-gtz v5, :cond_0

    .line 104
    iget v5, p0, Lc8/HJj;->contentLength:I

    .line 106
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    :try_start_1
    new-array v2, v6, [B

    .line 109
    .local v2, "buff":[B
    :goto_0
    invoke-interface {p1, v2}, Lc8/PM;->read([B)I

    move-result v3

    .local v3, "cnt":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v2    # "buff":[B
    .end local v3    # "cnt":I
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "length":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz p1, :cond_1

    .line 115
    :try_start_2
    invoke-interface {p1}, Lc8/PM;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 123
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    :cond_2
    :goto_3
    throw v6

    .line 113
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buff":[B
    .restart local v3    # "cnt":I
    .restart local v5    # "length":I
    :cond_3
    if-eqz p1, :cond_4

    .line 115
    :try_start_4
    invoke-interface {p1}, Lc8/PM;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 123
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 130
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 133
    :goto_6
    return-object v6

    .line 116
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string/jumbo v6, "HttpCommunication.YKNetwork"

    new-array v7, v12, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ParcelableInputStream close error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 124
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 125
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string/jumbo v6, "HttpCommunication.YKNetwork"

    new-array v7, v12, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ByteArrayOutputStream close error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 116
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buff":[B
    .end local v3    # "cnt":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "length":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    .line 117
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string/jumbo v7, "HttpCommunication.YKNetwork"

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ParcelableInputStream close error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 124
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 125
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string/jumbo v7, "HttpCommunication.YKNetwork"

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ByteArrayOutputStream close error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 133
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buff":[B
    .restart local v3    # "cnt":I
    .restart local v5    # "length":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 113
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buff":[B
    .end local v3    # "cnt":I
    .end local v5    # "length":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    goto/16 :goto_1
.end method

.method private parseResLength(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v2, "content-length"

    invoke-direct {p0, p1, v2}, Lc8/HJj;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "contentLength":Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "resLength":I
    invoke-static {v0}, Lc8/tSh;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 154
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-static {}, Lc8/hJj;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lc8/FJj;

    invoke-direct {v1, p0, p1}, Lc8/FJj;-><init>(Lc8/HJj;Lc8/nM;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 80
    return-void
.end method

.method public onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
    .locals 2
    .param p1, "inputStream"    # Lc8/PM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-static {}, Lc8/hJj;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lc8/EJj;

    invoke-direct {v1, p0, p1}, Lc8/EJj;-><init>(Lc8/HJj;Lc8/PM;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 70
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lc8/hJj;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lc8/DJj;

    invoke-direct {v1, p0, p1, p2}, Lc8/DJj;-><init>(Lc8/HJj;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 59
    const/4 v0, 0x0

    return v0
.end method
