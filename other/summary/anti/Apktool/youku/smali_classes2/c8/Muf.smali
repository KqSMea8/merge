.class public Lc8/Muf;
.super Lc8/Nuf;
.source "RewindableFileInputStream.java"


# instance fields
.field private mCanReposition:Z

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mFD:Ljava/io/FileDescriptor;

.field private mInitialPosition:J


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;I)V
    .locals 2
    .param p1, "fis"    # Ljava/io/FileInputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bufferSize"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Nuf;-><init>(Ljava/io/InputStream;I)V

    .line 22
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lc8/Muf;->mChannel:Ljava/nio/channels/FileChannel;

    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lc8/Muf;->mFD:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/Muf;->mInitialPosition:J

    .line 28
    iget-object v0, p0, Lc8/Muf;->mChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 30
    :try_start_1
    iget-object v0, p0, Lc8/Muf;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Muf;->mInitialPosition:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Muf;->reposition([Ljava/io/IOException;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Muf;->mCanReposition:Z

    .line 40
    iget-boolean v0, p0, Lc8/Muf;->mCanReposition:Z

    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0, p2}, Lc8/Muf;->setBufferSize(I)V

    .line 45
    :cond_1
    :goto_2
    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lc8/Muf;->mFD:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/Muf;->resetInputType(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private reposition([Ljava/io/IOException;)Z
    .locals 6
    .param p1, "exceptions"    # [Ljava/io/IOException;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "ret":Z
    iget-wide v2, p0, Lc8/Muf;->mInitialPosition:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 51
    :try_start_0
    iget-object v2, p0, Lc8/Muf;->mChannel:Ljava/nio/channels/FileChannel;

    iget-wide v4, p0, Lc8/Muf;->mInitialPosition:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/io/IOException;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 55
    const/4 v2, 0x0

    aput-object v0, p1, v2

    goto :goto_0
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Muf;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lc8/Muf;->mCanReposition:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Muf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lc8/Nuf;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lc8/Muf;->mCanReposition:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lc8/Muf;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/Nuf;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public rewind()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v2, p0, Lc8/Muf;->mCanReposition:Z

    if-eqz v2, :cond_2

    .line 85
    iget-boolean v2, p0, Lc8/Muf;->mClosed:Z

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "cannot rewind cause file stream has been closed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/IOException;

    .line 89
    .local v0, "errors":[Ljava/io/IOException;
    invoke-direct {p0, v0}, Lc8/Muf;->reposition([Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 91
    .local v1, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot rewind cause file stream reposition("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lc8/Muf;->mInitialPosition:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lc8/Muf;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") failed, detail="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo v2, "null"

    goto :goto_0

    .line 95
    .end local v0    # "errors":[Ljava/io/IOException;
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_2
    invoke-super {p0}, Lc8/Nuf;->rewind()V

    .line 96
    :cond_3
    return-void
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
    .line 100
    invoke-virtual {p0}, Lc8/Muf;->rewind()V

    .line 101
    invoke-virtual {p0, p1}, Lc8/Muf;->setBufferSize(I)V

    .line 102
    return-void
.end method
