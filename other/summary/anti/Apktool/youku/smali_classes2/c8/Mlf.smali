.class public Lc8/Mlf;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private a(Lc8/fmf;Lc8/ymf;Ljava/io/RandomAccessFile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/downloader/util/LoaderException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 306
    :try_start_0
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 307
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 312
    const v0, 0x8000

    new-array v0, v0, [B

    .line 314
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lc8/Mlf;->c(Lc8/fmf;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v2, "saveData break"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_1
    invoke-static {v1}, Lc8/Pmf;->close(Ljava/io/Closeable;)V

    .line 334
    return-void

    .line 318
    :cond_2
    :try_start_1
    invoke-interface {p2, v0}, Lc8/ymf;->read([B)I

    move-result v2

    .line 319
    if-lez v2, :cond_1

    .line 322
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 325
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    iget-wide v4, v3, Lc8/smf;->d:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 326
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    iget-wide v4, v3, Lc8/smf;->e:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lc8/smf;->e:J

    .line 327
    iget-object v2, p1, Lc8/fmf;->listener:Lc8/vmf;

    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    iget-wide v4, v3, Lc8/smf;->e:J

    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    iget-wide v6, v3, Lc8/smf;->d:J

    invoke-interface {v2, v4, v5, v6, v7}, Lc8/vmf;->onProgress(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :try_start_2
    new-instance v2, Lcom/taobao/downloader/util/LoaderException;

    const/4 v3, -0x7

    invoke-direct {v2, v3, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lc8/Pmf;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private b(Lc8/fmf;)Lc8/xmf;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/downloader/util/LoaderException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    :try_start_0
    iget-object v0, p1, Lc8/fmf;->netConnection:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xmf;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-nez v0, :cond_15

    .line 183
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "use default HurlNetConnection"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lc8/lmf;

    invoke-direct {v0}, Lc8/lmf;-><init>()V

    move-object v2, v0

    .line 187
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "connection.type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lc8/Nmf;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    :try_start_1
    iget-object v0, p1, Lc8/fmf;->method:Lcom/taobao/downloader/api/Request$Method;

    if-nez v0, :cond_6

    const-string/jumbo v0, "GET"

    :goto_1
    iget-object v1, p1, Lc8/fmf;->url:Ljava/lang/String;

    iget-object v3, p1, Lc8/fmf;->retryPolicy:Lc8/Amf;

    .line 192
    invoke-interface {v3}, Lc8/Amf;->getConnectTimeout()I

    move-result v3

    iget-object v4, p1, Lc8/fmf;->retryPolicy:Lc8/Amf;

    invoke-interface {v4}, Lc8/Amf;->getReadTimeout()I

    move-result v4

    .line 191
    invoke-interface {v2, v0, v1, v3, v4}, Lc8/xmf;->openConnection(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    invoke-virtual {p1}, Lc8/fmf;->isSupportRange()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    const-wide/16 v0, 0x0

    .line 200
    iget-object v3, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 202
    iget-wide v4, p1, Lc8/fmf;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-wide v4, p1, Lc8/fmf;->size:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 203
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    const-wide/16 v0, 0x0

    .line 207
    :cond_1
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    iput-wide v0, v3, Lc8/smf;->e:J

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v3, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Range"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v1, v3, v4, v5}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_2
    const-string/jumbo v1, "Range"

    invoke-interface {v2, v1, v0}, Lc8/xmf;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    :goto_2
    iget-object v0, p1, Lc8/fmf;->headers:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p1, Lc8/fmf;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 224
    iget-object v1, p1, Lc8/fmf;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lc8/xmf;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_2
    const-string/jumbo v2, "LoaderEngine"

    const-string/jumbo v3, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-nez v1, :cond_14

    .line 183
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "use default HurlNetConnection"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lc8/lmf;

    invoke-direct {v0}, Lc8/lmf;-><init>()V

    move-object v2, v0

    goto/16 :goto_0

    .line 182
    :catchall_0
    move-exception v0

    if-nez v1, :cond_5

    .line 183
    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v2, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "use default HurlNetConnection"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v1, Lc8/lmf;

    invoke-direct {v1}, Lc8/lmf;-><init>()V

    :cond_5
    throw v0

    .line 191
    :cond_6
    :try_start_3
    iget-object v0, p1, Lc8/fmf;->method:Lcom/taobao/downloader/api/Request$Method;

    invoke-virtual {v0}, Lcom/taobao/downloader/api/Request$Method;->name()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    const/4 v2, -0x4

    invoke-direct {v1, v2, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_7
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "not support Range download"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 228
    :cond_8
    :try_start_4
    iget-object v0, p1, Lc8/fmf;->bodyContentType:Ljava/lang/String;

    iget-object v1, p1, Lc8/fmf;->body:[B

    invoke-interface {v2, v0, v1}, Lc8/xmf;->setBody(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 233
    :try_start_5
    invoke-interface {v2}, Lc8/xmf;->connect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 240
    :try_start_6
    invoke-interface {v2}, Lc8/xmf;->getResponseCode()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v0

    .line 244
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 245
    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v3, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "responseCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_9
    const/16 v1, 0xce

    if-eq v0, v1, :cond_b

    .line 248
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10

    .line 249
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 252
    :cond_a
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lc8/smf;->e:J

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/fmf;->setSupportRange(Z)V

    .line 254
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "not support Range download"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_b
    const-wide/16 v0, -0x1

    .line 265
    const-string/jumbo v3, "Content-Length"

    invoke-interface {v2, v3}, Lc8/xmf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 268
    :try_start_7
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-wide v0

    .line 272
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v4

    iput-wide v0, v4, Lc8/smf;->f:J

    .line 274
    const-string/jumbo v4, "Content-Range"

    invoke-interface {v2, v4}, Lc8/xmf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    const/4 v5, 0x1

    invoke-static {v5}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 276
    const-string/jumbo v5, "LoaderEngine"

    const-string/jumbo v6, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "isSupportRange"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Lc8/fmf;->isSupportRange()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "Content-Length"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v3, 0x4

    const-string/jumbo v9, "Content-Range"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    aput-object v4, v8, v3

    invoke-static {v5, v6, v7, v8}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_d
    const-string/jumbo v3, "gzip"

    const-string/jumbo v4, "Content-Encoding"

    invoke-interface {v2, v4}, Lc8/xmf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 281
    const-string/jumbo v3, "LoaderEngine"

    const-string/jumbo v4, "getConnection"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "final zip file as Content-Encoding=gzip"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_e
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_12

    .line 285
    const-string/jumbo v3, "Transfer-Encoding"

    invoke-interface {v2, v3}, Lc8/xmf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    const-string/jumbo v4, "Content-Encoding"

    invoke-interface {v2, v4}, Lc8/xmf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    const/4 v5, 0x1

    invoke-static {v5}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 288
    const-string/jumbo v5, "LoaderEngine"

    const-string/jumbo v6, "getConnection perhaps already auto handle gzip, no onProgress callback."

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "Transfer-Encoding"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v3, 0x2

    const-string/jumbo v9, "Content-Encoding"

    aput-object v9, v8, v3

    const/4 v3, 0x3

    aput-object v4, v8, v3

    invoke-static {v5, v6, v7, v8}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_f
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v3

    .line 295
    invoke-virtual {p1}, Lc8/fmf;->isSupportRange()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 296
    iget-wide v4, v3, Lc8/smf;->e:J

    add-long/2addr v0, v4

    iput-wide v0, v3, Lc8/smf;->d:J

    .line 300
    :goto_5
    return-object v2

    .line 229
    :catch_2
    move-exception v0

    .line 230
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    const/4 v2, -0x5

    invoke-direct {v1, v2, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 234
    :catch_3
    move-exception v0

    .line 235
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    const/4 v2, -0x6

    invoke-direct {v1, v2, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 241
    :catch_4
    move-exception v0

    .line 242
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 256
    :cond_10
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_11

    .line 257
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 258
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 261
    :cond_11
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connection responseCode error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 290
    :cond_12
    iget-object v3, p1, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-static {v3}, Lc8/Omf;->getFreeSpaceBytes(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_f

    .line 291
    new-instance v2, Lcom/taobao/downloader/util/LoaderException;

    const/16 v3, -0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connection Content-Length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 298
    :cond_13
    iput-wide v0, v3, Lc8/smf;->d:J

    goto :goto_5

    :catch_5
    move-exception v4

    goto/16 :goto_4

    :cond_14
    move-object v2, v1

    goto/16 :goto_0

    :cond_15
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private c(Lc8/fmf;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 339
    iget-object v0, p1, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    sget-object v1, Lcom/taobao/downloader/api/Request$Network;->WIFI:Lcom/taobao/downloader/api/Request$Network;

    if-ne v0, v1, :cond_0

    sget-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    sget-object v1, Lcom/taobao/downloader/api/Request$Network;->MOBILE:Lcom/taobao/downloader/api/Request$Network;

    if-ne v0, v1, :cond_0

    .line 340
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "checkReqStopOrCancel"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "as not permit in mobile network"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p1, v6}, Lc8/fmf;->setIsNetworkLimit(Z)V

    .line 342
    sget-object v0, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {p1, v0}, Lc8/fmf;->setStatus(Lcom/taobao/downloader/api/Request$Status;)V

    .line 344
    :cond_0
    invoke-virtual {p1}, Lc8/fmf;->checkIsPauseOrCancel()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lc8/fmf;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/downloader/util/LoaderException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    move v5, v0

    .line 45
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lc8/Mlf;->c(Lc8/fmf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "performRequest break"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    :goto_1
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lc8/fmf;->cachePath:Ljava/lang/String;

    iget-object v2, p1, Lc8/fmf;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 54
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    .line 57
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "performRequest break"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "reason"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v6, "cachePath is not directory"

    aput-object v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/taobao/downloader/util/LoaderException;

    const/16 v1, -0xd

    const-string/jumbo v2, "cachePath is not directory"

    invoke-direct {v0, v1, v2}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v1

    const/16 v2, -0xc

    if-eq v1, v2, :cond_3

    .line 159
    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v1

    const/16 v2, -0xd

    if-ne v1, v2, :cond_18

    .line 160
    :cond_3
    throw v0

    .line 61
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 62
    if-nez v2, :cond_5

    .line 63
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "performRequest break"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "reason"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v6, "cachePath mkdirs fail"

    aput-object v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/taobao/downloader/util/LoaderException;

    const/16 v1, -0xd

    const-string/jumbo v2, "cachePath mkdirs fail"

    invoke-direct {v0, v1, v2}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 67
    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc8/fmf;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/Qmf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Mlf;->a:Ljava/io/File;

    .line 68
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_6

    .line 70
    :try_start_2
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v1, 0x0

    .line 80
    const/4 v4, 0x2

    :try_start_3
    invoke-static {v4}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 81
    const-string/jumbo v4, "LoaderEngine"

    const-string/jumbo v6, "performRequest start"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "curRetryCount"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_7
    invoke-direct {p0, p1}, Lc8/Mlf;->b(Lc8/fmf;)Lc8/xmf;
    :try_end_3
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 85
    :try_start_4
    invoke-interface {v4}, Lc8/xmf;->getInputStream()Lc8/ymf;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    .line 90
    :try_start_5
    iget-object v2, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_5
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v2

    if-nez v2, :cond_8

    .line 92
    :try_start_6
    iget-object v2, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 98
    :cond_8
    :goto_3
    :try_start_7
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lc8/Mlf;->a:Ljava/io/File;

    const-string/jumbo v7, "rw"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 102
    :try_start_8
    invoke-direct {p0, p1, v3, v2}, Lc8/Mlf;->a(Lc8/fmf;Lc8/ymf;Ljava/io/RandomAccessFile;)V

    .line 103
    invoke-virtual {p1}, Lc8/fmf;->checkIsPauseOrCancel()Z
    :try_end_8
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v1

    if-eqz v1, :cond_c

    .line 149
    :try_start_9
    invoke-static {v2}, Lc8/Pmf;->close(Ljava/io/Closeable;)V

    .line 150
    if-eqz v3, :cond_9

    .line 151
    invoke-interface {v3}, Lc8/ymf;->close()V

    .line 153
    :cond_9
    if-eqz v4, :cond_0

    .line 154
    invoke-interface {v4}, Lc8/xmf;->disconnect()V

    goto/16 :goto_1

    .line 72
    :catch_1
    move-exception v1

    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v2, "performRequest"

    const-string/jumbo v3, "fail create tempFile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    .line 86
    :catch_2
    move-exception v0

    .line 87
    :try_start_a
    new-instance v3, Lcom/taobao/downloader/util/LoaderException;

    const/4 v6, -0x3

    invoke-direct {v3, v6, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 142
    :catch_3
    move-exception v0

    move-object v3, v4

    .line 143
    :goto_4
    :try_start_b
    const-string/jumbo v4, "LoaderEngine"

    const-string/jumbo v6, "performRequest fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v0, v8}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 144
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_5
    :try_start_c
    invoke-static {v2}, Lc8/Pmf;->close(Ljava/io/Closeable;)V

    .line 150
    if-eqz v3, :cond_a

    .line 151
    invoke-interface {v3}, Lc8/ymf;->close()V

    .line 153
    :cond_a
    if-eqz v4, :cond_b

    .line 154
    invoke-interface {v4}, Lc8/xmf;->disconnect()V

    :cond_b
    throw v0
    :try_end_c
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_c .. :try_end_c} :catch_0

    .line 94
    :catch_4
    move-exception v2

    :try_start_d
    const-string/jumbo v2, "LoaderEngine"

    const-string/jumbo v6, "performRequest"

    const-string/jumbo v7, "fail create tempFile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v6, v7, v8}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 142
    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    .line 99
    :catch_6
    move-exception v0

    .line 100
    new-instance v2, Lcom/taobao/downloader/util/LoaderException;

    const/16 v6, -0xa

    invoke-direct {v2, v6, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 145
    :catch_7
    move-exception v0

    move-object v2, v1

    .line 146
    :goto_6
    :try_start_e
    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v6, "performRequest fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v7, v0, v8}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 147
    new-instance v1, Lcom/taobao/downloader/util/LoaderException;

    const/4 v6, -0x1

    invoke-direct {v1, v6, v0}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 149
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 107
    :cond_c
    :try_start_f
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-static {v1}, Lc8/Qmf;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v6, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 109
    iget-object v8, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_f

    .line 110
    :cond_d
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v1, "performRequest fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "reason"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "download file is empty."

    aput-object v9, v7, v8

    invoke-static {v0, v1, v6, v7}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    :cond_e
    new-instance v0, Lcom/taobao/downloader/util/LoaderException;

    const/4 v1, -0x8

    const-string/jumbo v6, "download file is empty"

    invoke-direct {v0, v1, v6}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 142
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    .line 116
    :cond_f
    iget-wide v8, p1, Lc8/fmf;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    iget-wide v8, p1, Lc8/fmf;->size:J

    cmp-long v8, v6, v8

    if-nez v8, :cond_16

    :cond_10
    iget-object v8, p1, Lc8/fmf;->md5:Ljava/lang/String;

    .line 117
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p1, Lc8/fmf;->md5:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 118
    :cond_11
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v8

    .line 119
    iput-wide v6, v8, Lc8/smf;->e:J

    .line 120
    iput-wide v6, v8, Lc8/smf;->d:J

    .line 121
    iput-object v1, v8, Lc8/smf;->c:Ljava/lang/String;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, v8, Lc8/smf;->g:Z

    .line 123
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 124
    const-string/jumbo v1, "LoaderEngine"

    const-string/jumbo v6, "performRequest success"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "response"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v1, v6, v7, v9}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_12
    iget-object v1, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_f
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v0

    .line 127
    if-eqz v0, :cond_14

    .line 149
    :try_start_10
    invoke-static {v2}, Lc8/Pmf;->close(Ljava/io/Closeable;)V

    .line 150
    if-eqz v3, :cond_13

    .line 151
    invoke-interface {v3}, Lc8/ymf;->close()V

    .line 153
    :cond_13
    if-eqz v4, :cond_0

    .line 154
    invoke-interface {v4}, Lc8/xmf;->disconnect()V
    :try_end_10
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_1

    .line 130
    :cond_14
    :try_start_11
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    :cond_15
    new-instance v0, Lcom/taobao/downloader/util/LoaderException;

    const/16 v1, -0x9

    const-string/jumbo v6, "temp file rename to target file"

    invoke-direct {v0, v1, v6}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 145
    :catch_9
    move-exception v0

    goto/16 :goto_6

    .line 136
    :cond_16
    const-string/jumbo v0, "LoaderEngine"

    const-string/jumbo v8, "performRequest fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "reason"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "md5/size not match."

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "req.md5"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lc8/fmf;->md5:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "res.md5"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v1, v10, v11

    const/4 v1, 0x6

    const-string/jumbo v11, "req.size"

    aput-object v11, v10, v1

    const/4 v1, 0x7

    iget-wide v12, p1, Lc8/fmf;->size:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    const/16 v1, 0x8

    const-string/jumbo v11, "res.size"

    aput-object v11, v10, v1

    const/16 v1, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v1

    invoke-static {v0, v8, v9, v10}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 138
    iget-object v0, p0, Lc8/Mlf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 140
    :cond_17
    new-instance v0, Lcom/taobao/downloader/util/LoaderException;

    const/16 v1, -0xb

    const-string/jumbo v6, "download file size or md5 not match"

    invoke-direct {v0, v1, v6}, Lcom/taobao/downloader/util/LoaderException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_11
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 162
    :cond_18
    add-int/lit8 v1, v5, 0x1

    iget-object v2, p1, Lc8/fmf;->retryPolicy:Lc8/Amf;

    invoke-interface {v2}, Lc8/Amf;->getRetryCount()I

    move-result v2

    if-lt v5, v2, :cond_19

    .line 163
    throw v0

    .line 165
    :cond_19
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/smf;->a()V

    .line 167
    const-wide/16 v2, 0x1f4

    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_a

    move v5, v1

    .line 169
    goto/16 :goto_0

    .line 171
    :catch_a
    move-exception v0

    move v5, v1

    goto/16 :goto_0

    .line 149
    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 145
    :catch_b
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_6

    .line 142
    :catch_d
    move-exception v0

    goto/16 :goto_4
.end method
