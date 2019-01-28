.class public Lc8/EF;
.super Ljava/lang/Object;
.source "AppMonitorUtil.java"


# static fields
.field public static final JS_ERROR_POINT:Ljava/lang/String; = "JavaScriptError"

.field private static final MONITOR_MODULE:Ljava/lang/String; = "WindVane"

.field private static final MONITOR_POINT_INSECURITY_HOST:Ljava/lang/String; = "insecurityHost"

.field private static final MONITOR_POINT_OFF_MONITOR:Ljava/lang/String; = "OffMonitor"

.field private static final MONITOR_POINT_PACKAGEAPP:Ljava/lang/String; = "PackageApp"

.field private static final MONITOR_POINT_PACKAGEAPP_UPDATE_START:Ljava/lang/String; = "PackageUpdateStart"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT:Ljava/lang/String; = "PackageAppVisit"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT_START:Ljava/lang/String; = "PackageVisitStart"

.field private static final MONITOR_POINT_PACKAGEQUEUE:Ljava/lang/String; = "PackageQueue"

.field private static final MONITOR_POINT_PACKAGE_CLEANUP:Ljava/lang/String; = "PackageCleanUp"

.field private static final MONITOR_POINT_PACKAGE_WARNING:Ljava/lang/String; = "PackageWarning"

.field private static final MONITOR_POINT_PAGE_EMPTY:Ljava/lang/String; = "PageEmpty"

.field private static final MONITOR_POINT_PERFORMANCE:Ljava/lang/String; = "H5"

.field private static final MONITOR_POINT_PERFORMANCE_2:Ljava/lang/String; = "H5_2"

.field private static final MONITOR_POINT_PERFORMANCE_3:Ljava/lang/String; = "H5_3"

.field private static final MONITOR_POINT_PERFORMANCE_4:Ljava/lang/String; = "H5_4"

.field private static final MONITOR_POINT_PERFORMANCE_5:Ljava/lang/String; = "H5_5"

.field private static final MONITOR_POINT_RESOURCE_SIZE:Ljava/lang/String; = "ResourceSize"

.field private static final MONITOR_POINT_SECURITY_WARNING:Ljava/lang/String; = "SecurityWarning"

.field private static final MONITOR_POINT_STATUS_CODE:Ljava/lang/String; = "StatusCode"

.field private static final MONITOR_POINT_UNZIP_ERROR:Ljava/lang/String; = "UnzipError"

.field private static final MONITOR_POINT_UPDATE_CONFIG_INFO:Ljava/lang/String; = "Config"

.field private static final MONITOR_POINT_WEBVIEW_START:Ljava/lang/String; = "WebViewStart"

.field private static final MONITOR_POINT_WEB_PERFORMANCE_CHECK:Ljava/lang/String; = "WebPerformanceCheck"

.field private static final MONITOR_POINT_WRONG_FOLDER_INDEX:Ljava/lang/String; = "WrongFolderIndex"

.field private static final MONITOR_POINT_WVUCWEBVIEW:Ljava/lang/String; = "WVUcwebview"

.field public static final NATIVE_ERROR_POINT:Ljava/lang/String; = "NativeError"

.field public static OFF:Z = false

.field private static final TAG:Ljava/lang/String; = "AppMonitorUtil"

