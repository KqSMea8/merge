.class public final Lc8/sUe;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lc8/ETe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lc8/YVp;

.field private final headerBlockOut:Lc8/ZVp;

.field private final sink:Lc8/ZVp;


# direct methods
.method constructor <init>(Lc8/ZVp;Z)V
    .locals 3
    .param p1, "sink"    # Lc8/ZVp;
    .param p2, "client"    # Z

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lc8/sUe;->sink:Lc8/ZVp;

    .line 296
    iput-boolean p2, p0, Lc8/sUe;->client:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lc8/tUe;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lc8/YVp;

    invoke-direct {v1}, Lc8/YVp;-><init>()V

    iput-object v1, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    .line 301
    new-instance v1, Lc8/bWp;

    iget-object v2, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-direct {v1, v2, v0}, Lc8/bWp;-><init>(Lc8/tWp;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v1

    iput-object v1, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    .line 302
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ZTe;

    iget-object v1, v4, Lc8/ZTe;->name:Lokio/ByteString;

    .line 412
    .local v1, "name":Lokio/ByteString;
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 413
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-interface {v4, v1}, Lc8/ZVp;->write(Lokio/ByteString;)Lc8/ZVp;

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ZTe;

    iget-object v3, v4, Lc8/ZTe;->value:Lokio/ByteString;

    .line 415
    .local v3, "value":Lokio/ByteString;
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 416
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-interface {v4, v3}, Lc8/ZVp;->write(Lokio/ByteString;)Lc8/ZVp;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "value":Lokio/ByteString;
    :cond_0
    iget-object v4, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V

    .line 419
    return-void
.end method


# virtual methods
.method public ackSettings(Lc8/qUe;)V
    .locals 0
    .param p1, "peerSettings"    # Lc8/qUe;

    .prologue
    .line 306
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/sUe;->closed:Z

    .line 488
    iget-object v0, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget-object v1, p0, Lc8/sUe;->headerBlockOut:Lc8/ZVp;

    invoke-static {v0, v1}, Lc8/ATe;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    .prologue
    .line 316
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILc8/YVp;I)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lc8/YVp;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 392
    .local v0, "flags":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lc8/sUe;->sendDataFrame(IILc8/YVp;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/sUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
    .locals 5
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/sUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 456
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 457
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_1
    const/4 v2, 0x7

    .line 460
    .local v2, "type":I
    const/4 v0, 0x0

    .line 461
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 462
    .local v1, "length":I
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, -0x7ffcfff9

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 463
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 464
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3, p1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 465
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 466
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 8
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/sUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 360
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lc8/sUe;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "flags":I
    const/16 v2, 0x8

    .line 363
    .local v2, "type":I
    iget-object v3, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-virtual {v3}, Lc8/YVp;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 365
    .local v1, "length":I
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, -0x7ffcfff8

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 366
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 367
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 368
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget-object v4, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-interface {v3, v4}, Lc8/ZVp;->writeAll(Lc8/uWp;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void
.end method

.method public maxDataLength()I
    .locals 1

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 441
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lc8/sUe;->closed:Z

    if-eqz v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 442
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Lc8/sUe;->client:Z

    and-int/lit8 v5, p2, 0x1

    if-ne v5, v2, :cond_1

    move v5, v2

    :goto_0
    if-eq v6, v5, :cond_2

    .line 443
    .local v2, "payloadIsReply":Z
    :goto_1
    if-eq p1, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "payloadIsReply":Z
    :cond_1
    move v5, v4

    .line 442
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 444
    .restart local v2    # "payloadIsReply":Z
    :cond_3
    const/4 v3, 0x6

    .line 445
    .local v3, "type":I
    const/4 v0, 0x0

    .line 446
    .local v0, "flags":I
    const/4 v1, 0x4

    .line 447
    .local v1, "length":I
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v5, -0x7ffcfffa

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 448
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 449
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v4, p2}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 450
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    monitor-exit p0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    return-void
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/sUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 374
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 375
    :cond_1
    const/4 v0, 0x0

    .line 376
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 377
    .local v2, "type":I
    const/16 v1, 0x8

    .line 378
    .local v1, "length":I
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, -0x7ffcfffd

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 379
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 380
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 381
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 382
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void
.end method

.method sendDataFrame(IILc8/YVp;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lc8/YVp;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Lc8/sUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 402
    iget-object v0, p0, Lc8/sUe;->sink:Lc8/ZVp;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 403
    if-lez p4, :cond_2

    .line 404
    iget-object v0, p0, Lc8/sUe;->sink:Lc8/ZVp;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 406
    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lc8/qUe;)V
    .locals 10
    .param p1, "settings"    # Lc8/qUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffffff

    .line 422
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lc8/sUe;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 423
    :cond_0
    const/4 v5, 0x4

    .line 424
    .local v5, "type":I
    const/4 v0, 0x0

    .line 425
    .local v0, "flags":I
    :try_start_1
    invoke-virtual {p1}, Lc8/qUe;->size()I

    move-result v4

    .line 426
    .local v4, "size":I
    shl-int/lit8 v6, v4, 0x3

    add-int/lit8 v2, v6, 0x4

    .line 427
    .local v2, "length":I
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v7, -0x7ffcfffc

    invoke-interface {v6, v7}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 428
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    and-int v7, v2, v9

    or-int/lit8 v7, v7, 0x0

    invoke-interface {v6, v7}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 429
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v6, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    .line 431
    invoke-virtual {p1, v1}, Lc8/qUe;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    invoke-virtual {p1, v1}, Lc8/qUe;->flags(I)I

    move-result v3

    .line 433
    .local v3, "settingsFlags":I
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int v8, v1, v9

    or-int/2addr v7, v8

    invoke-interface {v6, v7}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 434
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-virtual {p1, v1}, Lc8/qUe;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 430
    .end local v3    # "settingsFlags":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_2
    iget-object v6, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v6}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/sUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 345
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lc8/sUe;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 346
    const/4 v2, 0x2

    .line 347
    .local v2, "type":I
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 348
    .local v0, "flags":I
    :goto_0
    iget-object v3, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-virtual {v3}, Lc8/YVp;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 350
    .local v1, "length":I
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, -0x7ffcfffe

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 351
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 352
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 353
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget-object v4, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-interface {v3, v4}, Lc8/ZVp;->writeAll(Lc8/uWp;)J

    .line 354
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 347
    .end local v0    # "flags":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lc8/sUe;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 327
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lc8/sUe;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 328
    const-wide/16 v4, 0xa

    iget-object v6, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-virtual {v6}, Lc8/YVp;->size()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 329
    .local v1, "length":I
    const/4 v2, 0x1

    .line 330
    .local v2, "type":I
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-eqz p2, :cond_2

    const/4 v4, 0x2

    :goto_1
    or-int v0, v5, v4

    .line 332
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 333
    .local v3, "unused":I
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v5, -0x7ffcffff

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 334
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 335
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v5, 0x7fffffff

    and-int/2addr v5, p3

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 336
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v5, 0x7fffffff

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 337
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lc8/ZVp;->writeShort(I)Lc8/ZVp;

    .line 338
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    iget-object v5, p0, Lc8/sUe;->headerBlockBuffer:Lc8/YVp;

    invoke-interface {v4, v5}, Lc8/ZVp;->writeAll(Lc8/uWp;)J

    .line 339
    iget-object v4, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 330
    .end local v0    # "flags":I
    .end local v3    # "unused":I
    :cond_1
    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/sUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 472
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    .line 473
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_2
    const/16 v2, 0x9

    .line 477
    .local v2, "type":I
    const/4 v0, 0x0

    .line 478
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 479
    .local v1, "length":I
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const v4, -0x7ffcfff7

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 480
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 481
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3, p1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 482
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 483
    iget-object v3, p0, Lc8/sUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return-void
.end method
