.class public Lcom/ut/mini/UTHybridHelper;
.super Ljava/lang/Object;
.source "UTHybridHelper.java"


# static fields
.field private static s_instance:Lcom/ut/mini/UTHybridHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/ut/mini/UTHybridHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTHybridHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 636
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 637
    check-cast v1, Ljava/lang/String;

    .line 641
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 642
    .local v0, "lHashCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 639
    .end local v0    # "lHashCode":I
    .end local v1    # "lPageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "urlPageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string/jumbo v0, ""

    .line 456
    .local v0, "pageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    move-object v0, p1

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    const-string/jumbo v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 461
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 463
    move-object v0, p2

    goto :goto_0

    .line 465
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ut/mini/UTHybridHelper;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ut/mini/UTHybridHelper;->s_instance:Lcom/ut/mini/UTHybridHelper;

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "nextPageUtparam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "h5url"    # Ljava/lang/String;
    .param p5, "nextPageUtparam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 17
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "h5url"    # Ljava/lang/String;
    .param p5, "nextPageUtparam"    # Ljava/lang/String;
    .param p6, "isH5UT2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v2

    .line 487
    .local v2, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-nez v2, :cond_1

    .line 488
    const/4 v5, 0x0

    .line 631
    :cond_0
    :goto_0
    return-object v5

    .line 492
    :cond_1
    const/4 v6, 0x0

    .line 493
    .local v6, "spm":Ljava/lang/String;
    const/4 v9, 0x0

    .line 495
    .local v9, "utparam":Ljava/lang/String;
    if-eqz p6, :cond_12

    .line 496
    const-string/jumbo v12, "spm-cnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 497
    .local v7, "spmcnt":Ljava/lang/String;
    const-string/jumbo v12, "utparam-cnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 498
    .local v10, "utparamcnt":Ljava/lang/String;
    const-string/jumbo v12, "spm-url"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spm":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 499
    .restart local v6    # "spm":Ljava/lang/String;
    const-string/jumbo v12, "utparam-url"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "utparam":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 503
    .restart local v9    # "utparam":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 504
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 505
    .local v4, "lUrl_h5":Landroid/net/Uri;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 506
    const-string/jumbo v12, "spm"

    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 508
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 509
    const-string/jumbo v12, "utparam"

    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 518
    .end local v4    # "lUrl_h5":Landroid/net/Uri;
    :cond_3
    :goto_1
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 519
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 520
    .local v3, "lUrl":Landroid/net/Uri;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 521
    const-string/jumbo v12, "spm"

    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 523
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 524
    const-string/jumbo v12, "utparam"

    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 543
    .end local v3    # "lUrl":Landroid/net/Uri;
    :cond_5
    :goto_2
    iget-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 544
    iput-object v6, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 546
    :cond_6
    iget-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 547
    iput-object v9, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 550
    :cond_7
    iget-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 551
    iput-object v7, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 552
    iput-object v6, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 554
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 556
    :cond_8
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 558
    iput-object v10, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 559
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v9, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 560
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 562
    iput-object v9, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 563
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 564
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 567
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTHybridHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    .line 572
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mLastCacheKey:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",mLastCacheKeySpmUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeySpmUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",mLastCacheKeyUtParam:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParam()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ut/mini/UTPageHitHelper;->getLastCacheKeyUtParamCnt()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper lPageStateObject:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    .end local v1    # "cacheKey":Ljava/lang/String;
    :cond_a
    if-eqz p6, :cond_13

    .line 582
    const-string/jumbo v12, "spm-pre"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 583
    .local v8, "spmpre":Ljava/lang/String;
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper spm-pre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 585
    iget-object v8, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 586
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper mSpmPre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    :cond_b
    const-string/jumbo v12, "utparam-pre"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 589
    .local v11, "utparampre":Ljava/lang/String;
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper utparam-pre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 591
    iget-object v11, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 592
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper mUtparamPre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    :cond_c
    :goto_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 611
    const-string/jumbo v12, "spm-cnt"

    invoke-interface {v5, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 614
    const-string/jumbo v12, "spm-url"

    invoke-interface {v5, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 617
    const-string/jumbo v12, "spm-pre"

    invoke-interface {v5, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 621
    const-string/jumbo v12, "utparam-cnt"

    invoke-interface {v5, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 624
    const-string/jumbo v12, "utparam-url"

    invoke-interface {v5, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 627
    const-string/jumbo v12, "utparam-pre"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 531
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spmcnt":Ljava/lang/String;
    .end local v8    # "spmpre":Ljava/lang/String;
    .end local v10    # "utparamcnt":Ljava/lang/String;
    .end local v11    # "utparampre":Ljava/lang/String;
    :cond_12
    const-string/jumbo v12, "spmcnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 532
    .restart local v7    # "spmcnt":Ljava/lang/String;
    const-string/jumbo v12, "utparamcnt"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 535
    .restart local v10    # "utparamcnt":Ljava/lang/String;
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 536
    .restart local v3    # "lUrl":Landroid/net/Uri;
    const-string/jumbo v12, "spm"

    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 537
    const-string/jumbo v12, "utparam"

    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto/16 :goto_2

    .line 595
    .end local v3    # "lUrl":Landroid/net/Uri;
    :cond_13
    const-string/jumbo v12, "spmpre"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 596
    .restart local v8    # "spmpre":Ljava/lang/String;
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper _spmpre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 598
    iget-object v8, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 599
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper mSpmPre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :cond_14
    const-string/jumbo v12, "utparampre"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 602
    .restart local v11    # "utparampre":Ljava/lang/String;
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper _utparampre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 604
    iget-object v11, v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 605
    const-string/jumbo v12, "h5Page"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UTHybridHelper mUtparamPre:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v8    # "spmpre":Ljava/lang/String;
    .end local v11    # "utparampre":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 529
    :catch_1
    move-exception v12

    goto/16 :goto_2

    :catch_2
    move-exception v12

    goto/16 :goto_1
.end method

.method private h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 14
    .param p1, "eventIdStr"    # Ljava/lang/String;
    .param p2, "oTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 285
    .local v3, "eventId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 289
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 292
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    const-string/jumbo v5, "urlpagename"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 297
    .local v10, "urlPageName":Ljava/lang/String;
    const-string/jumbo v5, "url"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 298
    .local v9, "url":Ljava/lang/String;
    invoke-direct {p0, v10, v9}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "pageName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 301
    :cond_2
    const-string/jumbo v5, "h5Ctrl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "pageName is null,return"

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    :cond_3
    const-string/jumbo v5, "logkey"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .local v4, "logKey":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-static {v4}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 308
    :cond_4
    const-string/jumbo v5, "h5Ctrl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "logkey is null,return"

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 312
    :cond_5
    const/4 v7, 0x0

    .line 313
    .local v7, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "utjstype"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 314
    .local v11, "utjstype":Ljava/lang/String;
    const-string/jumbo v5, "utjstype"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    if-eqz v11, :cond_6

    const-string/jumbo v5, "0"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    :cond_6
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 321
    :cond_7
    :goto_2
    new-instance v1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    .local v1, "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v8

    .line 323
    .local v8, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v8, :cond_9

    .line 324
    invoke-virtual {v1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 317
    .end local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_8
    const-string/jumbo v5, "1"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 318
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ut/mini/UTHybridHelper;->h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_2

    .line 326
    .restart local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_9
    const-string/jumbo v5, "h5Ctrl event error"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v2    # "pageName":Ljava/lang/String;
    .end local v4    # "logKey":Ljava/lang/String;
    .end local v7    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urlPageName":Ljava/lang/String;
    .end local v11    # "utjstype":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private h5Ctrl2(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v2, -0x1

    .line 94
    .local v2, "eventId":I
    :try_start_0
    const-string/jumbo v5, "funcId"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 95
    .local v7, "eventIdStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    .end local v7    # "eventIdStr":Ljava/lang/String;
    :goto_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 102
    const-string/jumbo v5, "url"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "pageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    :cond_2
    const-string/jumbo v4, "h5Ctrl"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "pageName is null,return"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string/jumbo v5, "logkey"

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    .local v3, "logKey":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-static {v3}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    :cond_4
    const-string/jumbo v4, "h5Ctrl"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "logkey is null,return"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_5
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    .local v0, "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v8

    .line 117
    .local v8, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v8, :cond_6

    .line 118
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 120
    :cond_6
    const-string/jumbo v4, "h5Ctrl event error"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "lOchb":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v3    # "logKey":Ljava/lang/String;
    .end local v8    # "lTracker":Lcom/ut/mini/UTTracker;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private h5CtrlParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 438
    :goto_0
    return-object v2

    .line 427
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v2, "lArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "logkeyargs"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "logkeyargs":Ljava/lang/String;
    const-string/jumbo v4, "_lka"

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    .end local v3    # "logkeyargs":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v4, "cna"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "cna":Ljava/lang/String;
    const-string/jumbo v4, "_cna"

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .end local v0    # "cna":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v4, "extendargs"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, "extendargs":Ljava/lang/String;
    const-string/jumbo v4, "_h5ea"

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    .end local v1    # "extendargs":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v4, "_ish5"

    const-string/jumbo v5, "1"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private h5CtrlParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 450
    :goto_0
    return-object v1

    .line 446
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v1, "lArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "extendargs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, "extendargs":Ljava/lang/String;
    const-string/jumbo v2, "_h5ea"

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .end local v0    # "extendargs":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v2, "_ish5"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 20
    .param p1, "opTime"    # Ljava/util/Date;
    .param p3, "webview"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/NBb;->d()V

    .line 200
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string/jumbo v7, "urlpagename"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 205
    .local v16, "urlPageName":Ljava/lang/String;
    const-string/jumbo v7, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 206
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/ut/mini/UTHybridHelper;->getH5PageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "pageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 210
    :cond_2
    const-string/jumbo v7, "h5Page"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "pageName is null,return"

    aput-object v19, v8, v18

    invoke-static {v7, v8}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_3
    const/4 v9, 0x0

    .line 216
    .local v9, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "utjstype"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 217
    .local v17, "utjstype":Ljava/lang/String;
    const-string/jumbo v7, "utjstype"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    if-eqz v17, :cond_4

    const-string/jumbo v7, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 219
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 227
    :cond_5
    :goto_1
    const/16 v5, 0x7d6

    .line 228
    .local v5, "lEventID":I
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 229
    const/16 v5, 0x7d1

    .line 232
    :cond_6
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "prePageName":Ljava/lang/String;
    new-instance v3, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    .local v3, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const/16 v7, 0x7d1

    if-ne v7, v5, :cond_9

    .line 237
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    .line 241
    .local v11, "lNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 242
    invoke-virtual {v3, v11}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 246
    :cond_7
    move-object/from16 v0, p3

    instance-of v7, v0, Landroid/app/Activity;

    if-eqz v7, :cond_9

    .line 247
    const-string/jumbo v14, ""

    .line 248
    .local v14, "nextPageUtparam":Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 249
    const-string/jumbo v7, "utparam-url"

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "nextPageUtparam":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 251
    .restart local v14    # "nextPageUtparam":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 260
    .end local v11    # "lNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "nextPageUtparam":Ljava/lang/String;
    :cond_9
    :try_start_0
    invoke-static {}, Lc8/Szb;->getInstance()Lc8/Szb;

    move-result-object v7

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Lc8/Szb;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "lTPKString":Ljava/lang/String;
    invoke-static {v12}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 263
    const-string/jumbo v7, "_tpk"

    invoke-virtual {v3, v7, v12}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v12    # "lTPKString":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v13

    .line 273
    .local v13, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v13, :cond_c

    .line 274
    invoke-virtual {v3}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 279
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    .end local v3    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v5    # "lEventID":I
    .end local v6    # "prePageName":Ljava/lang/String;
    .end local v13    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_b
    const-string/jumbo v7, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHybridHelper;->h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    goto/16 :goto_1

    .line 265
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v5    # "lEventID":I
    .restart local v6    # "prePageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 266
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 276
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_c
    const-string/jumbo v7, "h5Page event error"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string/jumbo v19, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v19, v8, v18

    invoke-static {v7, v8}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private h5Page2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 17
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/NBb;->d()V

    .line 126
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v1, "h5Page2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "dataMap is null or empty,return"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, "pageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    :cond_2
    const-string/jumbo v1, "h5Page2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "pageName is null,return"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "prePageName":Ljava/lang/String;
    const/16 v9, 0x7d6

    .line 140
    .local v9, "lEventID":I
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->isH52001(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    const/16 v9, 0x7d1

    .line 144
    :cond_4
    const/16 v1, 0x7d1

    if-ne v1, v9, :cond_9

    .line 145
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    .line 149
    .local v13, "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 150
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    :goto_1
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 157
    const-string/jumbo v1, "_h5url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "_h5url":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 159
    .local v6, "nextPageUtparam":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 160
    const-string/jumbo v1, "utparam-url"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "nextPageUtparam":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "nextPageUtparam":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 162
    invoke-direct/range {v1 .. v6}, Lcom/ut/mini/UTHybridHelper;->getUTPageStateObjectSpmMap(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    .end local v5    # "_h5url":Ljava/lang/String;
    .end local v6    # "nextPageUtparam":Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v7, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-direct/range {v7 .. v13}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    .local v7, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :try_start_0
    invoke-static {}, Lc8/Szb;->getInstance()Lc8/Szb;

    move-result-object v2

    const-string/jumbo v1, "_h5url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lc8/Szb;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 177
    .local v15, "lTPKString":Ljava/lang/String;
    invoke-static {v15}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 178
    const-string/jumbo v1, "_tpk"

    invoke-virtual {v7, v1, v15}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v15    # "lTPKString":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v16

    .line 188
    .local v16, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v16, :cond_a

    .line 189
    invoke-virtual {v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 194
    :goto_4
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper;->setH5Called(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    .end local v7    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v16    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_8
    move-object/from16 v13, p1

    goto :goto_1

    .line 166
    .end local v13    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v13, p1

    .restart local v13    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 180
    .restart local v7    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :catch_0
    move-exception v14

    .line 181
    .local v14, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v14, v2}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 191
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v16    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_a
    const-string/jumbo v1, "h5Page event error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v8, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private h5PageParseArgsWithAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 333
    :cond_0
    const/4 v4, 0x0

    .line 403
    :goto_0
    return-object v4

    .line 336
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v4, "lArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 339
    .local v16, "url":Ljava/lang/String;
    const-string/jumbo v18, "_h5url"

    if-nez v16, :cond_b

    const-string/jumbo v17, ""

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    if-eqz v16, :cond_2

    .line 346
    const/16 v17, 0x3f

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 347
    .local v9, "lUrlPos":I
    if-lez v9, :cond_2

    .line 348
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "lBaseUrlStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v5

    .line 350
    .local v5, "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 351
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v5    # "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lBaseUrlStr":Ljava/lang/String;
    .end local v9    # "lUrlPos":I
    :cond_2
    :goto_2
    if-eqz v16, :cond_d

    .line 363
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 364
    .local v8, "lUrl":Landroid/net/Uri;
    const-string/jumbo v17, "spm"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 365
    .local v13, "spm":Ljava/lang/String;
    if-eqz v13, :cond_c

    invoke-static {v13}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 366
    const-string/jumbo v17, "spm"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :goto_3
    const-string/jumbo v17, "scm"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, "scm":Ljava/lang/String;
    if-eqz v12, :cond_3

    invoke-static {v12}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 373
    const-string/jumbo v17, "scm"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_3
    const-string/jumbo v17, "pg1stepk"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 376
    .local v11, "pg1stepk":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-static {v11}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 377
    const-string/jumbo v17, "pg1stepk"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_4
    const-string/jumbo v17, "point"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    .local v7, "lPoint":Ljava/lang/String;
    invoke-static {v7}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 381
    const-string/jumbo v17, "issb"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v7    # "lPoint":Ljava/lang/String;
    .end local v8    # "lUrl":Landroid/net/Uri;
    .end local v11    # "pg1stepk":Ljava/lang/String;
    .end local v12    # "scm":Ljava/lang/String;
    .end local v13    # "spm":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string/jumbo v17, "spmcnt"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 387
    .local v14, "spmcnt":Ljava/lang/String;
    const-string/jumbo v17, "_spmcnt"

    if-nez v14, :cond_6

    const-string/jumbo v14, ""

    .end local v14    # "spmcnt":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v17, "spmpre"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 390
    .local v15, "spmpre":Ljava/lang/String;
    const-string/jumbo v17, "_spmpre"

    if-nez v15, :cond_7

    const-string/jumbo v15, ""

    .end local v15    # "spmpre":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v17, "lzsid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 393
    .local v10, "lzsid":Ljava/lang/String;
    const-string/jumbo v17, "_lzsid"

    if-nez v10, :cond_8

    const-string/jumbo v10, ""

    .end local v10    # "lzsid":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v17, "extendargs"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "eargs":Ljava/lang/String;
    const-string/jumbo v17, "_h5ea"

    if-nez v3, :cond_9

    const-string/jumbo v3, ""

    .end local v3    # "eargs":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v17, "cna"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    .local v2, "cna":Ljava/lang/String;
    const-string/jumbo v17, "_cna"

    if-nez v2, :cond_a

    const-string/jumbo v2, ""

    .end local v2    # "cna":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v17, "_ish5"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v17, v16

    .line 339
    goto/16 :goto_1

    .line 368
    .restart local v8    # "lUrl":Landroid/net/Uri;
    .restart local v13    # "spm":Ljava/lang/String;
    :cond_c
    const-string/jumbo v17, "spm"

    const-string/jumbo v18, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 384
    .end local v8    # "lUrl":Landroid/net/Uri;
    .end local v13    # "spm":Ljava/lang/String;
    :cond_d
    const-string/jumbo v17, "spm"

    const-string/jumbo v18, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :catch_0
    move-exception v17

    goto/16 :goto_2
.end method

.method private h5PageParseArgsWithOutAplus(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 419
    :goto_0
    return-object v1

    .line 411
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v1, "lArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "_h5url"

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string/jumbo v3, "extendargs"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, "extendargs":Ljava/lang/String;
    const-string/jumbo v3, "_h5ea"

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .end local v0    # "extendargs":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v3, "_ish5"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public h5UT(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 7
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 40
    :cond_0
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "dataMap is empty"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v3, "functype"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "funcType":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 48
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "funcType is null"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string/jumbo v3, "utjstype"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "lutjstype":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    const-string/jumbo v3, "h5UT"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "utjstype should be 1 or 0 or null"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v3, "functype"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 59
    .local v2, "opTime":Ljava/util/Date;
    const-string/jumbo v3, "2001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    invoke-direct {p0, v2, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page(Ljava/util/Date;Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_4
    invoke-direct {p0, v0, v2, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public h5UT2(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 5
    .param p2, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 68
    :cond_0
    const-string/jumbo v1, "h5UT"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dataMap is empty"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const-string/jumbo v1, "functype"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "funcType":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 76
    const-string/jumbo v1, "h5UT"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "funcType is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    const-string/jumbo v1, "funcId"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/UTHybridHelper;->h5Page2(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_4
    const-string/jumbo v1, "ctrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/ut/mini/UTHybridHelper;->h5Ctrl2(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
