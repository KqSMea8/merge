.class public Lc8/Lvf;
.super Lc8/Ivf;
.source "DiskCacheReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ivf",
        "<",
        "Lc8/cxf;",
        "Lc8/cxf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/Mvf;)V
    .locals 2
    .param p1, "supplier"    # Lc8/Mvf;

    .prologue
    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lc8/Ivf;-><init>(IILc8/Mvf;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/cxf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/Jxf;

    .line 22
    .local v14, "request":Lc8/Jxf;
    invoke-virtual {v14}, Lc8/Jxf;->isSkipCache()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    const/4 v11, 0x0

    .line 87
    :cond_0
    :goto_0
    return v11

    .line 26
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lc8/Lvf;->onConductStart(Lc8/oyf;)V

    .line 27
    invoke-virtual {v14}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v15

    .line 28
    .local v15, "urlInfo":Lc8/Lxf;
    invoke-virtual {v14}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v8

    .line 29
    .local v8, "cacheKey":Ljava/lang/String;
    invoke-virtual {v14}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v9

    .line 31
    .local v9, "catalog":I
    const/4 v5, 0x1

    new-array v13, v5, [I

    const/4 v6, 0x0

    .line 32
    invoke-virtual {v15}, Lc8/Lxf;->containsCdnSize()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v14}, Lc8/Jxf;->getAllowedSizeLevel()I

    move-result v5

    :goto_1
    aput v5, v13, v6

    .line 35
    .local v13, "matchSizeLevel":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8, v9, v13}, Lc8/Lvf;->getCacheResult(Lc8/Jxf;Ljava/lang/String;I[I)Lc8/bxf;

    move-result-object v3

    .line 36
    .local v3, "encodedData":Lc8/bxf;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lc8/bxf;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v10, 0x1

    .line 37
    .local v10, "isAvailable":Z
    :goto_2
    const/4 v12, 0x0

    .line 38
    .local v12, "isSecondary":Z
    invoke-virtual {v14}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "encodedPath":Ljava/lang/String;
    if-eqz v10, :cond_9

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    const/4 v11, 0x1

    .line 41
    .local v11, "isLast":Z
    :goto_3
    if-eqz v11, :cond_2

    invoke-virtual {v14}, Lc8/Jxf;->getProgressUpdateStep()I

    move-result v5

    if-lez v5, :cond_2

    .line 42
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lc8/oyf;->onProgressUpdate(F)V

    .line 44
    :cond_2
    invoke-virtual {v14}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v5

    invoke-virtual {v5, v10}, Lc8/Kxf;->onDiskCacheLookedUp(Z)V

    .line 45
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v6, "read result=%B, isLast=%b, key=%s, catalog=%d, sizeLevel=%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x2

    aput-object v8, v7, v16

    const/16 v16, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x4

    const/16 v17, 0x0

    aget v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    invoke-static {v5, v14, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-nez v10, :cond_4

    invoke-virtual {v14}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 49
    invoke-virtual {v14}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v14}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual {v14}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v9

    .line 52
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v13, v5

    .line 53
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8, v9, v13}, Lc8/Lvf;->getCacheResult(Lc8/Jxf;Ljava/lang/String;I[I)Lc8/bxf;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lc8/bxf;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v10, 0x1

    .line 55
    :goto_4
    if-eqz v10, :cond_3

    .line 56
    const/4 v12, 0x1

    .line 57
    invoke-virtual {v14}, Lc8/Jxf;->disableSecondary()V

    .line 59
    :cond_3
    invoke-virtual {v14}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v5

    invoke-virtual {v5, v10}, Lc8/Kxf;->onDiskCacheLookedUp(Z)V

    .line 60
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v6, "secondary read result=%B, isLast=false, secondaryKey=%s, secondaryCatalog=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x1

    aput-object v8, v7, v16

    const/16 v16, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    invoke-static {v5, v14, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lc8/Lvf;->onConductFinish(Lc8/oyf;Z)V

    .line 64
    if-eqz v10, :cond_6

    .line 66
    if-eqz v11, :cond_5

    .line 67
    invoke-virtual {v14}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v5

    iget v6, v3, Lc8/bxf;->length:I

    invoke-virtual {v5, v6}, Lc8/Kxf;->setSize(I)V

    .line 69
    :cond_5
    new-instance v2, Lc8/cxf;

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x1

    .line 74
    invoke-virtual {v15}, Lc8/Lxf;->getImageExtension()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lc8/cxf;-><init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;)V

    .line 76
    .local v2, "cacheResult":Lc8/cxf;
    iput-boolean v12, v2, Lc8/cxf;->isSecondary:Z

    .line 77
    invoke-virtual {v15}, Lc8/Lxf;->getWidth()I

    move-result v5

    iput v5, v2, Lc8/cxf;->targetWidth:I

    .line 78
    invoke-virtual {v15}, Lc8/Lxf;->getHeight()I

    move-result v5

    iput v5, v2, Lc8/cxf;->targetHeight:I

    .line 79
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 83
    .end local v2    # "cacheResult":Lc8/cxf;
    :cond_6
    if-nez v11, :cond_0

    invoke-virtual {v14}, Lc8/Jxf;->isOnlyCache()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    new-instance v5, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    const-string/jumbo v6, "DiskCache"

    invoke-direct {v5, v6}, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    .line 85
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 32
    .end local v3    # "encodedData":Lc8/bxf;
    .end local v4    # "encodedPath":Ljava/lang/String;
    .end local v10    # "isAvailable":Z
    .end local v11    # "isLast":Z
    .end local v12    # "isSecondary":Z
    .end local v13    # "matchSizeLevel":[I
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 36
    .restart local v3    # "encodedData":Lc8/bxf;
    .restart local v13    # "matchSizeLevel":[I
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 39
    .restart local v4    # "encodedPath":Ljava/lang/String;
    .restart local v10    # "isAvailable":Z
    .restart local v12    # "isSecondary":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 54
    .restart local v11    # "isLast":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4
.end method
