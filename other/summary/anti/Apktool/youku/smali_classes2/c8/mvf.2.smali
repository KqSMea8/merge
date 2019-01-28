.class public Lc8/mvf;
.super Lc8/ryf;
.source "BitmapProcessProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ryf",
        "<",
        "Lc8/axf;",
        "Lc8/axf;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lc8/ryf;-><init>(II)V

    .line 26
    return-void
.end method

.method private compressScaledBitmap(Lc8/Jxf;Landroid/graphics/Bitmap;Lc8/cxf;)[B
    .locals 10
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "scaledBmp"    # Landroid/graphics/Bitmap;
    .param p3, "encodedImage"    # Lc8/cxf;

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "compressData":[B
    invoke-virtual {p3}, Lc8/cxf;->getMimeType()Lc8/Yuf;

    move-result-object v2

    .line 59
    .local v2, "mimeType":Lc8/Yuf;
    if-eqz v2, :cond_1

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2800

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 64
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Lc8/Wuf;->PNG:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lc8/Wuf;->PNG_A:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 82
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_0
    const-string/jumbo v6, "BitmapProcess"

    const-string/jumbo v7, "compress image with bitmap, result=%B, format=%s"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v5

    aput-object v2, v8, v4

    invoke-static {v6, p1, v7, v8}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-object v1

    .line 67
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    sget-object v3, Lc8/Wuf;->JPEG:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_3
    sget-object v3, Lc8/Wuf;->WEBP:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    invoke-static {v2}, Lc8/nuf;->canSystemSupport(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 73
    const-string/jumbo v3, "BitmapProcess"

    iget-object v6, p3, Lc8/cxf;->path:Ljava/lang/String;

    const-string/jumbo v7, "compress target bitmap into webp byte array"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object v3, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    invoke-virtual {v3, v2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    invoke-virtual {v3, v1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string/jumbo v3, "BitmapProcess"

    iget-object v6, p3, Lc8/cxf;->path:Ljava/lang/String;

    const-string/jumbo v7, "lost alpha-channel when compress bitmap[ARGB8888 WebP], API-LEVEL=%d"

    new-array v8, v4, [Ljava/lang/Object;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v3, v6, v7, v8}, Lc8/qwf;->wp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_5
    move v3, v5

    .line 82
    goto :goto_1
.end method

.method private scaleLargeBitmap(Landroid/graphics/Bitmap;Lc8/cxf;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "largeBmp"    # Landroid/graphics/Bitmap;
    .param p2, "encodedImage"    # Lc8/cxf;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 32
    .local v1, "actualW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 33
    .local v0, "actualH":I
    if-le v1, v0, :cond_0

    .line 34
    iget v3, p2, Lc8/cxf;->targetWidth:I

    .line 35
    .local v3, "outWidth":I
    mul-int v5, v0, v3

    div-int v2, v5, v1

    .line 42
    .local v2, "outHeight":I
    :goto_0
    if-gt v1, v3, :cond_1

    if-gt v0, v2, :cond_1

    .line 43
    const-string/jumbo v5, "BitmapProcess"

    iget-object v6, p2, Lc8/cxf;->path:Ljava/lang/String;

    const-string/jumbo v7, "skip to scale from large bitmap, target(%d) >= actual(%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/qwf;->ip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const/4 v5, 0x0

    .line 52
    :goto_1
    return-object v5

    .line 37
    .end local v2    # "outHeight":I
    .end local v3    # "outWidth":I
    :cond_0
    iget v2, p2, Lc8/cxf;->targetHeight:I

    .line 38
    .restart local v2    # "outHeight":I
    mul-int v5, v1, v2

    div-int v3, v5, v0

    .restart local v3    # "outWidth":I
    goto :goto_0

    .line 47
    :cond_1
    :try_start_0
    const-string/jumbo v5, "BitmapProcess"

    iget-object v6, p2, Lc8/cxf;->path:Ljava/lang/String;

    const-string/jumbo v7, "scale down from large bitmap, target(%d) < actual(%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 v5, 0x1

    invoke-static {p1, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 50
    :catch_0
    move-exception v4

    .line 51
    .local v4, "thr":Ljava/lang/Throwable;
    const-string/jumbo v5, "BitmapProcess"

    iget-object v6, p2, Lc8/cxf;->path:Ljava/lang/String;

    const-string/jumbo v7, "error happen when scaling bitmap, throwable=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/qwf;->wp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v5, 0x0

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
    .line 164
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/axf;)V
    .locals 11
    .param p2, "isLast"    # Z
    .param p3, "decodedImage"    # Lc8/axf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/axf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 124
    invoke-virtual {p3}, Lc8/axf;->getEncodedImage()Lc8/cxf;

    move-result-object v1

    .line 125
    .local v1, "encodedImage":Lc8/cxf;
    invoke-virtual {p3}, Lc8/axf;->isStaticBitmap()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v1, Lc8/cxf;->sizeLevel:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lc8/mvf;->resultImage(Lc8/oyf;Lc8/axf;Z)V

    .line 160
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    .line 132
    .local v3, "request":Lc8/Jxf;
    if-eqz p2, :cond_2

    .line 133
    invoke-virtual {p0, p1}, Lc8/mvf;->onConductStart(Lc8/oyf;)V

    .line 135
    :cond_2
    invoke-virtual {p3}, Lc8/axf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    .local v2, "largeBmp":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2, v1}, Lc8/mvf;->scaleLargeBitmap(Landroid/graphics/Bitmap;Lc8/cxf;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    .local v4, "scaledBmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 139
    const-string/jumbo v7, "BitmapProcess"

    const-string/jumbo v8, "scale bitmap, new size=%d, old size=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Lc8/owf;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v2}, Lc8/owf;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v3, v8, v9}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    if-eq v4, v2, :cond_3

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    :cond_3
    invoke-direct {p0, v3, v4, v1}, Lc8/mvf;->compressScaledBitmap(Lc8/Jxf;Landroid/graphics/Bitmap;Lc8/cxf;)[B

    move-result-object v0

    .line 146
    .local v0, "compressData":[B
    if-eqz v0, :cond_4

    array-length v7, v0

    if-lez v7, :cond_4

    .line 147
    invoke-virtual {v1}, Lc8/cxf;->release()V

    .line 148
    new-instance v7, Lc8/bxf;

    array-length v8, v0

    invoke-direct {v7, v0, v6, v8}, Lc8/bxf;-><init>([BII)V

    invoke-virtual {v1, v7, v5, v5}, Lc8/cxf;->cloneExcept(Lc8/bxf;IZ)Lc8/cxf;

    move-result-object v1

    .line 154
    :cond_4
    new-instance p3, Lc8/axf;

    .end local p3    # "decodedImage":Lc8/axf;
    invoke-direct {p3, v1, v4}, Lc8/axf;-><init>(Lc8/cxf;Landroid/graphics/Bitmap;)V

    .line 156
    .end local v0    # "compressData":[B
    .restart local p3    # "decodedImage":Lc8/axf;
    :cond_5
    if-eqz p2, :cond_6

    .line 157
    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {p0, p1, v5}, Lc8/mvf;->onConductFinish(Lc8/oyf;Z)V

    .line 159
    :cond_6
    invoke-virtual {p0, p1, p3, p2}, Lc8/mvf;->resultImage(Lc8/oyf;Lc8/axf;Z)V

    goto :goto_0

    :cond_7
    move v5, v6

    .line 157
    goto :goto_1
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/mvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/mvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method

.method public resultImage(Lc8/oyf;Lc8/axf;Z)V
    .locals 12
    .param p2, "decoded"    # Lc8/axf;
    .param p3, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;",
            "Lc8/axf;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Jxf;

    .line 88
    .local v6, "request":Lc8/Jxf;
    move-object v3, p2

    .line 89
    .local v3, "oldDecoded":Lc8/axf;
    invoke-virtual {p0, p1, p3}, Lc8/mvf;->onConsumeStart(Lc8/oyf;Z)V

    .line 90
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lc8/axf;->isStaticBitmap()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {p2}, Lc8/axf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    move-object v1, v2

    .line 94
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Lc8/Jxf;->getBitmapProcessors()[Lc8/ovf;

    move-result-object v5

    .line 95
    .local v5, "processors":[Lc8/ovf;
    if-eqz v5, :cond_2

    array-length v7, v5

    if-lez v7, :cond_2

    .line 96
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, v5, v7

    .line 97
    .local v4, "processor":Lc8/ovf;
    invoke-virtual {v6}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lc8/pvf;->getInstance()Lc8/pvf;

    move-result-object v10

    invoke-interface {v4, v9, v10, v1}, Lc8/ovf;->process(Ljava/lang/String;Lc8/nvf;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p2}, Lc8/axf;->release()V

    .line 100
    new-instance v7, Ljava/lang/Throwable;

    const-string/jumbo v8, "processed result bitmap cannot be null!"

    invoke-direct {v7, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "processor":Lc8/ovf;
    .end local v5    # "processors":[Lc8/ovf;
    :goto_1
    return-void

    .line 96
    .restart local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "processor":Lc8/ovf;
    .restart local v5    # "processors":[Lc8/ovf;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    .end local v4    # "processor":Lc8/ovf;
    :cond_1
    const-string/jumbo v7, "BitmapProcess"

    const-string/jumbo v8, "bitmap processors call, length=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v6, v8, v9}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_2
    if-eq v2, v1, :cond_3

    .line 108
    new-instance v0, Lc8/axf;

    invoke-virtual {p2}, Lc8/axf;->getEncodedImage()Lc8/cxf;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Lc8/axf;-><init>(Lc8/cxf;Landroid/graphics/Bitmap;)V

    .end local p2    # "decoded":Lc8/axf;
    .local v0, "decoded":Lc8/axf;
    move-object p2, v0

    .line 111
    .end local v0    # "decoded":Lc8/axf;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "processors":[Lc8/ovf;
    .restart local p2    # "decoded":Lc8/axf;
    :cond_3
    if-eq p2, v3, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, p1, v7, p3}, Lc8/mvf;->onConsumeFinish(Lc8/oyf;ZZ)V

    .line 112
    invoke-interface {p1, p2, p3}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 111
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method
