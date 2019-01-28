.class public Lc8/Nuf;
.super Lc8/Ouf;
.source "RewindableInputStream.java"


# instance fields
.field private mBuffer:[B

.field private mBufferSize:I

.field private mBufferedSoFar:I

.field protected mClosed:Z

.field protected final mHostStream:Ljava/io/InputStream;

.field private final mMarkSupported:Z

.field private mOffset:I

.field private mReachedEOF:Z


# direct methods
.method public constructor <init>(ILjava/io/InputStream;I)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "host"    # Ljava/io/InputStream;
    .param p3, "bufferSize"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Ouf;-><init>(I)V

    .line 27
    iput-object p2, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    .line 28
    iget-object v0, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    iput-boolean v0, p0, Lc8/Nuf;->mMarkSupported:Z

    .line 29
    invoke-virtual {p0, p3}, Lc8/Nuf;->setBufferSize(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "host"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 22
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lc8/Nuf;-><init>(ILjava/io/InputStream;I)V

    .line 23
    return-void
.end method

.method private bufferAndWriteTo([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v8, p0, Lc8/Nuf;->mBufferSize:I

    iget v9, p0, Lc8/Nuf;->mBufferedSoFar:I

    sub-int/2addr v8, v9

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    .local v0, "bytesToBuffer":I
    iget v8, p0, Lc8/Nuf;->mBufferedSoFar:I

    add-int v4, v8, v0

    .line 96
    .local v4, "needTotalSize":I
    iget-object v8, p0, Lc8/Nuf;->mBuffer:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/Nuf;->mBuffer:[B

    array-length v8, v8

    if-le v4, v8, :cond_2

    .line 97
    :cond_0
    add-int v8, v4, v0

    iget v9, p0, Lc8/Nuf;->mBufferSize:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 98
    .local v2, "expand2Size":I
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v8

    invoke-virtual {v8, v2}, Lc8/juf;->offerBytes(I)[B

    move-result-object v5

    .line 99
    .local v5, "newBuffer":[B
    iget-object v8, p0, Lc8/Nuf;->mBuffer:[B

    if-eqz v8, :cond_1

    .line 100
    iget-object v8, p0, Lc8/Nuf;->mBuffer:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lc8/Nuf;->mBufferedSoFar:I

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v8

    iget-object v9, p0, Lc8/Nuf;->mBuffer:[B

    invoke-virtual {v8, v9}, Lc8/juf;->releaseBytes([B)V

    .line 103
    :cond_1
    iput-object v5, p0, Lc8/Nuf;->mBuffer:[B

    .line 107
    .end local v2    # "expand2Size":I
    .end local v5    # "newBuffer":[B
    :cond_2
    const/4 v7, -0x1

    .line 108
    .local v7, "readTotal":I
    const/4 v6, 0x0

    .line 110
    .local v6, "readOffset":I
    :cond_3
    iget v3, p0, Lc8/Nuf;->mOffset:I

    .line 111
    .local v3, "lastOffset":I
    iget-object v8, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    iget-object v9, p0, Lc8/Nuf;->mBuffer:[B

    iget v10, p0, Lc8/Nuf;->mOffset:I

    sub-int v11, v0, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 113
    .local v1, "currRead":I
    if-gez v1, :cond_4

    .line 114
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/Nuf;->mReachedEOF:Z

    .line 115
    const-string/jumbo v8, "Pexode"

    const-string/jumbo v9, "bufferAndWriteTo() read stream end -1 now"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :goto_0
    return v7

    .line 119
    :cond_4
    if-lez v1, :cond_5

    .line 120
    iget v8, p0, Lc8/Nuf;->mBufferedSoFar:I

    add-int/2addr v8, v1

    iput v8, p0, Lc8/Nuf;->mBufferedSoFar:I

    .line 121
    iget v8, p0, Lc8/Nuf;->mBufferedSoFar:I

    iput v8, p0, Lc8/Nuf;->mOffset:I

    .line 123
    iget-object v8, p0, Lc8/Nuf;->mBuffer:[B

    add-int v9, p2, v6

    invoke-static {v8, v3, p1, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_5
    add-int/2addr v6, v1

    .line 127
    move v7, v6

    if-ne v6, v0, :cond_3

    goto :goto_0
.end method

.method private readDirectlyFromStream([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, "bytesReadDirectly":I
    if-gez v0, :cond_1

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Nuf;->mReachedEOF:Z

    .line 137
    const/4 v0, -0x1

    .line 148
    .end local v0    # "bytesReadDirectly":I
    :cond_0
    :goto_0
    return v0

    .line 142
    .restart local v0    # "bytesReadDirectly":I
    :cond_1
    if-lez v0, :cond_0

    .line 143
    iget v1, p0, Lc8/Nuf;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lc8/Nuf;->mOffset:I

    .line 144
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v1

    iget-object v2, p0, Lc8/Nuf;->mBuffer:[B

    invoke-virtual {v1, v2}, Lc8/juf;->releaseBytes([B)V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Nuf;->mBuffer:[B

    goto :goto_0
.end method

.method private readFromBuffer([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 82
    iget v1, p0, Lc8/Nuf;->mBufferedSoFar:I

    iget v2, p0, Lc8/Nuf;->mOffset:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    .local v0, "bytesToCopy":I
    iget-object v1, p0, Lc8/Nuf;->mBuffer:[B

    iget v2, p0, Lc8/Nuf;->mOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v1, p0, Lc8/Nuf;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lc8/Nuf;->mOffset:I

    .line 86
    return v0
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
    .line 200
    iget-object v0, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Nuf;->mClosed:Z

    .line 202
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Nuf;->mBuffer:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lc8/Nuf;->mBufferedSoFar:I

    return v0
.end method

.method public getBufferOffset()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    new-array v0, v1, [B

    .line 192
    .local v0, "temp":[B
    invoke-virtual {p0, v0, v2, v1}, Lc8/Nuf;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    aget-byte v1, v0, v2

    .line 195
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_1

    .line 154
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "read parameters illegal"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_1
    iget-boolean v3, p0, Lc8/Nuf;->mReachedEOF:Z

    if-eqz v3, :cond_3

    .line 158
    const/4 v0, -0x1

    .line 186
    :cond_2
    :goto_0
    return v0

    .line 161
    :cond_3
    const/4 v0, -0x1

    .line 162
    .local v0, "read":I
    move v1, p3

    .line 165
    .local v1, "remaining":I
    iget-boolean v3, p0, Lc8/Nuf;->mMarkSupported:Z

    if-nez v3, :cond_5

    .line 167
    iget v3, p0, Lc8/Nuf;->mOffset:I

    iget v4, p0, Lc8/Nuf;->mBufferedSoFar:I

    if-ge v3, v4, :cond_4

    .line 168
    invoke-direct {p0, p1, p2, v1}, Lc8/Nuf;->readFromBuffer([BII)I

    move-result v0

    .line 170
    sub-int/2addr v1, v0

    .line 174
    :cond_4
    if-lez v1, :cond_5

    iget v3, p0, Lc8/Nuf;->mBufferedSoFar:I

    iget v4, p0, Lc8/Nuf;->mBufferSize:I

    if-ge v3, v4, :cond_5

    add-int v3, p2, p3

    sub-int/2addr v3, v1

    invoke-direct {p0, p1, v3, v1}, Lc8/Nuf;->bufferAndWriteTo([BII)I

    move-result v2

    .local v2, "stepRead":I
    if-ltz v2, :cond_5

    .line 176
    sub-int/2addr v1, v2

    .line 177
    if-gez v0, :cond_6

    move v0, v2

    .line 182
    .end local v2    # "stepRead":I
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lc8/Nuf;->mReachedEOF:Z

    if-nez v3, :cond_2

    if-lez v1, :cond_2

    add-int v3, p2, p3

    sub-int/2addr v3, v1

    invoke-direct {p0, p1, v3, v1}, Lc8/Nuf;->readDirectlyFromStream([BII)I

    move-result v2

    .restart local v2    # "stepRead":I
    if-ltz v2, :cond_2

    .line 183
    if-gez v0, :cond_7

    move v0, v2

    :goto_2
    goto :goto_0

    .line 177
    :cond_6
    add-int/2addr v0, v2

    goto :goto_1

    .line 183
    :cond_7
    add-int/2addr v0, v2

    goto :goto_2
.end method

.method public rewind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-boolean v0, p0, Lc8/Nuf;->mMarkSupported:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 67
    :cond_0
    iput v2, p0, Lc8/Nuf;->mOffset:I

    .line 68
    iput-boolean v2, p0, Lc8/Nuf;->mReachedEOF:Z

    .line 69
    return-void

    .line 64
    :cond_1
    iget v0, p0, Lc8/Nuf;->mOffset:I

    iget v1, p0, Lc8/Nuf;->mBufferedSoFar:I

    if-le v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "cannot rewind cause input stream offset too far"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewindAndSetBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lc8/Nuf;->rewind()V

    .line 74
    invoke-virtual {p0, p1}, Lc8/Nuf;->setBufferSize(I)V

    .line 75
    return-void
.end method

.method protected setBufferSize(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 33
    iput p1, p0, Lc8/Nuf;->mBufferSize:I

    .line 34
    iget-boolean v0, p0, Lc8/Nuf;->mMarkSupported:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lc8/Nuf;->mHostStream:Ljava/io/InputStream;

    iget v1, p0, Lc8/Nuf;->mBufferSize:I

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 37
    :cond_0
    return-void
.end method
