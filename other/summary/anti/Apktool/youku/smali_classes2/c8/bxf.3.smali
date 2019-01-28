.class public Lc8/bxf;
.super Lc8/exf;
.source "EncodedData.java"


# instance fields
.field public final completed:Z

.field protected mReleased:Z


# direct methods
.method private constructor <init>(IZ[BILjava/io/InputStream;ILandroid/util/TypedValue;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "completed"    # Z
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "is"    # Ljava/io/InputStream;
    .param p6, "length"    # I
    .param p7, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v7, 0x1

    .line 25
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc8/exf;-><init>(I[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 26
    if-ne p1, v7, :cond_1

    .line 27
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, p6, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lc8/bxf;->completed:Z

    .line 31
    :goto_1
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    iput-boolean p2, p0, Lc8/bxf;->completed:Z

    goto :goto_1
.end method

.method protected constructor <init>(Lc8/bxf;)V
    .locals 8
    .param p1, "encoded"    # Lc8/bxf;

    .prologue
    .line 34
    iget v1, p1, Lc8/bxf;->type:I

    iget-boolean v2, p1, Lc8/bxf;->completed:Z

    iget-object v3, p1, Lc8/bxf;->bytes:[B

    iget v4, p1, Lc8/bxf;->offset:I

    iget-object v5, p1, Lc8/bxf;->inputStream:Ljava/io/InputStream;

    iget v6, p1, Lc8/bxf;->length:I

    iget-object v7, p1, Lc8/bxf;->resourceValue:Landroid/util/TypedValue;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lc8/bxf;-><init>(IZ[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILandroid/util/TypedValue;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 38
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lc8/bxf;-><init>(IZ[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z[BII)V
    .locals 8
    .param p1, "completed"    # Z
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v5, 0x0

    .line 49
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lc8/bxf;-><init>(IZ[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 50
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 59
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lc8/bxf;-><init>(IZ[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 60
    return-void
.end method

.method public static transformFrom(Lc8/exf;Lc8/yxf;)Lc8/bxf;
    .locals 6
    .param p0, "rd"    # Lc8/exf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Lc8/yxf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 121
    iget v2, p0, Lc8/exf;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 122
    iget-object v0, p0, Lc8/exf;->inputStream:Ljava/io/InputStream;

    .line 123
    .local v0, "is":Ljava/io/InputStream;
    instance-of v2, v0, Ljava/io/FileInputStream;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    new-instance v2, Lc8/bxf;

    iget v3, p0, Lc8/exf;->length:I

    iget-object v4, p0, Lc8/exf;->resourceValue:Landroid/util/TypedValue;

    invoke-direct {v2, v0, v3, v4}, Lc8/bxf;-><init>(Ljava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 135
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 126
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->bytesPoolBuilder()Lc8/tvf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v1

    .line 127
    .local v1, "pool":Lc8/JNf;
    if-nez p1, :cond_2

    .line 128
    new-array v2, v4, [I

    const/4 v3, 0x0

    iget v4, p0, Lc8/exf;->length:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/pwf;->readBytes(Ljava/io/InputStream;Lc8/JNf;[I)Lc8/bxf;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {v0, v1, p1}, Lc8/pwf;->readBytes(Ljava/io/InputStream;Lc8/JNf;Lc8/yxf;)V

    .line 131
    invoke-virtual {p1}, Lc8/yxf;->getEncodeData()Lc8/bxf;

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "pool":Lc8/JNf;
    :cond_3
    iget v2, p0, Lc8/exf;->type:I

    if-ne v2, v4, :cond_4

    .line 135
    new-instance v2, Lc8/bxf;

    iget-object v3, p0, Lc8/exf;->bytes:[B

    iget v4, p0, Lc8/exf;->offset:I

    iget v5, p0, Lc8/exf;->length:I

    invoke-direct {v2, v3, v4, v5}, Lc8/bxf;-><init>([BII)V

    goto :goto_0

    .line 138
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized response type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/exf;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget-boolean v2, p0, Lc8/bxf;->mReleased:Z

    if-nez v2, :cond_0

    iget v2, p0, Lc8/bxf;->length:I

    if-gtz v2, :cond_2

    :cond_0
    move v0, v1

    .line 72
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    iget v2, p0, Lc8/bxf;->type:I

    if-ne v2, v0, :cond_4

    .line 70
    iget-object v2, p0, Lc8/bxf;->bytes:[B

    if-eqz v2, :cond_3

    iget v2, p0, Lc8/bxf;->offset:I

    if-ltz v2, :cond_3

    iget v2, p0, Lc8/bxf;->offset:I

    iget v3, p0, Lc8/bxf;->length:I

    if-lt v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 72
    :cond_4
    iget-object v2, p0, Lc8/bxf;->inputStream:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lc8/bxf;->release(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized release(Z)V
    .locals 6
    .param p1, "fromUser"    # Z

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/bxf;->mReleased:Z

    if-eqz v1, :cond_1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string/jumbo v1, "EncodedData"

    const-string/jumbo v2, "has been released when trying to release it[type: %d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lc8/bxf;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 84
    :try_start_1
    const-string/jumbo v1, "EncodedData"

    const-string/jumbo v2, "final release called from finalize[type: %d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lc8/bxf;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_2
    iget v1, p0, Lc8/bxf;->type:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/bxf;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :pswitch_1
    :try_start_2
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->bytesPoolBuilder()Lc8/tvf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v0

    .local v0, "bytesPool":Lc8/JNf;
    if-eqz v0, :cond_3

    .line 91
    iget-object v1, p0, Lc8/bxf;->bytes:[B

    invoke-interface {v0, v1}, Lc8/JNf;->release([B)V

    goto :goto_1

    .line 95
    .end local v0    # "bytesPool":Lc8/JNf;
    :pswitch_2
    iget-object v1, p0, Lc8/bxf;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 97
    :try_start_3
    iget-object v1, p0, Lc8/bxf;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
