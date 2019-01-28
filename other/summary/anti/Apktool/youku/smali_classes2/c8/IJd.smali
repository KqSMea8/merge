.class public final Lc8/IJd;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lc8/AJd;


# instance fields
.field public final buffer:Lc8/yJd;

.field private closed:Z

.field public final source:Lc8/MJd;


# direct methods
.method public constructor <init>(Lc8/MJd;)V
    .locals 1
    .param p1, "source"    # Lc8/MJd;

    .prologue
    .line 36
    new-instance v0, Lc8/yJd;

    invoke-direct {v0}, Lc8/yJd;-><init>()V

    invoke-direct {p0, p1, v0}, Lc8/IJd;-><init>(Lc8/MJd;Lc8/yJd;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lc8/MJd;Lc8/yJd;)V
    .locals 2
    .param p1, "source"    # Lc8/MJd;
    .param p2, "buffer"    # Lc8/yJd;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    .line 32
    iput-object p1, p0, Lc8/IJd;->source:Lc8/MJd;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lc8/IJd;)Z
    .locals 1
    .param p0, "x0"    # Lc8/IJd;

    .prologue
    .line 24
    iget-boolean v0, p0, Lc8/IJd;->closed:Z

    return v0
.end method

.method private rangeEquals(JLcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Z
    .locals 3
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->request(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->rangeEquals(JLcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buffer()Lc8/yJd;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-boolean v0, p0, Lc8/IJd;->closed:Z

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IJd;->closed:Z

    .line 395
    iget-object v0, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-interface {v0}, Lc8/MJd;->close()V

    .line 396
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->clear()V

    goto :goto_0
.end method

.method public exhausted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lc8/IJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(B)J
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/IJd;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 8
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v2, -0x1

    .line 303
    iget-boolean v4, p0, Lc8/IJd;->closed:Z

    if-eqz v4, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v4, v4, Lc8/yJd;->size:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_2

    .line 305
    iget-object v4, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-interface {v4, v5, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 312
    :cond_1
    :goto_0
    return-wide v0

    .line 308
    :cond_2
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4, p1, p2, p3}, Lc8/yJd;->indexOf(BJ)J

    move-result-wide v0

    .local v0, "index":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 309
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide p2, v4, Lc8/yJd;->size:J

    .line 310
    iget-object v4, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-interface {v4, v5, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public indexOf(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/IJd;->indexOf(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;J)J
    .locals 4
    .param p1, "bytes"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 320
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    .line 322
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {p0, v2, p2, p3}, Lc8/IJd;->indexOf(BJ)J

    move-result-wide p2

    .line 323
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    move-wide p2, v0

    .line 327
    .end local p2    # "fromIndex":J
    :goto_0
    return-wide p2

    .line 326
    .restart local p2    # "fromIndex":J
    :cond_2
    invoke-direct {p0, p2, p3, p1}, Lc8/IJd;->rangeEquals(JLcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public indexOfElement(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/IJd;->indexOfElement(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;J)J
    .locals 8
    .param p1, "targetBytes"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v2, -0x1

    .line 338
    iget-boolean v4, p0, Lc8/IJd;->closed:Z

    if-eqz v4, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v4, v4, Lc8/yJd;->size:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_2

    .line 340
    iget-object v4, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-interface {v4, v5, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 347
    :cond_1
    :goto_0
    return-wide v0

    .line 343
    :cond_2
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4, p1, p2, p3}, Lc8/yJd;->indexOfElement(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;J)J

    move-result-wide v0

    .local v0, "index":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 344
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide p2, v4, Lc8/yJd;->size:J

    .line 345
    iget-object v4, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-interface {v4, v5, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lc8/HJd;

    invoke-direct {v0, p0}, Lc8/HJd;-><init>(Lc8/IJd;)V

    return-object v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc8/IJd;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lc8/PJd;->checkOffsetAndCount(JJJ)V

    .line 123
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v0, v0, Lc8/yJd;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v6

    .line 125
    .local v6, "read":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 129
    .end local v6    # "read":J
    :goto_0
    return v0

    .line 128
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 129
    .local v8, "toRead":I
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, v8}, Lc8/yJd;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read(Lc8/yJd;J)J
    .locals 10
    .param p1, "sink"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 44
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    cmp-long v6, p2, v8

    if-gez v6, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_1
    iget-boolean v6, p0, Lc8/IJd;->closed:Z

    if-eqz v6, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_2
    iget-object v6, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v6, v6, Lc8/yJd;->size:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 49
    iget-object v6, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v7, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v8, 0x800

    invoke-interface {v6, v7, v8, v9}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v0

    .line 50
    .local v0, "read":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    .line 54
    .end local v0    # "read":J
    :goto_0
    return-wide v4

    .line 53
    :cond_3
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v4, v4, Lc8/yJd;->size:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 54
    .local v2, "toRead":J
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4, p1, v2, v3}, Lc8/yJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public readAll(Lc8/LJd;)J
    .locals 10
    .param p1, "sink"    # Lc8/LJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 144
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sink == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_0
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "totalBytesWritten":J
    :cond_1
    :goto_0
    iget-object v4, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v6, 0x800

    invoke-interface {v4, v5, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4}, Lc8/yJd;->completeSegmentByteCount()J

    move-result-wide v0

    .line 149
    .local v0, "emitByteCount":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    .line 150
    add-long/2addr v2, v0

    .line 151
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-interface {p1, v4, v0, v1}, Lc8/LJd;->write(Lc8/yJd;J)V

    goto :goto_0

    .line 154
    .end local v0    # "emitByteCount":J
    :cond_2
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4}, Lc8/yJd;->size()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 155
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v4}, Lc8/yJd;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 156
    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v5, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v5}, Lc8/yJd;->size()J

    move-result-wide v6

    invoke-interface {p1, v4, v6, v7}, Lc8/LJd;->write(Lc8/yJd;J)V

    .line 158
    :cond_3
    return-wide v2
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 77
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v1, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-virtual {v0, v1}, Lc8/yJd;->writeAll(Lc8/MJd;)J

    .line 92
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lc8/IJd;->require(J)V

    .line 97
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v1, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-virtual {v0, v1}, Lc8/yJd;->writeAll(Lc8/MJd;)J

    .line 82
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readByteString()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lc8/IJd;->require(J)V

    .line 87
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->readByteString(J)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    .line 253
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lc8/yJd;->getByte(J)B

    move-result v0

    .line 255
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    .line 257
    :cond_1
    if-nez v1, :cond_3

    .line 258
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 259
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 258
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "b":B
    :cond_3
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v2}, Lc8/yJd;->readDecimalLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public readFully(Lc8/yJd;J)V
    .locals 2
    .param p1, "sink"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lc8/IJd;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v1, p1, p2, p3}, Lc8/yJd;->readFully(Lc8/yJd;J)V

    .line 141
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {p1, v1}, Lc8/yJd;->writeAll(Lc8/MJd;)J

    .line 138
    throw v0
.end method

.method public readFully([B)V
    .locals 8
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    array-length v3, p1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lc8/IJd;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iget-object v3, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v3, p1}, Lc8/yJd;->readFully([B)V

    .line 118
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 110
    .local v1, "offset":I
    :goto_0
    iget-object v3, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v4, v3, Lc8/yJd;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 111
    iget-object v3, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v4, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v4, v4, Lc8/yJd;->size:J

    long-to-int v4, v4

    invoke-virtual {v3, p1, v1, v4}, Lc8/yJd;->read([BII)I

    move-result v2

    .line 112
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 113
    :cond_0
    add-int/2addr v1, v2

    .line 114
    goto :goto_0

    .line 115
    .end local v2    # "read":I
    :cond_1
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    .line 271
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lc8/yJd;->getByte(J)B

    move-result v0

    .line 273
    .local v0, "b":B
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x66

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    .line 275
    :cond_2
    if-nez v1, :cond_4

    .line 276
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 277
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 276
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "b":B
    :cond_4
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v2}, Lc8/yJd;->readHexadecimalUnsignedLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 232
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 237
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 242
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 247
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 222
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc8/IJd;->require(J)V

    .line 227
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lc8/IJd;->require(J)V

    .line 180
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v1, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-virtual {v0, v1}, Lc8/yJd;->writeAll(Lc8/MJd;)J

    .line 175
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-object v1, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-virtual {v0, v1}, Lc8/yJd;->writeAll(Lc8/MJd;)J

    .line 163
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0}, Lc8/yJd;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lc8/IJd;->require(J)V

    .line 168
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    .line 208
    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lc8/yJd;->getByte(J)B

    move-result v0

    .line 209
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 210
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    .line 217
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v1}, Lc8/yJd;->readUtf8CodePoint()I

    move-result v1

    return v1

    .line 211
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 212
    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    goto :goto_0

    .line 213
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 214
    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->require(J)V

    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lc8/IJd;->indexOf(B)J

    move-result-wide v0

    .line 187
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 188
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    invoke-virtual {p0, v2, v3}, Lc8/IJd;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 191
    :goto_0
    return-object v2

    .line 188
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v2, v0, v1}, Lc8/yJd;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lc8/IJd;->indexOf(B)J

    move-result-wide v6

    .line 196
    .local v6, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 197
    new-instance v1, Lc8/yJd;

    invoke-direct {v1}, Lc8/yJd;-><init>()V

    .line 198
    .local v1, "data":Lc8/yJd;
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v8, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v8}, Lc8/yJd;->size()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lc8/yJd;->copyTo(Lc8/yJd;JJ)Lc8/yJd;

    .line 199
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v3}, Lc8/yJd;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v1}, Lc8/yJd;->readByteString()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local v1    # "data":Lc8/yJd;
    :cond_0
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, v6, v7}, Lc8/yJd;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lc8/IJd;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iget-object v0, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v0, v0, Lc8/yJd;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 70
    iget-object v0, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v1, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public require(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lc8/IJd;->request(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public skip(J)V
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 287
    iget-boolean v2, p0, Lc8/IJd;->closed:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_0
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v2}, Lc8/yJd;->size()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 293
    .local v0, "toSkip":J
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    invoke-virtual {v2, v0, v1}, Lc8/yJd;->skip(J)V

    .line 294
    sub-long/2addr p1, v0

    .line 288
    .end local v0    # "toSkip":J
    :cond_1
    cmp-long v2, p1, v6

    if-lez v2, :cond_2

    .line 289
    iget-object v2, p0, Lc8/IJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/IJd;->source:Lc8/MJd;

    iget-object v3, p0, Lc8/IJd;->buffer:Lc8/yJd;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 296
    :cond_2
    return-void
.end method

.method public timeout()Lc8/OJd;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-interface {v0}, Lc8/MJd;->timeout()Lc8/OJd;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/IJd;->source:Lc8/MJd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
