.class public Lc8/pwf;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lc8/JNf;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .param p2, "bytesPool"    # Lc8/JNf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 87
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "count":J
    if-eqz p2, :cond_1

    .line 90
    invoke-interface {p2, v4}, Lc8/JNf;->offer(I)[B

    move-result-object v3

    .line 97
    .local v3, "tmp":[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 98
    .local v2, "read":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-interface {p2, v3}, Lc8/JNf;->release([B)V

    :cond_0
    return-wide v0

    .line 92
    .end local v2    # "read":I
    .end local v3    # "tmp":[B
    :cond_1
    new-array v3, v4, [B

    .restart local v3    # "tmp":[B
    goto :goto_0

    .line 101
    .restart local v2    # "read":I
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 103
    goto :goto_0

    .line 105
    .end local v2    # "read":I
    :catchall_0
    move-exception v4

    if-eqz p2, :cond_3

    .line 106
    invoke-interface {p2, v3}, Lc8/JNf;->release([B)V

    :cond_3
    throw v4
.end method

.method public static readBytes(Ljava/io/InputStream;Lc8/JNf;[I)Lc8/bxf;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bytesPool"    # Lc8/JNf;
    .param p2, "readLengths"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 15
    new-instance v0, Lc8/yxf;

    const/4 v1, 0x0

    aget v2, p2, v3

    invoke-direct {v0, v1, v2, v3}, Lc8/yxf;-><init>(Lc8/oyf;II)V

    .line 17
    .local v0, "result":Lc8/yxf;
    :try_start_0
    invoke-static {p0, p1, v0}, Lc8/pwf;->readBytes(Ljava/io/InputStream;Lc8/JNf;Lc8/yxf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Lc8/yxf;->getReadLength()I

    move-result v1

    aput v1, p2, v3

    .line 21
    invoke-virtual {v0}, Lc8/yxf;->getEncodeData()Lc8/bxf;

    move-result-object v1

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lc8/yxf;->getReadLength()I

    move-result v2

    aput v2, p2, v3

    throw v1
.end method

.method public static readBytes(Ljava/io/InputStream;Lc8/JNf;Lc8/yxf;)V
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bytesPool"    # Lc8/JNf;
    .param p2, "handler"    # Lc8/yxf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2000

    const/4 v9, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, "outBuffer":[B
    const/4 v4, 0x0

    .line 29
    .local v4, "outStream":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_6

    .line 30
    invoke-interface {p1, v7}, Lc8/JNf;->offer(I)[B

    move-result-object v6

    .line 34
    .local v6, "readBuffer":[B
    :goto_0
    iget v7, p2, Lc8/yxf;->contentLength:I

    if-lez v7, :cond_0

    .line 36
    if-eqz p1, :cond_7

    .line 37
    :try_start_0
    iget v7, p2, Lc8/yxf;->contentLength:I

    invoke-interface {p1, v7}, Lc8/JNf;->offer(I)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 47
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .end local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    const v7, 0x8000

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 50
    .restart local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v1, 0x1

    .line 53
    .local v1, "failed":Z
    const/4 v0, 0x0

    .line 54
    .local v0, "breakInProgress":Z
    :cond_2
    :try_start_1
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "newRead":I
    if-eq v2, v12, :cond_3

    invoke-virtual {p2, v2}, Lc8/yxf;->inLimit(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    if-eqz v4, :cond_8

    .line 56
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 60
    :goto_2
    invoke-virtual {p2, v2}, Lc8/yxf;->onProgressUpdate(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    const/4 v0, 0x1

    .line 65
    :cond_3
    if-nez v0, :cond_4

    .line 66
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :goto_3
    invoke-virtual {p2, v7}, Lc8/yxf;->setupData([B)V

    .line 67
    const/4 v1, 0x0

    .line 68
    if-eq v2, v12, :cond_4

    .line 69
    const-string/jumbo v7, "Stream"

    const-string/jumbo v8, "read bytes incorrect, exceed content-length=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p2, Lc8/yxf;->contentLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_4
    if-eqz p1, :cond_5

    .line 75
    invoke-interface {p1, v6}, Lc8/JNf;->release([B)V

    .line 76
    if-eqz v1, :cond_5

    .line 77
    invoke-interface {p1, v3}, Lc8/JNf;->release([B)V

    .line 81
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :goto_4
    return-void

    .line 32
    .end local v0    # "breakInProgress":Z
    .end local v1    # "failed":Z
    .end local v2    # "newRead":I
    .end local v6    # "readBuffer":[B
    :cond_6
    new-array v6, v7, [B

    .restart local v6    # "readBuffer":[B
    goto :goto_0

    .line 39
    :cond_7
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    iget v7, p2, Lc8/yxf;->contentLength:I

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .end local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 43
    .end local v5    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 42
    :catch_0
    move-exception v7

    const-string/jumbo v7, "Stream"

    const-string/jumbo v8, "allocate byte array OOM with content length=%d"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p2, Lc8/yxf;->contentLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    .restart local v0    # "breakInProgress":Z
    .restart local v1    # "failed":Z
    .restart local v2    # "newRead":I
    :cond_8
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {p2}, Lc8/yxf;->getReadLength()I

    move-result v8

    invoke-static {v6, v7, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 74
    .end local v2    # "newRead":I
    :catchall_0
    move-exception v7

    if-eqz p1, :cond_9

    .line 75
    invoke-interface {p1, v6}, Lc8/JNf;->release([B)V

    .line 76
    if-eqz v1, :cond_9

    .line 77
    invoke-interface {p1, v3}, Lc8/JNf;->release([B)V

    .line 81
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 82
    :goto_5
    throw v7

    .restart local v2    # "newRead":I
    :cond_a
    move-object v7, v3

    .line 66
    goto :goto_3

    .line 83
    :catch_1
    move-exception v7

    goto :goto_4

    .end local v2    # "newRead":I
    :catch_2
    move-exception v8

    goto :goto_5
.end method
