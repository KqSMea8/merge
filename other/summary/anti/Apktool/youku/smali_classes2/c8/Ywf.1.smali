.class public Lc8/Ywf;
.super Lc8/ryf;
.source "DecodeProducer.java"

# interfaces
.implements Lc8/yyf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ryf",
        "<",
        "Lc8/axf;",
        "Lc8/cxf;",
        "Lc8/Jxf;",
        ">;",
        "Lc8/yyf",
        "<",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/ryf;-><init>(II)V

    .line 41
    return-void
.end method

.method private dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    .locals 6
    .param p2, "isLast"    # Z
    .param p3, "encoded"    # Lc8/cxf;
    .param p4, "exception"    # Lcom/taobao/phenix/decode/DecodeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/cxf;",
            "Lcom/taobao/phenix/decode/DecodeException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    if-eqz p2, :cond_1

    .line 219
    move-object v0, p4

    .line 220
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Lxf;->isLocalUri()Z

    move-result v1

    invoke-virtual {p4, v1}, Lcom/taobao/phenix/decode/DecodeException;->setLocalUri(Z)V

    .line 221
    if-eqz p3, :cond_0

    .line 222
    iget-boolean v1, p3, Lc8/cxf;->fromDisk:Z

    invoke-virtual {p4, v1}, Lcom/taobao/phenix/decode/DecodeException;->dataFromDisk(Z)V

    .line 223
    iget-boolean v1, p3, Lc8/cxf;->fromDisk:Z

    if-nez v1, :cond_0

    iget-boolean v1, p3, Lc8/cxf;->completed:Z

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lc8/cxf;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v2, "Decoder"

    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    const-string/jumbo v3, "actual decode error=%s, convert to error=IncompleteContentError"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-static {v2, v1, v3, v4}, Lc8/qwf;->w(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    .end local v0    # "throwable":Ljava/lang/Throwable;
    invoke-direct {v0}, Lcom/taobao/phenix/loader/network/IncompleteResponseException;-><init>()V

    .line 228
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {p1, v0}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    .line 232
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string/jumbo v2, "Decoder"

    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    const-string/jumbo v3, "intermediate result decode error=%s, request not failed yet"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-static {v2, v1, v3, v4}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private inspectEncodedImage(Lc8/cxf;)Lc8/cxf;
    .locals 5
    .param p1, "orgEncoded"    # Lc8/cxf;

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->getEncodedDataInspector()Lc8/Zwf;

    move-result-object v0

    .line 51
    .local v0, "inspector":Lc8/Zwf;
    if-nez v0, :cond_1

    .line 60
    .end local p1    # "orgEncoded":Lc8/cxf;
    :cond_0
    :goto_0
    return-object p1

    .line 54
    .restart local p1    # "orgEncoded":Lc8/cxf;
    :cond_1
    iget-object v2, p1, Lc8/cxf;->path:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lc8/Zwf;->inspectEncodedData(Ljava/lang/String;Lc8/bxf;)Lc8/bxf;

    move-result-object v1

    .line 55
    .local v1, "newEncoded":Lc8/bxf;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc8/bxf;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    const-string/jumbo v4, "inspected data cannot be null or not available!"

    invoke-static {v2, v4}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    if-eq v1, p1, :cond_0

    .line 60
    iget v2, p1, Lc8/cxf;->sizeLevel:I

    invoke-virtual {p1, v1, v2}, Lc8/cxf;->cloneExcept(Lc8/bxf;I)Lc8/cxf;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc8/cxf;->forceNoCache(Z)Lc8/cxf;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/cxf;)V
    .locals 30
    .param p2, "isLast"    # Z
    .param p3, "orgEncoded"    # Lc8/cxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/cxf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/Jxf;

    .line 66
    .local v18, "request":Lc8/Jxf;
    const/4 v14, 0x0

    .line 67
    .local v14, "newEncoded":Lc8/cxf;
    const/4 v11, 0x1

    .line 70
    .local v11, "isDecodeFailed":Z
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->isAvailable()Z

    move-result v25

    if-nez v25, :cond_3

    .line 71
    :cond_0
    new-instance v25, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v26, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-direct/range {v25 .. v26}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Ywf;->dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    .line 204
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p2}, Lc8/Ywf;->onConsumeStart(Lc8/oyf;Z)V

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lc8/Ywf;->inspectEncodedImage(Lc8/cxf;)Lc8/cxf;

    move-result-object v14

    .line 78
    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z

    move-result v8

    .line 79
    .local v8, "enableAshmem":Z
    new-instance v16, Lc8/ouf;

    invoke-direct/range {v16 .. v16}, Lc8/ouf;-><init>()V

    .line 80
    .local v16, "options":Lc8/ouf;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->justDecodeBounds:Z

    .line 81
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->allowDegrade2System:Z

    .line 82
    iget-object v0, v14, Lc8/cxf;->resourceValue:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lc8/ouf;->resourceValue:Landroid/util/TypedValue;

    .line 83
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->isForcedAnimationStatic()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->forceStaticIfAnimation:Z

    .line 86
    iget v0, v14, Lc8/cxf;->type:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 87
    new-instance v21, Lc8/Luf;

    iget-object v0, v14, Lc8/cxf;->bytes:[B

    move-object/from16 v25, v0

    iget v0, v14, Lc8/cxf;->offset:I

    move/from16 v26, v0

    iget v0, v14, Lc8/cxf;->length:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lc8/Luf;-><init>([BII)V

    .line 99
    .local v21, "ris":Lc8/Ouf;
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lc8/nuf;->decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;

    .line 100
    invoke-virtual/range {v21 .. v21}, Lc8/Ouf;->rewind()V

    .line 101
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lc8/cxf;->setMimeType(Lc8/Yuf;)V

    .line 103
    if-eqz p2, :cond_4

    .line 104
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v25

    invoke-virtual {v14}, Lc8/cxf;->getMimeType()Lc8/Yuf;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lc8/Kxf;->setCompressFormat(Lc8/Yuf;)V

    .line 108
    :cond_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Lc8/nuf;->preferInputType(Lc8/Ouf;Lc8/Yuf;Z)I

    move-result v10

    .line 109
    .local v10, "firstType":I
    invoke-virtual/range {v21 .. v21}, Lc8/Ouf;->getInputType()I

    move-result v25

    move/from16 v0, v25

    if-eq v10, v0, :cond_6

    .line 110
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v10, v0, :cond_5

    .line 111
    invoke-virtual/range {v21 .. v21}, Lc8/Ouf;->back2StreamType()V

    .line 113
    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_6

    .line 114
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/ixf;->bytesPoolBuilder()Lc8/tvf;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v17

    .line 115
    .local v17, "pool":Lc8/JNf;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget v0, v14, Lc8/cxf;->length:I

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lc8/pwf;->readBytes(Ljava/io/InputStream;Lc8/JNf;[I)Lc8/bxf;

    move-result-object v9

    .line 116
    .local v9, "encodedData":Lc8/bxf;
    new-instance v21, Lc8/Luf;

    .end local v21    # "ris":Lc8/Ouf;
    iget-object v0, v9, Lc8/bxf;->bytes:[B

    move-object/from16 v25, v0

    iget v0, v9, Lc8/bxf;->offset:I

    move/from16 v26, v0

    iget v0, v9, Lc8/bxf;->length:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lc8/Luf;-><init>([BII)V

    .line 121
    .end local v9    # "encodedData":Lc8/bxf;
    .end local v17    # "pool":Lc8/JNf;
    .restart local v21    # "ris":Lc8/Ouf;
    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lc8/Yuf;->isAnimation()Z

    move-result v25

    if-nez v25, :cond_d

    .line 122
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->getMaxViewWidth()I

    move-result v13

    .line 123
    .local v13, "maxWidth":I
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->getMaxViewHeight()I

    move-result v12

    .line 124
    .local v12, "maxHeight":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->resourceValue:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_9

    invoke-virtual/range {v16 .. v16}, Lc8/ouf;->isSizeAvailable()Z

    move-result v25

    if-eqz v25, :cond_9

    if-nez v13, :cond_8

    if-eqz v12, :cond_9

    .line 125
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v13, v12, v0, v1}, Lc8/owf;->getResizedDimension(IIII)I

    move-result v7

    .line 126
    .local v7, "desiredWidth":I
    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v12, v13, v0, v1}, Lc8/owf;->getResizedDimension(IIII)I

    move-result v6

    .line 127
    .local v6, "desiredHeight":I
    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7, v6}, Lc8/owf;->findBestSampleSize(IIII)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Lc8/ouf;->sampleSize:I

    .line 128
    const-string/jumbo v25, "Decoder"

    const-string/jumbo v26, "limit with maxSize, sampleSize=%d, maxSize=%dx%d, actualSize=%dx%d"

    const/16 v27, 0x5

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->sampleSize:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .end local v6    # "desiredHeight":I
    .end local v7    # "desiredWidth":I
    :cond_9
    iget v0, v14, Lc8/cxf;->type:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 132
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lc8/ouf;->outPadding:Landroid/graphics/Rect;

    .line 134
    :cond_a
    if-eqz v8, :cond_b

    .line 135
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->enableAshmem:Z

    .line 136
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->allowDegrade2NoAshmem:Z

    .line 139
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->resourceValue:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_d

    invoke-static {}, Lc8/nuf;->isInBitmapSupported()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/ixf;->bitmapPoolBuilder()Lc8/qvf;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/qvf;->build()Lc8/lvf;

    move-result-object v17

    .local v17, "pool":Lc8/lvf;
    if-eqz v17, :cond_d

    .line 141
    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->sampleSize:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 142
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lc8/nuf;->decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;

    .line 143
    invoke-virtual/range {v21 .. v21}, Lc8/Ouf;->rewind()V

    .line 145
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v26, v0

    sget-object v27, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lc8/lvf;->getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    .line 146
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->allowDegrade2NoInBitmap:Z

    .line 147
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v26

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/Kxf;->onBitmapPoolLookedUp(Z)V

    .line 152
    .end local v12    # "maxHeight":I
    .end local v13    # "maxWidth":I
    .end local v17    # "pool":Lc8/lvf;
    :cond_d
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lc8/ouf;->justDecodeBounds:Z

    .line 154
    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->isCancelled()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 155
    const-string/jumbo v25, "Decoder"

    const-string/jumbo v26, "request is cancelled before image decoding"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->onCancellation()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v11, :cond_e

    if-eqz v14, :cond_e

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_e
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 89
    .end local v10    # "firstType":I
    .end local v21    # "ris":Lc8/Ouf;
    :cond_f
    :try_start_2
    iget-object v0, v14, Lc8/cxf;->inputStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    .line 91
    .local v22, "stream":Ljava/io/InputStream;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/io/FileInputStream;

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 92
    new-instance v21, Lc8/Muf;

    check-cast v22, Ljava/io/FileInputStream;

    .end local v22    # "stream":Ljava/io/InputStream;
    const/high16 v25, 0x100000

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lc8/Muf;-><init>(Ljava/io/FileInputStream;I)V

    .restart local v21    # "ris":Lc8/Ouf;
    goto/16 :goto_1

    .line 94
    .end local v21    # "ris":Lc8/Ouf;
    .restart local v22    # "stream":Ljava/io/InputStream;
    :cond_10
    new-instance v21, Lc8/Nuf;

    const/high16 v25, 0x100000

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lc8/Nuf;-><init>(Ljava/io/InputStream;I)V

    .restart local v21    # "ris":Lc8/Ouf;
    goto/16 :goto_1

    .line 147
    .end local v22    # "stream":Ljava/io/InputStream;
    .restart local v10    # "firstType":I
    .restart local v12    # "maxHeight":I
    .restart local v13    # "maxWidth":I
    .restart local v17    # "pool":Lc8/lvf;
    :cond_11
    const/16 v25, 0x0

    goto :goto_2

    .line 162
    .end local v12    # "maxHeight":I
    .end local v13    # "maxWidth":I
    .end local v17    # "pool":Lc8/lvf;
    :cond_12
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/Jxf;->setPexodeOptions(Lc8/ouf;)V

    .line 163
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/Jxf;->registerCancelListener(Lc8/yyf;)Z

    .line 165
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lc8/nuf;->decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;

    move-result-object v19

    .line 167
    .local v19, "result":Lc8/puf;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/Jxf;->unregisterCancelListener(Lc8/yyf;)Z

    .line 168
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/Jxf;->setPexodeOptions(Lc8/ouf;)V

    .line 170
    const/16 v20, 0x0

    .line 171
    .local v20, "resultOk":Z
    const/4 v5, 0x0

    .line 172
    .local v5, "decodedImage":Lc8/axf;
    if-eqz v19, :cond_13

    .line 173
    new-instance v5, Lc8/axf;

    .end local v5    # "decodedImage":Lc8/axf;
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/puf;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/puf;->animated:Lc8/ruf;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v5, v14, v0, v1, v2}, Lc8/axf;-><init>(Lc8/cxf;Landroid/graphics/Bitmap;Lc8/ruf;Landroid/graphics/Rect;)V

    .line 174
    .restart local v5    # "decodedImage":Lc8/axf;
    invoke-virtual {v5}, Lc8/axf;->isAvailable()Z

    move-result v20

    .line 176
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ywf;->onConsumeFinish(Lc8/oyf;ZZ)V

    .line 178
    if-nez v20, :cond_15

    .line 179
    const-string/jumbo v25, "Decoder"

    const-string/jumbo v26, "decoded image not available, cancelled=%b, mimeType=%s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v18 .. v18}, Lc8/Jxf;->isCancelled()Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v25, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v26, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "result image null, WxH="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lc8/Ywf;->dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v11, :cond_14

    if-eqz v14, :cond_14

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_14
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 184
    :cond_15
    const/4 v11, 0x0

    .line 185
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v5, v1}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 186
    const-string/jumbo v25, "Decoder"

    const-string/jumbo v26, "decode complete, result=%s, WxH=%dx%d, mimeType=%s"

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v5, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outWidth:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ouf;->outHeight:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    if-eqz v11, :cond_16

    if-eqz v14, :cond_16

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_16
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 187
    .end local v5    # "decodedImage":Lc8/axf;
    .end local v8    # "enableAshmem":Z
    .end local v10    # "firstType":I
    .end local v16    # "options":Lc8/ouf;
    .end local v19    # "result":Lc8/puf;
    .end local v20    # "resultOk":Z
    .end local v21    # "ris":Lc8/Ouf;
    :catch_0
    move-exception v15

    .line 188
    .local v15, "oomErr":Ljava/lang/OutOfMemoryError;
    :try_start_4
    new-instance v25, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v26, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v15}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lc8/Ywf;->dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    if-eqz v11, :cond_17

    if-eqz v14, :cond_17

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_17
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 189
    .end local v15    # "oomErr":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v24

    .line 190
    .local v24, "unlinkErr":Ljava/lang/UnsatisfiedLinkError;
    :try_start_5
    new-instance v25, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v26, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lc8/Ywf;->dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    if-eqz v11, :cond_18

    if-eqz v14, :cond_18

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_18
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 191
    .end local v24    # "unlinkErr":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v23

    .line 192
    .local v23, "thr":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v25, "Decoder"

    const-string/jumbo v26, "unknown error, throwable=%s"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v23, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v25, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v26, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lc8/Ywf;->dispatchError(Lc8/oyf;ZLc8/cxf;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    if-eqz v11, :cond_19

    if-eqz v14, :cond_19

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_19
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_2

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    goto/16 :goto_0

    .line 196
    .end local v23    # "thr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v25

    if-eqz v11, :cond_1a

    if-eqz v14, :cond_1a

    .line 197
    invoke-virtual {v14}, Lc8/cxf;->release()V

    .line 200
    :cond_1a
    if-eqz p3, :cond_1b

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_1b

    .line 201
    invoke-virtual/range {p3 .. p3}, Lc8/cxf;->release()V

    :cond_1b
    throw v25
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 37
    check-cast p3, Lc8/cxf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Ywf;->consumeNewResult(Lc8/oyf;ZLc8/cxf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p3, Lc8/cxf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Ywf;->consumeNewResult(Lc8/oyf;ZLc8/cxf;)V

    return-void
.end method

.method public onCancel(Lc8/Jxf;)V
    .locals 7
    .param p1, "request"    # Lc8/Jxf;

    .prologue
    const/4 v6, 0x0

    .line 208
    const-string/jumbo v2, "Decoder"

    const-string/jumbo v3, "received cancellation"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Lc8/Jxf;->getPexodeOptions()Lc8/ouf;

    move-result-object v0

    .line 210
    .local v0, "options":Lc8/ouf;
    if-eqz v0, :cond_0

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lc8/Jxf;->setPexodeOptions(Lc8/ouf;)V

    .line 212
    invoke-virtual {v0}, Lc8/ouf;->requestCancel()Z

    move-result v1

    .line 213
    .local v1, "result":Z
    const-string/jumbo v2, "Decoder"

    const-string/jumbo v3, "cancelled image decoding, result=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, p1, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .end local v1    # "result":Z
    :cond_0
    return-void
.end method

.method public bridge synthetic onCancel(Lc8/zyf;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lc8/Jxf;

    invoke-virtual {p0, p1}, Lc8/Ywf;->onCancel(Lc8/Jxf;)V

    return-void
.end method
