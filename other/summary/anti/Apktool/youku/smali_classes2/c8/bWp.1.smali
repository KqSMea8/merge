.class public final Lc8/bWp;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lc8/tWp;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lc8/ZVp;


# direct methods
.method constructor <init>(Lc8/ZVp;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lc8/ZVp;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lc8/bWp;->sink:Lc8/ZVp;

    .line 56
    iput-object p2, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lc8/tWp;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lc8/tWp;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 44
    invoke-static {p1}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc8/bWp;-><init>(Lc8/ZVp;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private deflate(Z)V
    .locals 8
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 84
    iget-object v3, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->buffer()Lc8/YVp;

    move-result-object v0

    .line 86
    .local v0, "buffer":Lc8/YVp;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lc8/YVp;->writableSegment(I)Lc8/rWp;

    move-result-object v2

    .line 92
    .local v2, "s":Lc8/rWp;
    if-eqz p1, :cond_1

    .line 93
    iget-object v3, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lc8/rWp;->data:[B

    iget v5, v2, Lc8/rWp;->limit:I

    iget v6, v2, Lc8/rWp;->limit:I

    rsub-int v6, v6, 0x2000

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .line 96
    .local v1, "deflated":I
    :goto_1
    if-lez v1, :cond_2

    .line 97
    iget v3, v2, Lc8/rWp;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lc8/rWp;->limit:I

    .line 98
    iget-wide v4, v0, Lc8/YVp;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lc8/YVp;->size:J

    .line 99
    iget-object v3, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->emitCompleteSegments()Lc8/ZVp;

    goto :goto_0

    .line 94
    .end local v1    # "deflated":I
    :cond_1
    iget-object v3, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lc8/rWp;->data:[B

    iget v5, v2, Lc8/rWp;->limit:I

    iget v6, v2, Lc8/rWp;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    goto :goto_1

    .line 100
    .restart local v1    # "deflated":I
    :cond_2
    iget-object v3, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget v3, v2, Lc8/rWp;->pos:I

    iget v4, v2, Lc8/rWp;->limit:I

    if-ne v3, v4, :cond_3

    .line 103
    invoke-virtual {v2}, Lc8/rWp;->pop()Lc8/rWp;

    move-result-object v3

    iput-object v3, v0, Lc8/YVp;->head:Lc8/rWp;

    .line 104
    invoke-static {v2}, Lc8/sWp;->recycle(Lc8/rWp;)V

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-boolean v2, p0, Lc8/bWp;->closed:Z

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lc8/bWp;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    :try_start_1
    iget-object v2, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_2
    :goto_2
    :try_start_2
    iget-object v2, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-interface {v2}, Lc8/ZVp;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :cond_3
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/bWp;->closed:Z

    .line 146
    if-eqz v1, :cond_0

    invoke-static {v1}, Lc8/xWp;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_3
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/bWp;->deflate(Z)V

    .line 119
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/bWp;->deflate(Z)V

    .line 113
    iget-object v0, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->flush()V

    .line 114
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->timeout()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/bWp;->sink:Lc8/ZVp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 8
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    iget-wide v0, p1, Lc8/YVp;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/xWp;->checkOffsetAndCount(JJJ)V

    .line 61
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 63
    iget-object v6, p1, Lc8/YVp;->head:Lc8/rWp;

    .line 64
    .local v6, "head":Lc8/rWp;
    iget v0, v6, Lc8/rWp;->limit:I

    iget v1, v6, Lc8/rWp;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 65
    .local v7, "toDeflate":I
    iget-object v0, p0, Lc8/bWp;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lc8/rWp;->data:[B

    iget v4, v6, Lc8/rWp;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/bWp;->deflate(Z)V

    .line 71
    iget-wide v0, p1, Lc8/YVp;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lc8/YVp;->size:J

    .line 72
    iget v0, v6, Lc8/rWp;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lc8/rWp;->pos:I

    .line 73
    iget v0, v6, Lc8/rWp;->pos:I

    iget v1, v6, Lc8/rWp;->limit:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {v6}, Lc8/rWp;->pop()Lc8/rWp;

    move-result-object v0

    iput-object v0, p1, Lc8/YVp;->head:Lc8/rWp;

    .line 75
    invoke-static {v6}, Lc8/sWp;->recycle(Lc8/rWp;)V

    .line 78
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 79
    goto :goto_0

    .line 80
    .end local v6    # "head":Lc8/rWp;
    .end local v7    # "toDeflate":I
    :cond_1
    return-void
.end method
