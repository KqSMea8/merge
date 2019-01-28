.class public Lc8/Cao;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# instance fields
.field private buffers:Ljava/util/List;

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lc8/Cao;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Cao;->buffers:Ljava/util/List;

    .line 71
    if-gez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lc8/Cao;->needNewBuffer(I)V

    .line 76
    return-void
.end method

.method private getBuffer(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Cao;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private needNewBuffer(I)V
    .locals 3
    .param p1, "newcount"    # I

    .prologue
    .line 96
    iget v1, p0, Lc8/Cao;->currentBufferIndex:I

    iget-object v2, p0, Lc8/Cao;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 98
    iget v1, p0, Lc8/Cao;->filledBufferSum:I

    iget-object v2, p0, Lc8/Cao;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lc8/Cao;->filledBufferSum:I

    .line 100
    iget v1, p0, Lc8/Cao;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cao;->currentBufferIndex:I

    .line 101
    iget v1, p0, Lc8/Cao;->currentBufferIndex:I

    invoke-direct {p0, v1}, Lc8/Cao;->getBuffer(I)[B

    move-result-object v1

    iput-object v1, p0, Lc8/Cao;->currentBuffer:[B

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lc8/Cao;->currentBuffer:[B

    if-nez v1, :cond_1

    .line 106
    move v0, p1

    .line 107
    .local v0, "newBufferSize":I
    const/4 v1, 0x0

    iput v1, p0, Lc8/Cao;->filledBufferSum:I

    .line 115
    :goto_1
    iget v1, p0, Lc8/Cao;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cao;->currentBufferIndex:I

    .line 116
    new-array v1, v0, [B

    iput-object v1, p0, Lc8/Cao;->currentBuffer:[B

    .line 117
    iget-object v1, p0, Lc8/Cao;->buffers:Ljava/util/List;

    iget-object v2, p0, Lc8/Cao;->currentBuffer:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "newBufferSize":I
    :cond_1
    iget-object v1, p0, Lc8/Cao;->currentBuffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/Cao;->filledBufferSum:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    .restart local v0    # "newBufferSize":I
    iget v1, p0, Lc8/Cao;->filledBufferSum:I

    iget-object v2, p0, Lc8/Cao;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lc8/Cao;->filledBufferSum:I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lc8/Cao;->count:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lc8/Cao;->filledBufferSum:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lc8/Cao;->currentBufferIndex:I

    .line 182
    iget v0, p0, Lc8/Cao;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lc8/Cao;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/Cao;->currentBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lc8/Cao;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lc8/Cao;->count:I

    .line 206
    .local v5, "remaining":I
    const/4 v4, 0x0

    .line 207
    .local v4, "pos":I
    iget v6, p0, Lc8/Cao;->count:I

    new-array v3, v6, [B

    .line 208
    .local v3, "newbuf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lc8/Cao;->buffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 209
    invoke-direct {p0, v2}, Lc8/Cao;->getBuffer(I)[B

    move-result-object v0

    .line 210
    .local v0, "buf":[B
    array-length v6, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    .local v1, "c":I
    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    add-int/2addr v4, v1

    .line 213
    sub-int/2addr v5, v1

    .line 214
    if-eqz v5, :cond_0

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_0
    monitor-exit p0

    return-object v3

    .line 205
    .end local v2    # "i":I
    .end local v3    # "newbuf":[B
    .end local v4    # "pos":I
    .end local v5    # "remaining":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lc8/Cao;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lc8/Cao;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc8/Cao;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 125
    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v4, p1

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_0

    add-int v4, p2, p3

    if-gez v4, :cond_1

    .line 130
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 131
    :cond_1
    if-nez p3, :cond_2

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_2
    :try_start_1
    iget v4, p0, Lc8/Cao;->count:I

    add-int v1, v4, p3

    .line 135
    .local v1, "newcount":I
    move v3, p3

    .line 136
    .local v3, "remaining":I
    iget v4, p0, Lc8/Cao;->count:I

    iget v5, p0, Lc8/Cao;->filledBufferSum:I

    sub-int v0, v4, v5

    .line 137
    .local v0, "inBufferPos":I
    :cond_3
    :goto_1
    if-lez v3, :cond_4

    .line 138
    iget-object v4, p0, Lc8/Cao;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 139
    .local v2, "part":I
    add-int v4, p2, p3

    sub-int/2addr v4, v3

    iget-object v5, p0, Lc8/Cao;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    sub-int/2addr v3, v2

    .line 141
    if-lez v3, :cond_3

    .line 142
    invoke-direct {p0, v1}, Lc8/Cao;->needNewBuffer(I)V

    .line 143
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    .end local v2    # "part":I
    :cond_4
    iput v1, p0, Lc8/Cao;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lc8/Cao;->count:I

    .line 190
    .local v3, "remaining":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lc8/Cao;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 191
    invoke-direct {p0, v2}, Lc8/Cao;->getBuffer(I)[B

    move-result-object v0

    .line 192
    .local v0, "buf":[B
    array-length v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 193
    .local v1, "c":I
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    sub-int/2addr v3, v1

    .line 195
    if-eqz v3, :cond_0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    .end local v2    # "i":I
    .end local v3    # "remaining":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
