.class public Lc8/Twf;
.super Lc8/Rwf;
.source "TBImageFlowMonitor.java"

# interfaces
.implements Lc8/Hyf;
.implements Lc8/Ixf;
.implements Lc8/luf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_ALARM_POINT:Ljava/lang/String; = "BitmapPoolHit"

.field static final BUSINESS_DIMEN:Ljava/lang/String; = "bizName"

.field static final CDN_IP_PORT_DIMEN:Ljava/lang/String; = "cdnIpPort"

.field static final CONNECT_TYPE_DIMEN:Ljava/lang/String; = "connectType"

.field static final DATA_FROM_DIMEN:Ljava/lang/String; = "dataFrom"

.field static final DISK_CACHE_ALARM_POINT:Ljava/lang/String; = "DiskCacheHit"

.field static final DOMAIN_DIMEN:Ljava/lang/String; = "domain"

.field static final ERROR_ANALYSIS_CODE:Ljava/lang/String; = "analysisErrorCode"

.field static final ERROR_DESC:Ljava/lang/String; = "desc"

.field static final ERROR_DESC_PREFIX:Ljava/lang/String; = "analysisReason::"

.field static final ERROR_DIMEN:Ljava/lang/String; = "error"

.field static final ERROR_ORIGIN_CODE:Ljava/lang/String; = "originErrorCode"

.field static final ERROR_POINT:Ljava/lang/String; = "ImageError"

.field static final ERROR_URL:Ljava/lang/String; = "url"

.field static final FIRST_DATA_MEASURE:Ljava/lang/String; = "firstData"

.field static final FORCED_NO_ASHMEM_COUNTER_POINT:Ljava/lang/String; = "Forced2NoAshmem"

.field static final FORCED_NO_IN_BITMAP_COUNTER_POINT:Ljava/lang/String; = "Forced2NoInBitmap"

.field static final FORCED_SYSTEM_COUNTER_POINT:Ljava/lang/String; = "Forced2System"

.field static final FORCED_UNLIMITED_NETWORK_COUNTER_POINT:Ljava/lang/String; = "Forced2UnlimitedNetwork"

.field static final FORMAT_DIMEN:Ljava/lang/String; = "format"

.field static final HIT_CDN_CACHE_DIMEN:Ljava/lang/String; = "hitCdnCache"

.field static final MODULE_NAME:Ljava/lang/String; = "ImageLib_Rx"

.field static final MONITOR_POINT:Ljava/lang/String; = "ImageFlow"

.field static final NAVI_URL_DIMEN:Ljava/lang/String; = "naviUrl"

.field static final RESPONSE_CODE_MEASURE:Ljava/lang/String; = "responseCode"

.field static final SCHEDULE_FACTOR_DIMEN:Ljava/lang/String; = "scheduleFactor"

.field static final SEND_BEFORE_MEASURE:Ljava/lang/String; = "sendBefore"

.field static final SIZE_MEASURE:Ljava/lang/String; = "size"

.field static final SIZ_RANGE_DIMEN:Ljava/lang/String; = "sizeRange"

.field static final SPEED_MEASURE:Ljava/lang/String; = "speed"

.field private static final TAG:Ljava/lang/String; = "FlowMonitor"

.field static final WINDOW_NAME_DIMEN:Ljava/lang/String; = "windowName"


# instance fields
.field private mDegradationBits:I

.field private mNavInfoObtainer:Lc8/Nwf;

.field private final mNetworkAnalyzer:Lc8/Pwf;

.field private mNonCriticalErrorReporter:Lc8/Qwf;

.field private mNonCriticalReportCoverage:I

.field private mRegisteredException:Z

.field protected mStatCoverage:I


# direct methods
.method public constructor <init>(IILc8/Pwf;)V
    .locals 0
    .param p1, "statCoverage"    # I
    .param p2, "nonCriticalReportCoverage"    # I
    .param p3, "analyzer"    # Lc8/Pwf;

    .prologue
    .line 104
    invoke-direct {p0}, Lc8/Rwf;-><init>()V

    .line 105
    iput-object p3, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    .line 106
    iput p1, p0, Lc8/Twf;->mStatCoverage:I

    .line 107
    iput p2, p0, Lc8/Twf;->mNonCriticalReportCoverage:I

    .line 108
    return-void
