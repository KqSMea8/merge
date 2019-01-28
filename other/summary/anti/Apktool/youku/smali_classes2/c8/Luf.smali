.class public Lc8/Luf;
.super Lc8/Ouf;
.source "RewindableByteArrayStream.java"


# instance fields
.field private buf:[B

.field private count:I

.field private final mInitialOffset:I

.field private mark:I

.field private pos:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Ouf;-><init>(I)V

    .line 18
    iput-object p1, p0, Lc8/Luf;->buf:[B

    .line 19
    iput p2, p0, Lc8/Luf;->pos:I

    .line 20
    iput p2, p0, Lc8/Luf;->mark:I

    .line 21
    add-int v0, p2, p3

    iget-object v1, p0, Lc8/Luf;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lc8/Luf;->buf:[B

    array-length v0, v0

    :goto_0
    iput v0, p0, Lc8/Luf;->count:I

    .line 22
    iput p2, p0, Lc8/Luf;->mInitialOffset:I

    .line 23
    return-void

    .line 21
    :cond_0
    add-int v0, p2, p3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Luf;->count:I

    iget v1, p0, Lc8/Luf;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Luf;->buf:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lc8/Luf;->count:I

    return v0
.end method

.method public getBufferOffset()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lc8/Luf;->mInitialOffset:I

    return v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Luf;->pos:I

    iput v0, p0, Lc8/Luf;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Luf;->pos:I

    iget v1, p0, Lc8/Luf;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lc8/Luf;->buf:[B

    iget v1, p0, Lc8/Luf;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc8/Luf;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lc8/Luf;->pos:I

    iget v2, p0, Lc8/Luf;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 79
    const/4 v0, -0x1

    .line 88
    :goto_0
    monitor-exit p0

    return v0

    .line 81
    :cond_0
    if-nez p3, :cond_1

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    iget v1, p0, Lc8/Luf;->count:I

    iget v2, p0, Lc8/Luf;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_2

    iget v1, p0, Lc8/Luf;->count:I

    iget v2, p0, Lc8/Luf;->pos:I

    sub-int v0, v1, v2

    .line 86
    .local v0, "copyLen":I
    :goto_1
    iget-object v1, p0, Lc8/Luf;->buf:[B

    iget v2, p0, Lc8/Luf;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v1, p0, Lc8/Luf;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lc8/Luf;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v0    # "copyLen":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    move v0, p3

    .line 85
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Luf;->mark:I

    iput v0, p0, Lc8/Luf;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lc8/Luf;->mInitialOffset:I

    iput v0, p0, Lc8/Luf;->pos:I

    .line 28
    return-void
.end method

.method public rewindAndSetBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Lc8/Luf;->rewind()V

    .line 33
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .param p1, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    monitor-enter p0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 103
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 101
    :cond_0
    :try_start_0
    iget v0, p0, Lc8/Luf;->pos:I

    .line 102
    .local v0, "temp":I
    iget v1, p0, Lc8/Luf;->count:I

    iget v2, p0, Lc8/Luf;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-gez v1, :cond_1

    iget v1, p0, Lc8/Luf;->count:I

    :goto_1
    iput v1, p0, Lc8/Luf;->pos:I

    .line 103
    iget v1, p0, Lc8/Luf;->pos:I

    sub-int/2addr v1, v0

    int-to-long v2, v1

    goto :goto_0

    .line 102
    :cond_1
    iget v1, p0, Lc8/Luf;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    goto :goto_1

    .line 98
    .end local v0    # "temp":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
