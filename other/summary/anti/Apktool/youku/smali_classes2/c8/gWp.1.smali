.class public final Lc8/gWp;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lc8/uWp;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lc8/aWp;


# direct methods
.method constructor <init>(Lc8/aWp;Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "source"    # Lc8/aWp;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lc8/gWp;->source:Lc8/aWp;

    .line 52
    iput-object p2, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lc8/uWp;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "source"    # Lc8/uWp;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 40
    invoke-static {p1}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc8/gWp;-><init>(Lc8/aWp;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v1, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v1, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    iget-object v2, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    sub-int v0, v1, v2

    .line 114
    .local v0, "toRelease":I
    iget v1, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    .line 115
    iget-object v1, p0, Lc8/gWp;->source:Lc8/aWp;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lc8/aWp;->skip(J)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lc8/gWp;->closed:Z

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gWp;->closed:Z

    .line 126
    iget-object v0, p0, Lc8/gWp;->source:Lc8/aWp;

    invoke-interface {v0}, Lc8/aWp;->close()V

    goto :goto_0
.end method

.method public read(Lc8/YVp;J)J
    .locals 8
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 57
    cmp-long v6, p2, v4

    if-gez v6, :cond_0

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

    .line 58
    :cond_0
    iget-boolean v6, p0, Lc8/gWp;->closed:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_1
    cmp-long v6, p2, v4

    if-nez v6, :cond_2

    .line 80
    :goto_0
    return-wide v4

    .line 62
    :cond_2
    invoke-virtual {p0}, Lc8/gWp;->refill()Z

    move-result v2

    .line 66
    .local v2, "sourceExhausted":Z
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Lc8/YVp;->writableSegment(I)Lc8/rWp;

    move-result-object v3

    .line 67
    .local v3, "tail":Lc8/rWp;
    iget-object v4, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    iget-object v5, v3, Lc8/rWp;->data:[B

    iget v6, v3, Lc8/rWp;->limit:I

    iget v7, v3, Lc8/rWp;->limit:I

    rsub-int v7, v7, 0x2000

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 68
    .local v0, "bytesInflated":I
    if-lez v0, :cond_3

    .line 69
    iget v4, v3, Lc8/rWp;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lc8/rWp;->limit:I

    .line 70
    iget-wide v4, p1, Lc8/YVp;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lc8/YVp;->size:J

    .line 71
    int-to-long v4, v0

    goto :goto_0

    .line 73
    :cond_3
    iget-object v4, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 74
    :cond_4
    invoke-direct {p0}, Lc8/gWp;->releaseInflatedBytes()V

    .line 75
    iget v4, v3, Lc8/rWp;->pos:I

    iget v5, v3, Lc8/rWp;->limit:I

    if-ne v4, v5, :cond_5

    .line 77
    invoke-virtual {v3}, Lc8/rWp;->pop()Lc8/rWp;

    move-result-object v4

    iput-object v4, p1, Lc8/YVp;->head:Lc8/rWp;

    .line 78
    invoke-static {v3}, Lc8/sWp;->recycle(Lc8/rWp;)V

    .line 80
    :cond_5
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 82
    :cond_6
    if-eqz v2, :cond_2

    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "source exhausted prematurely"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "bytesInflated":I
    .end local v3    # "tail":Lc8/rWp;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public refill()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return v1

    .line 97
    :cond_0
    invoke-direct {p0}, Lc8/gWp;->releaseInflatedBytes()V

    .line 98
    iget-object v2, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    iget-object v2, p0, Lc8/gWp;->source:Lc8/aWp;

    invoke-interface {v2}, Lc8/aWp;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lc8/gWp;->source:Lc8/aWp;

    invoke-interface {v2}, Lc8/aWp;->buffer()Lc8/YVp;

    move-result-object v2

    iget-object v0, v2, Lc8/YVp;->head:Lc8/rWp;

    .line 105
    .local v0, "head":Lc8/rWp;
    iget v2, v0, Lc8/rWp;->limit:I

    iget v3, v0, Lc8/rWp;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    .line 106
    iget-object v2, p0, Lc8/gWp;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lc8/rWp;->data:[B

    iget v4, v0, Lc8/rWp;->pos:I

    iget v5, p0, Lc8/gWp;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lc8/gWp;->source:Lc8/aWp;

    invoke-interface {v0}, Lc8/aWp;->timeout()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method