.end method

.method private analyzeErrorCode(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 501
    instance-of v2, p1, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    if-eqz v2, :cond_0

    .line 502
    const-string/jumbo v2, "101010"

    .line 551
    .end local p1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v2

    .line 505
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, p1, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    if-eqz v2, :cond_3

    .line 506
    check-cast p1, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;->getHttpCode()I

    move-result v0

    .line 507
    .local v0, "code":I
    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 508
    const-string/jumbo v2, "102010"

    goto :goto_0

    .line 510
    :cond_1
    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_2

    .line 511
    const-string/jumbo v2, "103010"

    goto :goto_0

    .line 513
    :cond_2
    const-string/jumbo v2, "104000"

    goto :goto_0

    .line 516
    .end local v0    # "code":I
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    instance-of v2, p1, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 517
    check-cast v2, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    invoke-static {v2}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$200(Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;)I

    move-result v1

    .line 518
    .local v1, "exceededTimes":I
    if-lez v1, :cond_4

    if-ge v1, v4, :cond_4

    .line 519
    const-string/jumbo v2, "801010"

    goto :goto_0

    .line 521
    :cond_4
    if-lt v1, v4, :cond_5

    if-ge v1, v5, :cond_5

    .line 522
    const-string/jumbo v2, "801020"

    goto :goto_0

    .line 524
    :cond_5
    if-lt v1, v5, :cond_6

    .line 525
    const-string/jumbo v2, "801090"

    goto :goto_0

    .line 529
    .end local v1    # "exceededTimes":I
    :cond_6
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    if-nez v2, :cond_7

    move-object v2, v3

    .line 530
    goto :goto_0

    .line 532
    :cond_7
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isReadTimeoutException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 533
    const-string/jumbo v2, "101011"

    goto :goto_0

    .line 535
    :cond_8
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isCertificateException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 536
    const-string/jumbo v2, "103011"

    goto :goto_0

    .line 538
    :cond_9
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isInvalidHostException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 539
    const-string/jumbo v2, "201010"

    goto :goto_0

    .line 541
    :cond_a
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isConnectTimeoutException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 542
    const-string/jumbo v2, "201011"

    goto/16 :goto_0

    .line 544
    :cond_b
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isInvalidUrlException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 545
    const-string/jumbo v2, "201012"

    goto/16 :goto_0

    .line 548
    :cond_c
    iget-object v2, p0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    invoke-interface {v2, p1}, Lc8/Pwf;->isIndifferentException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 549
    const-string/jumbo v2, "901000"

    goto/16 :goto_0

    :cond_d
    move-object v2, v3

    .line 551
    goto/16 :goto_0
.end method

.method private commitAlarm(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "monitor"    # Ljava/lang/String;
    .param p2, "hitCount"    # I
    .param p3, "missCount"    # I
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 369
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 370
    if-nez p4, :cond_0

    .line 371
    const-string/jumbo v1, "ImageLib_Rx"

    invoke-static {v1, p1}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    const-string/jumbo v1, "ImageLib_Rx"

    invoke-static {v1, p1, p4}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_3

    .line 378
    if-nez p4, :cond_2

    .line 379
    const-string/jumbo v1, "ImageLib_Rx"

    invoke-static {v1, p1, v2, v2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 381
    :cond_2
    const-string/jumbo v1, "ImageLib_Rx"

    invoke-static {v1, p1, p4, v2, v2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 384
    :cond_3
    return-void
.end method

.method private getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string/jumbo v1, "bundle_biz_code"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 216
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .line 218
    :cond_1
    return-object v0
.end method

.method private static getHostFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string/jumbo v2, ""

    .line 210
    :goto_0
    return-object v2

    .line 197
    :cond_0
    const-string/jumbo v2, "//"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const/4 v1, 0x2

    .line 203
    .local v1, "start":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 204
    const-string/jumbo v2, ""

    goto :goto_0

    .line 200
    .end local v1    # "start":I
    :cond_1
    const-string/jumbo v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 201
    .restart local v1    # "start":I
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 206
    :cond_3
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 207
    .local v0, "end":I
    if-gez v0, :cond_4

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .param p1, "set"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 223
    .local p3, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 227
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMinimumScheduleTime2StatWaitSize()I
    .locals 1

    .prologue
    .line 388
    const/16 v0, 0x96

    return v0
.end method

.method public onDegrade2Unlimited()V
    .locals 4

    .prologue
    .line 578
    iget v0, p0, Lc8/Twf;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x9

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc8/Twf;->mDegradationBits:I

    .line 579
    const-string/jumbo v0, "ImageLib_Rx"

    const-string/jumbo v1, "Forced2UnlimitedNetwork"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 580
    return-void
.end method

.method public onFail(Lc8/Kxf;Ljava/lang/Throwable;)V
    .locals 28
    .param p1, "statistics"    # Lc8/Kxf;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->isDuplicated()Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    .line 403
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lc8/Pwf;->isNoNetworkException(Ljava/lang/Throwable;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 404
    :cond_0
    const-string/jumbo v24, "FlowMonitor"

    const-string/jumbo v25, "skipped commit onFail, statistics=%s, path=%s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v23, 0x0

    aput-object p1, v26, v23

    const/16 v27, 0x1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getUriInfo()Lc8/Lxf;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v23

    :goto_0
    aput-object v23, v26, v27

    invoke-static/range {v24 .. v26}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :goto_1
    return-void

    .line 404
    :cond_1
    const-string/jumbo v23, "unknown"

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getUriInfo()Lc8/Lxf;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 409
    .local v20, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 410
    .local v10, "errorCode":Ljava/lang/String;
    const/16 v22, 0x0

    .line 411
    .local v22, "windowName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 413
    .local v19, "naviUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/taobao/phenix/loader/network/NetworkResponseException;

    move/from16 v16, v0

    .line 414
    .local v16, "isNetworkError":Z
    invoke-static/range {v20 .. v20}, Lc8/Twf;->getHostFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "domain":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getExtras()Ljava/util/Map;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lc8/Twf;->getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "bizId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getFormat()Lc8/Yuf;

    move-result-object v17

    .line 417
    .local v17, "mimeType":Lc8/Yuf;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lc8/Yuf;->getMinorName()Ljava/lang/String;

    move-result-object v14

    .line 424
    .local v14, "format":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    move/from16 v23, v0

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Twf;->mStatCoverage:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/Twf;->filterOutThisStat(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 425
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v12

    .line 426
    .local v12, "flowDVS":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v13

    .line 427
    .local v13, "flowMVS":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v23, "domain"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 428
    const-string/jumbo v23, "error"

    const-string/jumbo v24, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 429
    const-string/jumbo v23, "bizName"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 430
    const-string/jumbo v23, "format"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v14}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 431
    const-string/jumbo v23, "dataFrom"

    const-string/jumbo v24, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 432
    const-string/jumbo v23, "ImageLib_Rx"

    const-string/jumbo v24, "ImageFlow"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12, v13}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 435
    .end local v12    # "flowDVS":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v13    # "flowMVS":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lc8/Nwf;->getCurrentWindowName()Ljava/lang/String;

    move-result-object v22

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lc8/Nwf;->getCurrentUrl()Ljava/lang/String;

    move-result-object v19

    .line 439
    :cond_4
    if-eqz v16, :cond_9

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/Twf;->analyzeErrorCode(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 441
    invoke-virtual/range {p0 .. p0}, Lc8/Twf;->registerErrorMonitor()V

    .line 442
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 443
    .local v9, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v18

    .line 444
    .local v18, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v23, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 445
    const-string/jumbo v23, "bizName"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 446
    const-string/jumbo v23, "analysisErrorCode"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 447
    const-string/jumbo v24, "originErrorCode"

    move-object/from16 v23, p2

    check-cast v23, Lcom/taobao/phenix/loader/network/NetworkResponseException;

    invoke-virtual/range {v23 .. v23}, Lcom/taobao/phenix/loader/network/NetworkResponseException;->getHttpCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 448
    const-string/jumbo v23, "desc"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "analysisReason::"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 449
    if-nez v22, :cond_5

    if-eqz v19, :cond_6

    .line 450
    :cond_5
    const-string/jumbo v23, "windowName"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 451
    const-string/jumbo v23, "naviUrl"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 453
    :cond_6
    const-string/jumbo v23, "ImageLib_Rx"

    const-string/jumbo v24, "ImageError"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v9, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 494
    .end local v9    # "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v18    # "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_7
    :goto_3
    const-string/jumbo v23, "FlowMonitor"

    const-string/jumbo v24, "commit complete onFail, analysisCode=%s, throwable=%s, window=%s, navi=%s, path=%s"

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    const/16 v26, 0x1

    aput-object p2, v25, v26

    const/16 v26, 0x2

    aput-object v22, v25, v26

    const/16 v26, 0x3

    aput-object v19, v25, v26

    const/16 v26, 0x4

    aput-object v20, v25, v26

    invoke-static/range {v23 .. v25}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 417
    .end local v14    # "format":Ljava/lang/String;
    :cond_8
    const-string/jumbo v14, "unknown"

    goto/16 :goto_2

    .line 455
    .restart local v14    # "format":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Twf;->mNonCriticalReportCoverage:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/Twf;->filterOutThisStat(I)Z

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNonCriticalErrorReporter:Lc8/Qwf;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 456
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v7, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v23, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v23, "domain"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string/jumbo v23, "format"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v23, "bizName"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v23, "size"

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getSize()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v23, "windowName"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v23, "naviUrl"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v23, "isRetrying"

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->isRetrying()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v23, "supportAshmem"

    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v23, "supportInBitmap"

    invoke-static {}, Lc8/nuf;->isInBitmapSupported()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v23, "degradationBits"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Twf;->mDegradationBits:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v23, "statusOfTBReal"

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/ixf;->schedulerBuilder()Lc8/Avf;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lc8/Oyf;->forCpuBound()Lc8/Nyf;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lc8/Nyf;->getStatus()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v23, "sdkInt"

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/4 v4, 0x0

    .local v4, "cdnIpPort":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "connType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 471
    .local v15, "hitCdn":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getExtras()Ljava/util/Map;

    move-result-object v11

    .line 472
    .local v11, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lc8/Pwf;->keyOfCdnIpPort()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cdnIpPort":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 474
    .restart local v4    # "cdnIpPort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lc8/Pwf;->keyOfConnectType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "connType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 475
    .restart local v5    # "connType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lc8/Pwf;->keyOfHitCdnCache()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "hitCdn":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 477
    .restart local v15    # "hitCdn":Ljava/lang/String;
    :cond_a
    const-string/jumbo v23, "cdnIpPort"

    if-eqz v4, :cond_c

    .end local v4    # "cdnIpPort":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v23

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v23, "connectType"

    if-eqz v5, :cond_d

    .end local v5    # "connType":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v23

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v23, "hitCdnCache"

    if-eqz v15, :cond_e

    .end local v15    # "hitCdn":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v23

    invoke-interface {v7, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lc8/NNf;->getClassShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    .line 482
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/taobao/phenix/decode/DecodeException;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v6, p2

    .line 483
    check-cast v6, Lcom/taobao/phenix/decode/DecodeException;

    .line 484
    .local v6, "de":Lcom/taobao/phenix/decode/DecodeException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/taobao/phenix/decode/DecodeException;->getDecodedError()Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "[Local?"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/taobao/phenix/decode/DecodeException;->isLocalUri()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", Disk?"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/taobao/phenix/decode/DecodeException;->isDataFromDisk()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 486
    invoke-virtual {v6}, Lcom/taobao/phenix/decode/DecodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    .local v21, "realCause":Ljava/lang/Throwable;
    if-eqz v21, :cond_b

    .line 487
    move-object/from16 p2, v21

    .line 490
    .end local v6    # "de":Lcom/taobao/phenix/decode/DecodeException;
    .end local v21    # "realCause":Ljava/lang/Throwable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNonCriticalErrorReporter:Lc8/Qwf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v10, v1, v7}, Lc8/Qwf;->onNonCriticalErrorHappen(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 491
    const-string/jumbo v23, "FlowMonitor"

    const-string/jumbo v24, "report non-critical error, details=%s, path=%s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v7, v25, v26

    const/16 v26, 0x1

    aput-object v20, v25, v26

    invoke-static/range {v23 .. v25}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 477
    .restart local v4    # "cdnIpPort":Ljava/lang/String;
    .restart local v5    # "connType":Ljava/lang/String;
    .restart local v15    # "hitCdn":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 478
    .end local v4    # "cdnIpPort":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, ""

    goto/16 :goto_5

    .line 479
    .end local v5    # "connType":Ljava/lang/String;
    :cond_e
    const-string/jumbo v15, ""

    goto/16 :goto_6
.end method

.method public onForcedDegrade2NoAshmem()V
    .locals 4

    .prologue
    .line 564
    iget v0, p0, Lc8/Twf;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x3

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc8/Twf;->mDegradationBits:I

    .line 565
    const-string/jumbo v0, "ImageLib_Rx"

    const-string/jumbo v1, "Forced2NoAshmem"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 566
    return-void
.end method

.method public onForcedDegrade2NoInBitmap()V
    .locals 4

    .prologue
    .line 571
    iget v0, p0, Lc8/Twf;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lc8/Twf;->mDegradationBits:I

    .line 572
    const-string/jumbo v0, "ImageLib_Rx"

    const-string/jumbo v1, "Forced2NoInBitmap"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 573
    return-void
.end method

.method public onForcedDegrade2System()V
    .locals 4

    .prologue
    .line 557
    iget v0, p0, Lc8/Twf;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Twf;->mDegradationBits:I

    .line 558
    const-string/jumbo v0, "ImageLib_Rx"

    const-string/jumbo v1, "Forced2System"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 559
    return-void
.end method

.method public onSuccess(Lc8/Kxf;)V
    .locals 34
    .param p1, "statistics"    # Lc8/Kxf;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->isDuplicated()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v29

    sget-object v30, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getDetailCost()Ljava/util/Map;

    move-result-object v29

    if-nez v29, :cond_2

    .line 233
    :cond_0
    const-string/jumbo v29, "FlowMonitor"

    const-string/jumbo v30, "skipped commit onSuccess, statistic=%s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p1, v31, v32

    invoke-static/range {v29 .. v31}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Twf;->mStatCoverage:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/Twf;->filterOutThisStat(I)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 237
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Lc8/qwf;->isLoggable(I)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 238
    const-string/jumbo v29, "FlowMonitor"

    const-string/jumbo v30, "filter this stat cause of sampling, statistic=%s "

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p1, v31, v32

    invoke-static/range {v29 .. v31}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getUriInfo()Lc8/Lxf;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 244
    .local v22, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lc8/Twf;->registerAppMonitor()V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v15

    .line 247
    .local v15, "fromType":Lcom/taobao/phenix/request/ImageStatistics$FromType;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v12

    .line 248
    .local v12, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v19

    .line 249
    .local v19, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v29, "domain"

    invoke-static/range {v22 .. v22}, Lc8/Twf;->getHostFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 250
    const-string/jumbo v29, "error"

    const-string/jumbo v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 251
    const-string/jumbo v29, "bizName"

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getExtras()Ljava/util/Map;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lc8/Twf;->getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 252
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getFormat()Lc8/Yuf;

    move-result-object v18

    .line 253
    .local v18, "mimeType":Lc8/Yuf;
    const-string/jumbo v30, "format"

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lc8/Yuf;->getMinorName()Ljava/lang/String;

    move-result-object v29

    :goto_1
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 254
    const-string/jumbo v29, "dataFrom"

    iget v0, v15, Lcom/taobao/phenix/request/ImageStatistics$FromType;->value:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 256
    const/4 v9, 0x0

    .line 257
    .local v9, "currWindowName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 258
    const-string/jumbo v29, "windowName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lc8/Nwf;->getCurrentWindowName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 259
    const-string/jumbo v29, "naviUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lc8/Nwf;->getCurrentUrl()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 262
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getDetailCost()Ljava/util/Map;

    move-result-object v10

    .line 263
    .local v10, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v29, "waitForMain"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 264
    const-string/jumbo v29, "totalTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 265
    const-string/jumbo v29, "memoryLookup"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 268
    const-string/jumbo v29, "scheduleTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lc8/Twf;->getMinimumScheduleTime2StatWaitSize()I

    move-result v30

    div-int v24, v29, v30

    .line 269
    .local v24, "scheduleFactor":I
    const-string/jumbo v29, "scheduleFactor"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 270
    if-lez v24, :cond_5

    .line 271
    const-string/jumbo v29, "masterWaitSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 272
    const-string/jumbo v29, "networkWaitSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 273
    const-string/jumbo v29, "decodeWaitSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 276
    :cond_5
    const/16 v28, 0x0

    .line 277
    .local v28, "sizeWarningException":Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    sget-object v29, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-object/from16 v0, v29

    if-eq v15, v0, :cond_9

    const/16 v21, 0x1

    .line 278
    .local v21, "notFromMemory":Z
    :goto_2
    if-eqz v21, :cond_6

    .line 279
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getSize()I

    move-result v26

    .line 280
    .local v26, "size":I
    const-string/jumbo v29, "decode"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 281
    const-string/jumbo v29, "size"

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 285
    const/16 v29, 0x5000

    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    .line 286
    const-string/jumbo v27, "0_20K"

    .line 304
    .local v27, "sizeRange":Ljava/lang/String;
    :goto_3
    const-string/jumbo v29, "sizeRange"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 305
    sget-object v29, Lc8/Swf;->$SwitchMap$com$taobao$phenix$request$ImageStatistics$FromType:[I

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/phenix/request/ImageStatistics$FromType;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    .line 354
    .end local v26    # "size":I
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_6
    :goto_4
    const-string/jumbo v29, "ImageLib_Rx"

    const-string/jumbo v30, "ImageFlow"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 355
    const-string/jumbo v29, "FlowMonitor"

    const-string/jumbo v30, "commit complete onSuccess, statistics=%s, path=%s"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p1, v31, v32

    const/16 v32, 0x1

    aput-object v22, v31, v32

    invoke-static/range {v29 .. v31}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    if-eqz v21, :cond_7

    .line 359
    const-string/jumbo v29, "DiskCacheHit"

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getDiskCacheHitCount()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getDiskCacheMissCount()I

    move-result v31

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getDiskCachePriority()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Twf;->commitAlarm(Ljava/lang/String;IILjava/lang/String;)V

    .line 360
    const-string/jumbo v29, "BitmapPoolHit"

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getBitmapPoolHitCount()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getBitmapPoolMissCount()I

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v9}, Lc8/Twf;->commitAlarm(Ljava/lang/String;IILjava/lang/String;)V

    .line 363
    :cond_7
    if-eqz v28, :cond_1

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lc8/Twf;->onFail(Lc8/Kxf;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 253
    .end local v9    # "currWindowName":Ljava/lang/String;
    .end local v10    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v21    # "notFromMemory":Z
    .end local v24    # "scheduleFactor":I
    .end local v28    # "sizeWarningException":Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    :cond_8
    const-string/jumbo v29, "unknown"

    goto/16 :goto_1

    .line 277
    .restart local v9    # "currWindowName":Ljava/lang/String;
    .restart local v10    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v24    # "scheduleFactor":I
    .restart local v28    # "sizeWarningException":Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 287
    .restart local v21    # "notFromMemory":Z
    .restart local v26    # "size":I
    :cond_a
    const v29, 0xc800

    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_b

    .line 288
    const-string/jumbo v27, "20_50K"

    .restart local v27    # "sizeRange":Ljava/lang/String;
    goto/16 :goto_3

    .line 289
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_b
    const v29, 0x19000

    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    .line 290
    const-string/jumbo v27, "50_100K"

    .restart local v27    # "sizeRange":Ljava/lang/String;
    goto/16 :goto_3

    .line 291
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_c
    const v29, 0x32000

    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_d

    .line 292
    const-string/jumbo v27, "100_200K"

    .restart local v27    # "sizeRange":Ljava/lang/String;
    goto/16 :goto_3

    .line 293
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_d
    const v29, 0x7d000

    move/from16 v0, v26

    move/from16 v1, v29

    if-gt v0, v1, :cond_e

    .line 294
    const-string/jumbo v27, "200_500K"

    .restart local v27    # "sizeRange":Ljava/lang/String;
    goto/16 :goto_3

    .line 297
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_e
    const v29, 0x7d000

    rem-int v29, v26, v29

    if-nez v29, :cond_f

    .line 298
    move/from16 v16, v26

    .line 302
    .local v16, "highMul":I
    :goto_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7d000

    sub-int v30, v16, v30

    move/from16 v0, v30

    div-int/lit16 v0, v0, 0x400

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x400

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "K"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "sizeRange":Ljava/lang/String;
    goto/16 :goto_3

    .line 300
    .end local v16    # "highMul":I
    .end local v27    # "sizeRange":Ljava/lang/String;
    :cond_f
    const v29, 0x7d000

    add-int v29, v29, v26

    const v30, 0x7d000

    div-int v29, v29, v30

    const v30, 0x7d000

    mul-int v16, v29, v30

    .restart local v16    # "highMul":I
    goto :goto_5

    .line 307
    .end local v16    # "highMul":I
    .restart local v27    # "sizeRange":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v29, "localFile"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto/16 :goto_4

    .line 310
    :pswitch_1
    const-string/jumbo v29, "cacheLookup"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto/16 :goto_4

    .line 313
    :pswitch_2
    const-string/jumbo v29, "cacheLookup"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 314
    const-string/jumbo v29, "scaleTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto/16 :goto_4

    .line 317
    :pswitch_3
    const-string/jumbo v29, "cacheLookup"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 318
    const-string/jumbo v29, "connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v7

    .line 319
    .local v7, "connectTime":I
    const-string/jumbo v29, "download"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v10}, Lc8/Twf;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v11

    .line 321
    .local v11, "downloadTime":I
    const/16 v17, 0x0

    .local v17, "hitCDN":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "connectType":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cdnIpPort":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "firstData":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "sendBefore":Ljava/lang/String;
    const/16 v23, 0x0

    .line 322
    .local v23, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/Kxf;->getExtras()Ljava/util/Map;

    move-result-object v13

    .line 323
    .local v13, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfHitCdnCache()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "hitCDN":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "hitCDN":Ljava/lang/String;
    if-eqz v17, :cond_10

    .line 325
    const-string/jumbo v29, "hitCdnCache"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 327
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfConnectType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "connectType":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "connectType":Ljava/lang/String;
    if-eqz v8, :cond_11

    .line 328
    const-string/jumbo v29, "connectType"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 330
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfCdnIpPort()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "cdnIpPort":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "cdnIpPort":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 331
    const-string/jumbo v29, "cdnIpPort"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 333
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfFirstData()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "firstData":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "firstData":Ljava/lang/String;
    if-eqz v14, :cond_13

    .line 334
    const-string/jumbo v29, "firstData"

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 336
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfSendBefore()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "sendBefore":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .restart local v25    # "sendBefore":Ljava/lang/String;
    if-eqz v25, :cond_14

    .line 337
    const-string/jumbo v29, "sendBefore"

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 339
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Twf;->mNetworkAnalyzer:Lc8/Pwf;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lc8/Pwf;->keyOfResponseCode()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "responseCode":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .restart local v23    # "responseCode":Ljava/lang/String;
    if-eqz v23, :cond_15

    .line 340
    const-string/jumbo v29, "responseCode"

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 343
    :cond_15
    const-string/jumbo v29, "FlowMonitor"

    const-string/jumbo v30, "network sub-stats: node=%s hit=%s type=%s connect=%d download=%d firstData=%s sendBefore=%s responseCode=%s size=%d, PATH=%s"

    const/16 v31, 0xa

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v6, v31, v32

    const/16 v32, 0x1

    aput-object v17, v31, v32

    const/16 v32, 0x2

    aput-object v8, v31, v32

    const/16 v32, 0x3

    .line 344
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    aput-object v14, v31, v32

    const/16 v32, 0x6

    aput-object v25, v31, v32

    const/16 v32, 0x7

    aput-object v23, v31, v32

    const/16 v32, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x9

    aput-object v22, v31, v32

    .line 343
    invoke-static/range {v29 .. v31}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    add-int v20, v11, v7

    .line 346
    .local v20, "netTotalTime":I
    if-lez v20, :cond_16

    .line 347
    const-string/jumbo v29, "speed"

    div-int v30, v26, v20

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 349
    :cond_16
    invoke-static/range {v26 .. v26}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$100(I)Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    move-result-object v28

    goto/16 :goto_4

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected declared-synchronized registerAppMonitor()V
    .locals 10

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/Twf;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    const-string/jumbo v0, "FlowMonitor"

    const-string/jumbo v2, "image flow register start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 132
    .local v6, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "domain"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 133
    const-string/jumbo v0, "error"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 134
    const-string/jumbo v0, "bizName"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 135
    const-string/jumbo v0, "format"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 136
    const-string/jumbo v0, "dataFrom"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 137
    const-string/jumbo v0, "scheduleFactor"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 138
    const-string/jumbo v0, "hitCdnCache"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 139
    const-string/jumbo v0, "connectType"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 140
    const-string/jumbo v0, "cdnIpPort"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 141
    const-string/jumbo v0, "windowName"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 142
    const-string/jumbo v0, "naviUrl"

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 145
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 146
    .local v1, "measSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "memoryLookup"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 147
    const-string/jumbo v2, "cacheLookup"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 148
    const-string/jumbo v2, "localFile"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 149
    const-string/jumbo v2, "connect"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 150
    const-string/jumbo v2, "download"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 151
    const-string/jumbo v2, "decode"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 152
    const-string/jumbo v2, "scaleTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 153
    const-string/jumbo v2, "scheduleTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 154
    const-string/jumbo v2, "waitForMain"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 155
    const-string/jumbo v2, "totalTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 156
    const-string/jumbo v2, "size"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 157
    const-string/jumbo v2, "speed"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 158
    const-string/jumbo v2, "masterWaitSize"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 159
    const-string/jumbo v2, "networkWaitSize"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 160
    const-string/jumbo v2, "decodeWaitSize"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 161
    const-string/jumbo v2, "firstData"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 162
    const-string/jumbo v2, "sendBefore"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 163
    const-string/jumbo v2, "responseCode"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Twf;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 165
    const-string/jumbo v0, "ImageLib_Rx"

    const-string/jumbo v2, "ImageFlow"

    invoke-static {v0, v2, v1, v6}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Twf;->mRegistered:Z

    .line 167
    const-string/jumbo v0, "FlowMonitor"

    const-string/jumbo v2, "image flow register end"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 126
    .end local v1    # "measSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v6    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerErrorMonitor()V
    .locals 4

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/Twf;->mRegisteredException:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    const-string/jumbo v1, "FlowMonitor"

    const-string/jumbo v2, "image error register start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 177
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 178
    const-string/jumbo v1, "windowName"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 179
    const-string/jumbo v1, "naviUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 180
    const-string/jumbo v1, "bizName"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 181
    const-string/jumbo v1, "analysisErrorCode"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 182
    const-string/jumbo v1, "originErrorCode"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 183
    const-string/jumbo v1, "desc"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 185
    const-string/jumbo v1, "ImageLib_Rx"

    const-string/jumbo v2, "ImageError"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Twf;->mRegisteredException:Z

    .line 187
    const-string/jumbo v1, "FlowMonitor"

    const-string/jumbo v2, "image error register end"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setImageWarningSize(I)V
    .locals 5
    .param p1, "warningSize"    # I

    .prologue
    .line 121
    invoke-static {p1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$002(I)I

    .line 122
    const-string/jumbo v0, "FlowMonitor"

    const-string/jumbo v1, "set image warning size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public setNavigationInfoObtainer(Lc8/Nwf;)V
    .locals 4
    .param p1, "obtainer"    # Lc8/Nwf;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/Twf;->mNavInfoObtainer:Lc8/Nwf;

    .line 112
    const-string/jumbo v0, "FlowMonitor"

    const-string/jumbo v1, "set navigation info obtainer=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setNonCriticalErrorReporter(Lc8/Qwf;)V
    .locals 0
    .param p1, "reporter"    # Lc8/Qwf;

    .prologue
    .line 116
    iput-object p1, p0, Lc8/Twf;->mNonCriticalErrorReporter:Lc8/Qwf;

    .line 117
    return-void
.end method
