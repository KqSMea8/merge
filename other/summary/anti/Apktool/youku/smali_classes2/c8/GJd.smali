.class public final Lc8/GJd;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lc8/zJd;


# instance fields
.field public final buffer:Lc8/yJd;

.field private closed:Z

.field public final sink:Lc8/LJd;


# direct methods
.method public constructor <init>(Lc8/LJd;)V
    .locals 1
    .param p1, "sink"    # Lc8/LJd;

    .prologue
    .line 35
    new-instance v0, Lc8/yJd;

    invoke-direct {v0}, Lc8/yJd;-><init>()V

    invoke-direct {p0, p1, v0}, Lc8/GJd;-><init>(Lc8/LJd;Lc8/yJd;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lc8/LJd;Lc8/yJd;)V
    .locals 2
    .param p1, "sink"    # Lc8/LJd;
    .param p2, "buffer"    # Lc8/yJd;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    .line 31
    iput-object p1, p0, Lc8/GJd;->sink:Lc8/LJd;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lc8/GJd;)Z
    .locals 1
    .param p0, "x0"    # Lc8/GJd;

    .prologue
    .line 23
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    return v0
.end method


# virtual methods
.method public buffer()Lc8/yJd;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v2, p0, Lc8/GJd;->closed:Z

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v1, 0x0

    .line 233
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 234
    iget-object v2, p0, Lc8/GJd;->sink:Lc8/LJd;

    iget-object v3, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-object v4, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-wide v4, v4, Lc8/yJd;->size:J

    invoke-interface {v2, v3, v4, v5}, Lc8/LJd;->write(Lc8/yJd;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lc8/GJd;->sink:Lc8/LJd;

    invoke-interface {v2}, Lc8/LJd;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_3
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/GJd;->closed:Z

    .line 247
    if-eqz v1, :cond_0

    invoke-static {v1}, Lc8/PJd;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 243
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_2
.end method

.method public emit()Lc8/zJd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v2, p0, Lc8/GJd;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    iget-object v2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v2}, Lc8/yJd;->size()J

    move-result-wide v0

    .line 183
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc8/GJd;->sink:Lc8/LJd;

    iget-object v3, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-interface {v2, v3, v0, v1}, Lc8/LJd;->write(Lc8/yJd;J)V

    .line 184
    :cond_1
    return-object p0
.end method

.method public emitCompleteSegments()Lc8/zJd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-boolean v2, p0, Lc8/GJd;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    iget-object v2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v2}, Lc8/yJd;->completeSegmentByteCount()J

    move-result-wide v0

    .line 176
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc8/GJd;->sink:Lc8/LJd;

    iget-object v3, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-interface {v2, v3, v0, v1}, Lc8/LJd;->write(Lc8/yJd;J)V

    .line 177
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-wide v0, v0, Lc8/yJd;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 221
    iget-object v0, p0, Lc8/GJd;->sink:Lc8/LJd;

    iget-object v1, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-object v2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    iget-wide v2, v2, Lc8/yJd;->size:J

    invoke-interface {v0, v1, v2, v3}, Lc8/LJd;->write(Lc8/yJd;J)V

    .line 223
    :cond_1
    iget-object v0, p0, Lc8/GJd;->sink:Lc8/LJd;

    invoke-interface {v0}, Lc8/LJd;->flush()V

    .line 224
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lc8/FJd;

    invoke-direct {v0, p0}, Lc8/FJd;-><init>(Lc8/GJd;)V

    return-object v0
.end method

.method public timeout()Lc8/OJd;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lc8/GJd;->sink:Lc8/LJd;

    invoke-interface {v0}, Lc8/LJd;->timeout()Lc8/OJd;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/GJd;->sink:Lc8/LJd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/MJd;J)Lc8/zJd;
    .locals 4
    .param p1, "source"    # Lc8/MJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 111
    iget-object v2, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-interface {p1, v2, p2, p3}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v0

    .line 112
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 113
    :cond_0
    sub-long/2addr p2, v0

    .line 114
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    goto :goto_0

    .line 116
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lc8/zJd;
    .locals 2
    .param p1, "byteString"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lc8/yJd;

    .line 52
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lc8/zJd;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->write([B)Lc8/yJd;

    .line 90
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lc8/zJd;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->write([BII)Lc8/yJd;

    .line 96
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/yJd;J)V
    .locals 2
    .param p1, "source"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->write(Lc8/yJd;J)V

    .line 46
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    .line 47
    return-void
.end method

.method public writeAll(Lc8/MJd;)J
    .locals 8
    .param p1, "source"    # Lc8/MJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "source == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_0
    const-wide/16 v2, 0x0

    .line 102
    .local v2, "totalBytesRead":J
    :goto_0
    iget-object v4, p0, Lc8/GJd;->buffer:Lc8/yJd;

    const-wide/16 v6, 0x800

    invoke-interface {p1, v4, v6, v7}, Lc8/MJd;->read(Lc8/yJd;J)J

    move-result-wide v0

    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 103
    add-long/2addr v2, v0

    .line 104
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    goto :goto_0

    .line 106
    :cond_1
    return-wide v2
.end method

.method public writeByte(I)Lc8/zJd;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 122
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lc8/zJd;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->writeDecimalLong(J)Lc8/yJd;

    .line 164
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lc8/zJd;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->writeHexadecimalUnsignedLong(J)Lc8/yJd;

    .line 170
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lc8/zJd;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeInt(I)Lc8/yJd;

    .line 140
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lc8/zJd;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeIntLe(I)Lc8/yJd;

    .line 146
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lc8/zJd;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->writeLong(J)Lc8/yJd;

    .line 152
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lc8/zJd;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->writeLongLe(J)Lc8/yJd;

    .line 158
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lc8/zJd;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeShort(I)Lc8/yJd;

    .line 128
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lc8/zJd;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeShortLe(I)Lc8/yJd;

    .line 134
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc8/zJd;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/yJd;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc8/yJd;

    .line 84
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc8/zJd;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2}, Lc8/yJd;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc8/yJd;

    .line 77
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lc8/zJd;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeUtf8(Ljava/lang/String;)Lc8/yJd;

    .line 58
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lc8/zJd;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->writeUtf8(Ljava/lang/String;II)Lc8/yJd;

    .line 65
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lc8/zJd;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p0, Lc8/GJd;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1}, Lc8/yJd;->writeUtf8CodePoint(I)Lc8/yJd;

    .line 71
    invoke-virtual {p0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    move-result-object v0

    return-object v0
.end method
