.class public Lc8/mUb;
.super Ljava/lang/Object;
.source "MotuVideoPlayerMonitor.java"


# static fields
.field private static isRegistAdPlayError:Ljava/lang/Boolean;

.field private static isRegistBeforePlayError:Ljava/lang/Boolean;

.field private static isRegistFluentError:Ljava/lang/Boolean;

.field private static isRegistImpairmentError:Ljava/lang/Boolean;

.field private static isRegistOnePlayError:Ljava/lang/Boolean;

.field private static isRegistPlayingError:Ljava/lang/Boolean;

.field private static isRegistRequestError:Ljava/lang/Boolean;

.field private static isRegistSmoothSwitchError:Ljava/lang/Boolean;

.field private static isRegistVIPError:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistVIPError:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistRequestError:Ljava/lang/Boolean;

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistBeforePlayError:Ljava/lang/Boolean;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistPlayingError:Ljava/lang/Boolean;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistImpairmentError:Ljava/lang/Boolean;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistFluentError:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistSmoothSwitchError:Ljava/lang/Boolean;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistOnePlayError:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/mUb;->isRegistAdPlayError:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitAdPlayErrinfoStatistics(Lc8/pUb;Lc8/oUb;)V
    .locals 11
    .param p0, "info"    # Lc8/pUb;
    .param p1, "statisticsInfo"    # Lc8/oUb;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string/jumbo v6, "VPM"

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "adErrInfo is null"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 50
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 51
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 52
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 53
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 54
    const-string/jumbo v6, "adErrorType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 55
    const-string/jumbo v6, "adErrorCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 56
    const-string/jumbo v6, "adType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 57
    const-string/jumbo v6, "adPhase"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 58
    const-string/jumbo v6, "isOnline"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 59
    const-string/jumbo v6, "isVip"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 60
    const-string/jumbo v6, "isReqAd"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 61
    iget-object v6, p0, Lc8/pUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc8/pUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 62
    iget-object v6, p0, Lc8/pUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 68
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "adFailExposure"

    aput-object v7, v6, v10

    const-string/jumbo v7, "adCount"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, "adFailCount"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 73
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/oUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lc8/oUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 74
    iget-object v6, p1, Lc8/oUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 80
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    sget-object v6, Lc8/mUb;->isRegistAdPlayError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 81
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "adPlay"

    invoke-static {v6, v7, v4, v0, v9}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 82
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistAdPlayError:Ljava/lang/Boolean;

    .line 86
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 87
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/pUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p1}, Lc8/oUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 91
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "adPlay"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitFluentStatistic(Lc8/wUb;Lc8/xUb;)V
    .locals 10
    .param p0, "fluentInfo"    # Lc8/wUb;
    .param p1, "statisticsInfo"    # Lc8/xUb;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 327
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 328
    :cond_0
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "fluentInfo or statisticsInfo is null"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 334
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 335
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 336
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 337
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 338
    const-string/jumbo v6, "playType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 339
    iget-object v6, p0, Lc8/wUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/wUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 340
    iget-object v6, p0, Lc8/wUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 345
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "playFluentSlices"

    aput-object v7, v6, v9

    const-string/jumbo v7, "playSlices"

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 349
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/xUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lc8/xUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 350
    iget-object v6, p1, Lc8/xUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 351
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 356
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lc8/mUb;->isRegistFluentError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 357
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "fluent"

    invoke-static {v6, v7, v4, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 358
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistFluentError:Ljava/lang/Boolean;

    .line 361
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 362
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/wUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 363
    invoke-virtual {p1}, Lc8/xUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 365
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "fluent"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitImpairmentStatistic(Lc8/BUb;Lc8/yUb;)V
    .locals 10
    .param p0, "baseInfo"    # Lc8/BUb;
    .param p1, "statisticsInfo"    # Lc8/yUb;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 279
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 280
    :cond_0
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "baseInfo or statisticsInfo is null"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 286
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 287
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 288
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 289
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 290
    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 291
    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 296
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "impairmentDuration"

    aput-object v7, v6, v9

    const-string/jumbo v7, "impairmentInterval"

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 300
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/yUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lc8/yUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 301
    iget-object v6, p1, Lc8/yUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 307
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lc8/mUb;->isRegistImpairmentError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 308
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "impairment"

    invoke-static {v6, v7, v4, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 309
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistImpairmentError:Ljava/lang/Boolean;

    .line 313
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 314
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/BUb;->toBaseMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 315
    invoke-virtual {p1}, Lc8/yUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 317
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "impairment"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitPlayErrInfoStatistics(Lc8/sUb;Lc8/tUb;Ljava/lang/Boolean;)V
    .locals 11
    .param p0, "info"    # Lc8/sUb;
    .param p1, "statisticsInfo"    # Lc8/tUb;
    .param p2, "isPlaying"    # Ljava/lang/Boolean;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 212
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 213
    :cond_0
    const-string/jumbo v7, "VPM"

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "VideoPlayErrInfo is null"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 219
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v7, "mediaType"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 220
    const-string/jumbo v7, "videoFormat"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 221
    const-string/jumbo v7, "sourceIdentity"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 222
    const-string/jumbo v7, "playerCore"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 223
    const-string/jumbo v7, "isSuccess"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 224
    const-string/jumbo v7, "videoErrorCode"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 225
    const-string/jumbo v7, "videoErrorMsg"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 226
    const-string/jumbo v7, "bussinessType"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 227
    const-string/jumbo v7, "playWay"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 228
    const-string/jumbo v7, "videoPlayType"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 229
    const-string/jumbo v7, "cdnIP"

    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 230
    iget-object v7, p0, Lc8/sUb;->extInfoData:Ljava/util/Map;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lc8/sUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 231
    iget-object v7, p0, Lc8/sUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 236
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    .line 237
    .local v5, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v7, p1, Lc8/tUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lc8/tUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 238
    iget-object v7, p1, Lc8/tUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 245
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    const-string/jumbo v4, "playing"

    .line 247
    .local v4, "monitorPointer":Ljava/lang/String;
    sget-object v7, Lc8/mUb;->isRegistPlayingError:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 248
    const-string/jumbo v7, "vpm"

    invoke-static {v7, v4, v5, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lc8/mUb;->isRegistPlayingError:Ljava/lang/Boolean;

    .line 260
    :cond_4
    :goto_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 261
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/sUb;->toMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 262
    invoke-virtual {p1}, Lc8/tUb;->toMap()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v6

    .line 264
    .local v6, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v7, "vpm"

    invoke-static {v7, v4, v1, v6}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 252
    .end local v1    # "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v4    # "monitorPointer":Ljava/lang/String;
    .end local v6    # "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_5
    const-string/jumbo v4, "beforePlay"

    .line 253
    .restart local v4    # "monitorPointer":Ljava/lang/String;
    sget-object v7, Lc8/mUb;->isRegistBeforePlayError:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 254
    const-string/jumbo v7, "vpm"

    invoke-static {v7, v4, v5, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 255
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lc8/mUb;->isRegistBeforePlayError:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static commitPlayErrInfoStatistics(Lc8/sUb;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "info"    # Lc8/sUb;
    .param p1, "isPlaying"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lc8/tUb;

    invoke-direct {v0}, Lc8/tUb;-><init>()V

    .line 270
    .local v0, "statisticsInfo":Lc8/tUb;
    invoke-static {p0, v0, p1}, Lc8/mUb;->commitPlayErrInfoStatistics(Lc8/sUb;Lc8/tUb;Ljava/lang/Boolean;)V

    .line 271
    return-void
.end method

.method public static commitPlayKeyStatistics(Lc8/jUb;Lc8/kUb;)V
    .locals 12
    .param p0, "mediaInfo"    # Lc8/jUb;
    .param p1, "statisticsInfo"    # Lc8/kUb;

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 422
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 423
    :cond_0
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "mediaInfo,mediaInfo"

    aput-object v8, v7, v10

    const-string/jumbo v8, "StatisticsInfo"

    aput-object v8, v7, v9

    aput-object p1, v7, v11

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 428
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 429
    const-string/jumbo v6, "videoWidth"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 430
    const-string/jumbo v6, "videoHeight"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 431
    const-string/jumbo v6, "videoCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 432
    const-string/jumbo v6, "screenSize"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 433
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 434
    const-string/jumbo v6, "beforeDurationAdtype"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 435
    const-string/jumbo v6, "playType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 436
    const-string/jumbo v6, "playWay"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 437
    const-string/jumbo v6, "videoProtocol"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 438
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 439
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 440
    iget-object v6, p0, Lc8/jUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/jUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 441
    iget-object v6, p0, Lc8/jUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 442
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 447
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x13

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "adPlayDuration"

    aput-object v7, v6, v10

    const-string/jumbo v7, "videoPlayDuration"

    aput-object v7, v6, v9

    const-string/jumbo v7, "bufferLatency"

    aput-object v7, v6, v11

    const-string/jumbo v7, "videoFirstFrameDuration"

    aput-object v7, v6, v8

    const/4 v7, 0x4

    const-string/jumbo v8, "videoFrameRate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "avgVideoBitrate"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "avgKeyFrameSize"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "impairmentFrequency"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "impairmentDuration"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, "impairmentDegree"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "duration"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "adUrlReqTime"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, "adPlayerPrepare"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "videoUrlReqTime"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string/jumbo v8, "videoPlayerPrepare"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string/jumbo v8, "seekDuration"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string/jumbo v8, "cdnUrlReqDuration"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string/jumbo v8, "seekCount"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string/jumbo v8, "videoLocalCacheSize"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 469
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/kUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lc8/kUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 470
    iget-object v6, p1, Lc8/kUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 471
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 476
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lc8/mUb;->isRegistOnePlayError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 477
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "onePlay"

    invoke-static {v6, v7, v4, v0, v9}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 478
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistOnePlayError:Ljava/lang/Boolean;

    .line 481
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 482
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/jUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 483
    invoke-virtual {p1}, Lc8/kUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 485
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "onePlay"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitRequestErrInfoStatistics(Lc8/qUb;)V
    .locals 1
    .param p0, "info"    # Lc8/qUb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lc8/rUb;

    invoke-direct {v0}, Lc8/rUb;-><init>()V

    .line 202
    .local v0, "statisticsInfo":Lc8/rUb;
    invoke-static {p0, v0}, Lc8/mUb;->commitRequestErrInfoStatistics(Lc8/qUb;Lc8/rUb;)V

    .line 203
    return-void
.end method

.method public static commitRequestErrInfoStatistics(Lc8/qUb;Lc8/rUb;)V
    .locals 10
    .param p0, "info"    # Lc8/qUb;
    .param p1, "statisticsInfo"    # Lc8/rUb;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 155
    :cond_0
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "requestErrInfo is null"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 161
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 162
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 163
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 164
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 165
    const-string/jumbo v6, "isSuccess"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 166
    const-string/jumbo v6, "requestErrorCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 167
    const-string/jumbo v6, "requestErrorMsg"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 168
    const-string/jumbo v6, "videoPlayType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 169
    const-string/jumbo v6, "cdnIP"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 170
    const-string/jumbo v6, "playWay"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 171
    iget-object v6, p0, Lc8/qUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/qUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 172
    iget-object v6, p0, Lc8/qUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 177
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 178
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/rUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lc8/rUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 179
    iget-object v6, p1, Lc8/rUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 185
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lc8/mUb;->isRegistRequestError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 186
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "requestService"

    invoke-static {v6, v7, v4, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 187
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistRequestError:Ljava/lang/Boolean;

    .line 191
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 192
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/qUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 193
    invoke-virtual {p1}, Lc8/rUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 196
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "requestService"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitSmoothSwitchStatistics(Lc8/BUb;Lc8/CUb;)V
    .locals 10
    .param p0, "baseInfo"    # Lc8/BUb;
    .param p1, "statisticsInfo"    # Lc8/CUb;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 374
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 375
    :cond_0
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "baseInfo or statisticsInfo is null"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 381
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 382
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 383
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 384
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 385
    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 386
    iget-object v6, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 387
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 391
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "smoothSwitchSuccess"

    aput-object v7, v6, v9

    const-string/jumbo v7, "smoothSwitchCounts"

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 395
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/CUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lc8/CUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 396
    iget-object v6, p1, Lc8/CUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 397
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 402
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lc8/mUb;->isRegistSmoothSwitchError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 403
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "smoothSwitch"

    invoke-static {v6, v7, v4, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 404
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistSmoothSwitchError:Ljava/lang/Boolean;

    .line 407
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 408
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/BUb;->toBaseMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 409
    invoke-virtual {p1}, Lc8/CUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 411
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "smoothSwitch"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public static commitVideoVIPErrInfoStatistics(Lc8/uUb;)V
    .locals 1
    .param p0, "info"    # Lc8/uUb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lc8/vUb;

    invoke-direct {v0}, Lc8/vUb;-><init>()V

    .line 146
    .local v0, "statisticsInfo":Lc8/vUb;
    invoke-static {p0, v0}, Lc8/mUb;->commitVideoVIPErrInfoStatistics(Lc8/uUb;Lc8/vUb;)V

    .line 147
    return-void
.end method

.method public static commitVideoVIPErrInfoStatistics(Lc8/uUb;Lc8/vUb;)V
    .locals 10
    .param p0, "info"    # Lc8/uUb;
    .param p1, "statisticsInfo"    # Lc8/vUb;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string/jumbo v6, "VPM"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "videoErrInfo is null"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 107
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 108
    const-string/jumbo v6, "videoFormat"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 109
    const-string/jumbo v6, "sourceIdentity"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 110
    const-string/jumbo v6, "playerCore"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 111
    const-string/jumbo v6, "isSuccess"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 112
    const-string/jumbo v6, "VIPErrorCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 113
    const-string/jumbo v6, "VIPErrorMsg"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 114
    iget-object v6, p0, Lc8/uUb;->extInfoData:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc8/uUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 115
    iget-object v6, p0, Lc8/uUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 121
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 122
    .local v4, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p1, Lc8/vUb;->extStatisticsData:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lc8/vUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 123
    iget-object v6, p1, Lc8/vUb;->extStatisticsData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 129
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    sget-object v6, Lc8/mUb;->isRegistVIPError:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 130
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "vipError"

    invoke-static {v6, v7, v4, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 131
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lc8/mUb;->isRegistVIPError:Ljava/lang/Boolean;

    .line 135
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 136
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {p0}, Lc8/uUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 137
    invoke-virtual {p1}, Lc8/vUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 140
    .local v5, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "vpm"

    const-string/jumbo v7, "vipError"

    invoke-static {v6, v7, v1, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method