.field private static isAppMonitorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lc8/EF;->OFF:Z

    .line 63
    sput-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitConifgUpdateError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "Config"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitConifgUpdateInfo(Ljava/lang/String;IJII)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "updateTime"    # J
    .param p4, "isSuccess"    # I
    .param p5, "updateCount"    # I

    .prologue
    .line 276
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 281
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 282
    const-string/jumbo v2, "from"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 283
    const-string/jumbo v2, "isSuccess"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 285
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 286
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "updateTime"

    long-to-double v4, p2

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 287
    const-string/jumbo v2, "updateCount"

    int-to-double v4, p5

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 290
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "Config"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitConifgUpdateSuccess(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "Config"

    invoke-static {v0, v1, p0}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string/jumbo v0, "AppMonitorUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview commitEmptyPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PageEmpty"

    const-string/jumbo v2, "101"

    invoke-static {v0, v1, p0, v2, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string/jumbo v0, "WindVane"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p3, v1, p2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitInSecurityHost(Ljava/lang/String;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "insecurityHost"

    const-string/jumbo v2, "101"

    invoke-static {v0, v1, v2, p0}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "OffMonitor"

    invoke-static {v0, v1, p1, p2, p0}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageAppUpdateError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PackageApp"

    invoke-static {v0, v1, p2, p0, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageAppUpdateInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 9
    .param p0, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "online"    # Ljava/lang/String;
    .param p2, "isWifi"    # Ljava/lang/String;
    .param p3, "updateTime"    # J
    .param p5, "downloadTime"    # J
    .param p7, "publishTime"    # J
    .param p9, "updateUseTime"    # J

    .prologue
    .line 364
    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget v4, v4, Lc8/EB;->monitorStatus:I

    if-eqz v4, :cond_0

    sget-boolean v4, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v4, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    .line 369
    .local v2, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "appName"

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 370
    const-string/jumbo v4, "version"

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 371
    const-string/jumbo v4, "seq"

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 372
    const-string/jumbo v4, "online"

    invoke-virtual {v2, v4, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 373
    const-string/jumbo v4, "networkSupport"

    invoke-virtual {v2, v4, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 375
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 376
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "updateTime"

    long-to-double v6, p3

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 377
    const-string/jumbo v4, "downloadTime"

    long-to-double v6, p5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 378
    const-string/jumbo v4, "publishTime"

    move-wide/from16 v0, p7

    long-to-double v6, v0

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 379
    const-string/jumbo v4, "notificationTime"

    move-wide/from16 v0, p9

    long-to-double v6, v0

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 382
    const-string/jumbo v4, "WindVane"

    const-string/jumbo v5, "PackageApp"

    invoke-static {v4, v5, v2, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 384
    const-string/jumbo v4, "AppMonitorUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "app publishTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " online : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 386
    .end local v2    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "AppMonitorUtil"

    const-string/jumbo v5, "AppMonitor exception"

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static commitPackageAppUpdateSuccess(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PackageApp"

    invoke-static {v0, v1, p0}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageAppVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "errorInfo"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PackageAppVisit"

    invoke-static {v0, v1, p0, p2, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageAppWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PackageWarning"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, p0, v2, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageClearUpInfo(JIIIFIIFI)V
    .locals 6
    .param p0, "beforeDelSpace"    # J
    .param p2, "expectedNum"    # I
    .param p3, "installedNum"    # I
    .param p4, "willDeleteCount"    # I
    .param p5, "customRadio"    # F
    .param p6, "noCacheCount"    # I
    .param p7, "normalCount"    # I
    .param p8, "noCacheRatio"    # F
    .param p9, "cleanCause"    # I

    .prologue
    .line 558
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 563
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "cleanCause"

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 565
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 566
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "beforeDelSpace"

    long-to-double v4, p0

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 567
    const-string/jumbo v2, "expectedNum"

    int-to-double v4, p2

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 568
    const-string/jumbo v2, "installedNum"

    int-to-double v4, p3

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 569
    const-string/jumbo v2, "willDeleteCount"

    int-to-double v4, p4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 570
    const-string/jumbo v2, "customRadio"

    float-to-double v4, p5

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 571
    const-string/jumbo v2, "noCacheCount"

    int-to-double v4, p6

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 572
    const-string/jumbo v2, "normalCount"

    int-to-double v4, p7

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 573
    const-string/jumbo v2, "noCacheRatio"

    float-to-double v4, p8

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 575
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "PackageCleanUp"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageClearUpInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageQueueInfo(Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "isInitialUpdate"    # Ljava/lang/String;
    .param p1, "updateCount"    # J
    .param p3, "succesCount"    # J

    .prologue
    .line 414
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 419
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    const-string/jumbo v2, "isInitialUpdate"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 423
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 424
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "updateCount"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 425
    const-string/jumbo v2, "successCount"

    long-to-double v4, p3

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 427
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "PackageQueue"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageQueueInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageUpdateStartInfo(JJ)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 489
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 495
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 496
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "startTime"

    long-to-double v4, p0

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 497
    const-string/jumbo v2, "endTime"

    long-to-double v4, p2

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 500
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "PackageUpdateStart"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageUpdateStartInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "hasVerifyTime"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "matchTime"    # J
    .param p6, "readTime"    # J
    .param p8, "verifyTime"    # J
    .param p10, "seq"    # J

    .prologue
    .line 436
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 441
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 442
    const-string/jumbo v2, "hasVerifyTime"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 444
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 445
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "time"

    long-to-double v4, p2

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 446
    const-string/jumbo v2, "matchTime"

    long-to-double v4, p4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 447
    const-string/jumbo v2, "readTime"

    long-to-double v4, p6

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 448
    const-string/jumbo v2, "verifyTime"

    long-to-double v4, p8

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 451
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "PackageAppVisit"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageVisitInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageVisitStartInfo(Ljava/lang/String;J)V
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 469
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 474
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 476
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 477
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "time"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 480
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "PackageVisitStart"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageVisitStartInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPackageVisitSuccess(Ljava/lang/String;J)V
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "seq"    # J

    .prologue
    .line 459
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    :try_start_0
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "PackageAppVisit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AppMonitorUtil"

    const-string/jumbo v1, "AppMonitor commitPackageVisitSuccess exception"

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitPerformanceInfo(Lc8/WF;)V
    .locals 12
    .param p0, "data"    # Lc8/WF;

    .prologue
    .line 584
    sget-object v7, Lc8/DB;->commonConfig:Lc8/EB;

    iget v7, v7, Lc8/EB;->monitorStatus:I

    if-eqz v7, :cond_0

    sget-boolean v7, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v7, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 589
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v7, "url"

    iget-object v8, p0, Lc8/WF;->url:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 590
    const-string/jumbo v7, "via"

    iget-object v8, p0, Lc8/WF;->args:Lc8/TF;

    iget-object v8, v8, Lc8/TF;->via:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 591
    const-string/jumbo v7, "pkgName"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-object v8, v8, Lc8/VF;->packageAppName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 592
    const-string/jumbo v7, "pkgVersion"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-object v8, v8, Lc8/VF;->packageAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 593
    const-string/jumbo v7, "pkgSeq"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-object v8, v8, Lc8/VF;->appSeq:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 594
    const-string/jumbo v7, "fromType"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget v8, v8, Lc8/VF;->fromType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 595
    const-string/jumbo v8, "hasInit"

    iget-boolean v7, p0, Lc8/WF;->isInit:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "1"

    :goto_1
    invoke-virtual {v0, v8, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 596
    const-string/jumbo v7, "isFinished"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget v8, v8, Lc8/VF;->finish:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 597
    const-string/jumbo v7, "statusCode"

    iget-object v8, p0, Lc8/WF;->args:Lc8/TF;

    iget v8, v8, Lc8/TF;->statusCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 598
    const-string/jumbo v7, "verifyError"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget v8, v8, Lc8/VF;->verifyError:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 599
    const-string/jumbo v7, "protocolType"

    iget-object v8, p0, Lc8/WF;->protocolType:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 601
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 602
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v7, "verifyResTime"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->verifyResTime:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 603
    const-string/jumbo v7, "verifyTime"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->verifyTime:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 604
    const-string/jumbo v7, "verifyCacheSize"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget v8, v8, Lc8/VF;->verifyCacheSize:I

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 605
    const-string/jumbo v7, "allVerifyTime"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->allVerifyTime:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 606
    const-string/jumbo v7, "initTime"

    iget-wide v8, p0, Lc8/WF;->init:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 607
    const-string/jumbo v7, "tcp"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 608
    const-string/jumbo v7, "ssl"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 609
    const-string/jumbo v7, "firstByte"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->firstByteTime:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 610
    const-string/jumbo v7, "domLoad"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->onDomLoad:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 611
    const-string/jumbo v7, "pageLoad"

    iget-object v8, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v8, v8, Lc8/VF;->onLoad:J

    long-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    const/4 v4, 0x0

    .line 614
    .local v4, "performanceData":Lorg/json/JSONObject;
    :try_start_1
    iget-object v7, p0, Lc8/WF;->performanceInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 615
    iget-object v6, p0, Lc8/WF;->performanceInfo:Ljava/lang/String;

    .line 616
    .local v6, "performanceString":Ljava/lang/String;
    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 617
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 618
    .local v1, "length":I
    iget-object v7, p0, Lc8/WF;->performanceInfo:Ljava/lang/String;

    const/4 v8, 0x1

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 620
    .end local v1    # "length":I
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    const-string/jumbo v7, "\\"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "performanceData":Lorg/json/JSONObject;
    .local v5, "performanceData":Lorg/json/JSONObject;
    move-object v4, v5

    .line 624
    .end local v5    # "performanceData":Lorg/json/JSONObject;
    .end local v6    # "performanceString":Ljava/lang/String;
    .restart local v4    # "performanceData":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 625
    :try_start_2
    const-string/jumbo v7, "c"

    const-string/jumbo v8, "c"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 626
    const-string/jumbo v7, "dc"

    const-string/jumbo v8, "dc"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 627
    const-string/jumbo v7, "dcl"

    const-string/jumbo v8, "dcl"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 628
    const-string/jumbo v7, "dl"

    const-string/jumbo v8, "dl"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 629
    const-string/jumbo v7, "dns"

    const-string/jumbo v8, "dns"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 630
    const-string/jumbo v7, "lee"

    const-string/jumbo v8, "lee"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 631
    const-string/jumbo v7, "req"

    const-string/jumbo v8, "req"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 632
    const-string/jumbo v7, "rpe"

    const-string/jumbo v8, "rpe"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 633
    const-string/jumbo v7, "rps"

    const-string/jumbo v8, "rps"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 634
    const-string/jumbo v7, "scs"

    const-string/jumbo v8, "scs"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 637
    :cond_4
    iget v7, p0, Lc8/WF;->wvAppMonitor:I

    packed-switch v7, :pswitch_data_0

    .line 659
    const-string/jumbo v3, "H5"

    .line 662
    .local v3, "monitorPointH5":Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, "WindVane"

    invoke-static {v7, v3, v0, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 664
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p0, :cond_0

    iget-object v7, p0, Lc8/WF;->stat:Lc8/VF;

    if-eqz v7, :cond_0

    .line 665
    const-string/jumbo v7, "AppMonitorUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PERFORMANCE : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/WF;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": pageLoad : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/WF;->stat:Lc8/VF;

    iget-wide v10, v9, Lc8/VF;->onLoad:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " fromType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/WF;->stat:Lc8/VF;

    iget v9, v9, Lc8/VF;->fromType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 668
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v3    # "monitorPointH5":Ljava/lang/String;
    .end local v4    # "performanceData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    const-string/jumbo v7, "AppMonitorUtil"

    const-string/jumbo v8, "AppMonitor exception"

    invoke-static {v7, v8}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    .restart local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_5
    :try_start_3
    const-string/jumbo v7, "0"

    goto/16 :goto_1

    .line 639
    .restart local v2    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v4    # "performanceData":Lorg/json/JSONObject;
    :pswitch_0
    const-string/jumbo v3, "H5"

    .line 641
    .restart local v3    # "monitorPointH5":Ljava/lang/String;
    goto :goto_3

    .line 643
    .end local v3    # "monitorPointH5":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "H5_2"

    .line 645
    .restart local v3    # "monitorPointH5":Ljava/lang/String;
    goto :goto_3

    .line 647
    .end local v3    # "monitorPointH5":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "H5_3"

    .line 649
    .restart local v3    # "monitorPointH5":Ljava/lang/String;
    goto :goto_3

    .line 651
    .end local v3    # "monitorPointH5":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "H5_4"

    .line 653
    .restart local v3    # "monitorPointH5":Ljava/lang/String;
    goto :goto_3

    .line 655
    .end local v3    # "monitorPointH5":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "H5_5"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 657
    .restart local v3    # "monitorPointH5":Ljava/lang/String;
    goto :goto_3

    .end local v3    # "monitorPointH5":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static commitResourceSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 529
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "ResourceSize"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, p0, v2, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitSecurityWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "SecurityWarning"

    const-string/jumbo v2, "101"

    invoke-static {v0, v1, p1, v2, p0}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitStartTimeInfo(Ljava/lang/String;J)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "useTime"    # J

    .prologue
    .line 391
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 396
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    const-string/jumbo v2, "url"

    invoke-static {p0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 400
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 401
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "time"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 403
    const-string/jumbo v2, "AppMonitorUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Webview start after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms, url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "WebViewStart"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitStartTimeInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "statusCode"    # Ljava/lang/String;
    .param p3, "isHTML"    # Ljava/lang/String;
    .param p4, "bizCode"    # Ljava/lang/String;

    .prologue
    .line 509
    sget-object v1, Lc8/DB;->commonConfig:Lc8/EB;

    iget v1, v1, Lc8/EB;->monitorStatus:I

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 514
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 515
    const-string/jumbo v1, "isHTML"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 516
    const-string/jumbo v1, "statusCode"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 517
    const-string/jumbo v1, "referrer"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 518
    const-string/jumbo v1, "bizCode"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 520
    const-string/jumbo v1, "WindVane"

    const-string/jumbo v2, "StatusCode"

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "AppMonitorUtil"

    const-string/jumbo v2, "AppMonitor commitStatusCode exception"

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->monitorStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string/jumbo v0, "WindVane"

    const-string/jumbo v1, "WVUcwebview"

    invoke-static {v0, v1, p2, p0, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitWebPerfCheckInfo(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "score"    # J
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "bizcode"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;

    .prologue
    .line 535
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->monitorStatus:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/EF;->isAppMonitorEnabled:Z

    if-nez v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 540
    .local v0, "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 541
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 542
    const-string/jumbo v2, "bizcode"

    invoke-virtual {v0, v2, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 543
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 545
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 546
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "score"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 549
    const-string/jumbo v2, "WindVane"

    const-string/jumbo v3, "WebPerformanceCheck"

    invoke-static {v2, v3, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v0    # "demensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "AppMonitorUtil"

    const-string/jumbo v3, "AppMonitor commitPackageUpdateStartInfo exception"

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 66
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 68
    return-object v0
.end method

.method public static init()V
    .locals 34

    .prologue
    .line 73
    const/16 v28, 0x0

    :try_start_0
    sput-boolean v28, Lc8/EF;->isAppMonitorEnabled:Z

    .line 76
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v16

    .line 78
    .local v16, "packageQueueDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "isInitialUpdate"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v17

    .line 83
    .local v17, "packageQueueMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "updateCount"

    const-wide v30, 0x3fb999999999999aL    # 0.1

    const-wide v32, 0x408c200000000000L    # 900.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 84
    const-string/jumbo v28, "successCount"

    const-wide v30, 0x3fb999999999999aL    # 0.1

    const-wide v32, 0x408c200000000000L    # 900.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 86
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageQueue"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 89
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    .line 91
    .local v20, "packageVisitDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "pkgName"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 92
    const-string/jumbo v28, "hasVerifyTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 95
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    .line 97
    .local v21, "packageVisitMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "time"

    const-wide/16 v30, 0x0

    const-wide v32, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 98
    const-string/jumbo v28, "matchTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 99
    const-string/jumbo v28, "readTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 100
    const-string/jumbo v28, "verifyTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 102
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageAppVisit"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 106
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v24

    .line 108
    .local v24, "webPerCheckDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "url"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 109
    const-string/jumbo v28, "version"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 110
    const-string/jumbo v28, "bizcode"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 111
    const-string/jumbo v28, "result"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 114
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v25

    .line 116
    .local v25, "webPerCheckMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "score"

    const-wide/16 v30, 0x0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 118
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "WebPerformanceCheck"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 121
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v22

    .line 123
    .local v22, "packageVisitStartDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "pkgName"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 126
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v23

    .line 128
    .local v23, "packageVisitStartMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "time"

    const-wide/16 v30, 0x0

    const-wide v32, 0x4184997000000000L    # 4.32E7

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 129
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageVisitStart"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 132
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v18

    .line 134
    .local v18, "packageUpdateStartDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v19

    .line 136
    .local v19, "packageUpdateStartMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "startTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x4184997000000000L    # 4.32E7

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 137
    const-string/jumbo v28, "endTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x4184997000000000L    # 4.32E7

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 138
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageUpdateStart"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v14

    .line 143
    .local v14, "packageClearUpDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "cleanCause"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 146
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    .line 148
    .local v15, "packageClearUpMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "beforeDelSpace"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 149
    const-string/jumbo v28, "expectedNum"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 150
    const-string/jumbo v28, "installedNum"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 151
    const-string/jumbo v28, "willDeleteCount"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 152
    const-string/jumbo v28, "customRadio"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 153
    const-string/jumbo v28, "noCacheCount"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 154
    const-string/jumbo v28, "normalCount"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 155
    const-string/jumbo v28, "noCacheRatio"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 157
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageCleanUp"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v15, v14}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 160
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v26

    .line 162
    .local v26, "webviewSatrtDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "url"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 165
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v27

    .line 167
    .local v27, "webviewSatrtMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "time"

    const-wide/16 v30, 0x0

    const-wide v32, 0x413b774000000000L    # 1800000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 169
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "WebViewStart"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 173
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 175
    .local v6, "dimensionSetConfig":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "name"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 176
    const-string/jumbo v28, "from"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 177
    const-string/jumbo v28, "isSuccess"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 180
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    .line 182
    .local v10, "measureSetConfig":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "updateTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 183
    const-string/jumbo v28, "updateCount"

    const-wide/16 v30, 0x0

    const-wide v32, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 185
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "Config"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10, v6}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 188
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 190
    .local v9, "dimensionSetStatus":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "url"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 191
    const-string/jumbo v28, "isHTML"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 192
    const-string/jumbo v28, "statusCode"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 193
    const-string/jumbo v28, "referrer"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 194
    const-string/jumbo v28, "bizCode"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 197
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v13

    .line 199
    .local v13, "measureSetStatus":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "StatusCode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13, v9}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 202
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v7

    .line 204
    .local v7, "dimensionSetPackageApp":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "appName"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 205
    const-string/jumbo v28, "version"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 206
    const-string/jumbo v28, "seq"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 207
    const-string/jumbo v28, "online"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 208
    const-string/jumbo v28, "networkSupport"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 211
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v11

    .line 213
    .local v11, "measureSetPackageApp":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "updateTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 214
    const-string/jumbo v28, "downloadTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 215
    const-string/jumbo v28, "publishTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41c2064200000000L    # 6.048E8

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 216
    const-string/jumbo v28, "notificationTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41c2064200000000L    # 6.048E8

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 217
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "PackageApp"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11, v7}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 220
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v8

    .line 222
    .local v8, "dimensionSetPerformance":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v28, "url"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 223
    const-string/jumbo v28, "via"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 224
    const-string/jumbo v28, "pkgName"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 225
    const-string/jumbo v28, "pkgVersion"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 226
    const-string/jumbo v28, "pkgSeq"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 227
    const-string/jumbo v28, "fromType"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 228
    const-string/jumbo v28, "protocolType"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 229
    const-string/jumbo v28, "hasInit"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 230
    const-string/jumbo v28, "isFinished"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 231
    const-string/jumbo v28, "statusCode"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 232
    const-string/jumbo v28, "verifyError"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 235
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v12

    .line 237
    .local v12, "measureSetPerformance":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v28, "verifyResTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 238
    const-string/jumbo v28, "verifyTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 239
    const-string/jumbo v28, "verifyCacheSize"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 240
    const-string/jumbo v28, "allVerifyTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 241
    const-string/jumbo v28, "initTime"

    const-wide/16 v30, 0x0

    const-wide v32, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 242
    const-string/jumbo v28, "tcp"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 243
    const-string/jumbo v28, "ssl"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 244
    const-string/jumbo v28, "firstByte"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 245
    const-string/jumbo v28, "domLoad"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 246
    const-string/jumbo v28, "pageLoad"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 247
    const-string/jumbo v28, "c"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 248
    const-string/jumbo v28, "dc"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 249
    const-string/jumbo v28, "dcl"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 250
    const-string/jumbo v28, "dl"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 251
    const-string/jumbo v28, "dns"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 252
    const-string/jumbo v28, "lee"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 253
    const-string/jumbo v28, "req"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 254
    const-string/jumbo v28, "rpe"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 255
    const-string/jumbo v28, "rps"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 256
    const-string/jumbo v28, "scs"

    const-wide/16 v30, 0x0

    const-wide v32, 0x41224f8000000000L    # 600000.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lc8/EF;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 258
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "H5"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 259
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "H5_2"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 260
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "H5_3"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 261
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "H5_4"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 262
    const-string/jumbo v28, "WindVane"

    const-string/jumbo v29, "H5_5"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 263
    const/16 v28, 0x1

    sput-boolean v28, Lc8/EF;->isAppMonitorEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v6    # "dimensionSetConfig":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v7    # "dimensionSetPackageApp":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v8    # "dimensionSetPerformance":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v9    # "dimensionSetStatus":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v10    # "measureSetConfig":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v11    # "measureSetPackageApp":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v12    # "measureSetPerformance":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v13    # "measureSetStatus":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v14    # "packageClearUpDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v15    # "packageClearUpMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v17    # "packageQueueMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v18    # "packageUpdateStartDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v19    # "packageUpdateStartMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v20    # "packageVisitDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v21    # "packageVisitMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v22    # "packageVisitStartDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v23    # "packageVisitStartMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v24    # "webPerCheckDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v25    # "webPerCheckMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v26    # "webviewSatrtDimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v27    # "webviewSatrtMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v28

    const-string/jumbo v28, "AppMonitorUtil"

    const-string/jumbo v29, "AppMonitor not found"

    invoke-static/range {v28 .. v29}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
