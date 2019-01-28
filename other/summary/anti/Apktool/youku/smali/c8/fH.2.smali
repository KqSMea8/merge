.class public Lc8/fH;
.super Ljava/lang/Object;
.source "ZipAppUtils.java"


# static fields
.field private static final SPNAME:Ljava/lang/String; = "WVpackageApp"

.field private static final TAG:Ljava/lang/String; = "ZipAppUtils"

.field public static ZIP_APP_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "app"

    sput-object v0, Lc8/fH;->ZIP_APP_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStreamByUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 461
    sget-object v5, Lc8/DB;->commonConfig:Lc8/EB;

    iget v5, v5, Lc8/EB;->packageAppStatus:I

    if-nez v5, :cond_1

    .line 462
    const-string/jumbo v5, "ZipAppUtils"

    const-string/jumbo v6, "packageApp is closed"

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-object v4

    .line 466
    :cond_1
    invoke-static {p0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-static {p0}, Lc8/dI;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 472
    invoke-static {p0}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 473
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    const/4 v2, 0x0

    .line 474
    .local v2, "res":Lc8/II;
    if-eqz v0, :cond_2

    .line 475
    invoke-static {p0, v0}, Lc8/vG;->getWrapResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Lc8/II;

    move-result-object v2

    .line 477
    :cond_2
    if-eqz v2, :cond_3

    .line 478
    iget-object v4, v2, Lc8/II;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 484
    :cond_3
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/WG;->isZcacheUrl(Ljava/lang/String;)Lc8/VG;

    move-result-object v1

    .line 485
    .local v1, "filedata":Lc8/VG;
    if-eqz v1, :cond_4

    .line 486
    invoke-static {p0, v1}, Lc8/vG;->getWrapResourceResponse(Ljava/lang/String;Lc8/VG;)Lc8/II;

    move-result-object v2

    .line 488
    :cond_4
    if-eqz v2, :cond_5

    .line 489
    iget-object v4, v2, Lc8/II;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 492
    :cond_5
    :try_start_0
    invoke-static {p0}, Lc8/vG;->makeComboRes(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 493
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getLocPathByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/fH;->getLocPathByUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocPathByUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "needNewest"    # Z

    .prologue
    const/4 v2, 0x0

    .line 385
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    if-nez v4, :cond_1

    .line 386
    const-string/jumbo v4, "ZipAppUtils"

    const-string/jumbo v5, "WindVane is not init"

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    :goto_0
    return-object v2

    .line 389
    :cond_1
    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget v4, v4, Lc8/EB;->packageAppStatus:I

    if-nez v4, :cond_2

    .line 390
    const-string/jumbo v4, "ZipAppUtils"

    const-string/jumbo v5, "packageApp is closed"

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-static {p0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-static {p0}, Lc8/dI;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 396
    invoke-static {p0}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 397
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v0, :cond_4

    .line 398
    if-eqz p1, :cond_3

    iget-wide v4, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    iget-wide v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 399
    const-string/jumbo v4, "ZipAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not installed newest app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_3
    invoke-static {v0, p0}, Lc8/fH;->parseUrlSuffix(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "resPath":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 404
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "path":Ljava/lang/String;
    goto :goto_0

    .line 409
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "resPath":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/WG;->isZcacheUrl(Ljava/lang/String;)Lc8/VG;

    move-result-object v1

    .line 410
    .local v1, "filedata":Lc8/VG;
    if-eqz v1, :cond_0

    .line 411
    iget-object v2, v1, Lc8/VG;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p0}, Lc8/fH;->getInputStreamByUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 436
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 437
    const/4 v4, 0x0

    .line 450
    :goto_0
    return-object v4

    .line 439
    :cond_0
    const/4 v4, 0x0

    .line 441
    .local v4, "utf8Data":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 442
    .local v3, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 444
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 445
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 450
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "result":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 447
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    .restart local v3    # "result":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public static getStreamByUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 510
    sget-object v8, Lc8/xB;->context:Landroid/app/Application;

    if-eqz v8, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 511
    :cond_0
    const-string/jumbo v8, "ZipAppUtils"

    const-string/jumbo v9, "WindVane is not init or param is null"

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_1
    :goto_0
    return-object v5

    .line 514
    :cond_2
    invoke-static {p1}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-static {p1}, Lc8/dI;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 517
    .local v4, "path":Ljava/lang/StringBuilder;
    sget-object v8, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    sget-object v8, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "version":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 528
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, "lastPath":Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 533
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 535
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 540
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/JD;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 541
    .local v0, "data":[B
    const/4 v5, 0x0

    .line 543
    .local v5, "utf8Data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v5    # "utf8Data":Ljava/lang/String;
    .local v6, "utf8Data":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 545
    invoke-static {p1}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v2

    .line 546
    .local v2, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v2, :cond_4

    .line 547
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v8

    iget-object v9, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    iget-wide v10, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-interface {v8, v9, v10, v11}, Lc8/aG;->commitPackageVisitSuccess(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_4
    move-object v5, v6

    .line 554
    .end local v6    # "utf8Data":Ljava/lang/String;
    .restart local v5    # "utf8Data":Ljava/lang/String;
    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v8

    :goto_1
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 552
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v8

    invoke-interface {v8, p0, p1}, Lc8/aG;->commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    .end local v5    # "utf8Data":Ljava/lang/String;
    .restart local v6    # "utf8Data":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "utf8Data":Ljava/lang/String;
    .restart local v5    # "utf8Data":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isNeedPreInstall(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 363
    const-string/jumbo v4, "WVpackageApp"

    const-string/jumbo v5, "wvttid"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "preV":Ljava/lang/String;
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v4

    invoke-virtual {v4}, Lc8/xB;->getTtid()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "ttid":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 368
    .local v0, "isNeedPreInstall":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 369
    const-string/jumbo v4, "WVpackageApp"

    const-string/jumbo v5, "wvttid"

    invoke-static {v4, v5, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 372
    .end local v0    # "isNeedPreInstall":Z
    :cond_0
    return v0

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAppResConfig(Ljava/lang/String;Z)Lc8/SG;
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "valid"    # Z

    .prologue
    const/4 v8, 0x0

    .line 133
    const/4 v9, 0x1

    :try_start_0
    invoke-static {p0, p1, v9}, Lc8/aH;->parseConfig(Ljava/lang/String;ZZ)Lc8/ZG;

    move-result-object v1

    .line 134
    .local v1, "configData":Lc8/ZG;
    if-nez v1, :cond_1

    move-object v0, v8

    .line 164
    .end local v1    # "configData":Lc8/ZG;
    :cond_0
    :goto_0
    return-object v0

    .line 139
    .restart local v1    # "configData":Lc8/ZG;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, "flist":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 141
    const-string/jumbo v9, "ZipAppUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseAppResinfo:parse json fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lc8/ZG;->json:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    new-instance v0, Lc8/SG;

    invoke-direct {v0}, Lc8/SG;-><init>()V

    .line 146
    .local v0, "appresinfo":Lc8/SG;
    iget-object v9, v1, Lc8/ZG;->tk:Ljava/lang/String;

    iput-object v9, v0, Lc8/SG;->tk:Ljava/lang/String;

    .line 147
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 148
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 151
    .local v7, "val":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    .line 152
    new-instance v6, Lc8/RG;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v0}, Lc8/RG;-><init>(Lc8/SG;)V

    .line 153
    .local v6, "mfileinfo":Lc8/RG;
    iput-object v5, v6, Lc8/RG;->path:Ljava/lang/String;

    .line 154
    const-string/jumbo v9, "v"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/RG;->v:Ljava/lang/String;

    .line 155
    const-string/jumbo v9, "url"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/RG;->url:Ljava/lang/String;

    .line 156
    const-string/jumbo v9, "header"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v6, Lc8/RG;->headers:Lorg/json/JSONObject;

    .line 157
    iget-object v9, v0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    .end local v0    # "appresinfo":Lc8/SG;
    .end local v1    # "configData":Lc8/ZG;
    .end local v3    # "flist":Lorg/json/JSONObject;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mfileinfo":Lc8/RG;
    .end local v7    # "val":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ZipAppUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseAppResConfig Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 164
    goto/16 :goto_0
.end method

.method public static declared-synchronized parseGlobalConfig2String(Lc8/WG;)Ljava/lang/String;
    .locals 14
    .param p0, "config"    # Lc8/WG;

    .prologue
    .line 241
    const-class v10, Lc8/fH;

    monitor-enter v10

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .local v7, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v9, "v"

    iget-object v11, p0, Lc8/WG;->v:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v9, "i"

    iget-object v11, p0, Lc8/WG;->i:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v4, "appsObj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v5

    .line 247
    .local v5, "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 248
    .local v3, "appNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 249
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 251
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v1, "appInfoObj":Lorg/json/JSONObject;
    const-string/jumbo v9, "v"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v9, "f"

    iget-wide v12, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    invoke-virtual {v1, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v9, "z"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v9, "s"

    iget-wide v12, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v1, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v9, "t"

    iget-wide v12, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    invoke-virtual {v1, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v9, "status"

    iget v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v9, "mappingUrl"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v9, "installedSeq"

    iget-wide v12, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v1, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v9, "installedVersion"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v9, "isOptional"

    iget-boolean v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v9, "isPreViewApp"

    iget-boolean v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v9, "name"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v9, "folders"

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 273
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v1    # "appInfoObj":Lorg/json/JSONObject;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "appNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "appsObj":Lorg/json/JSONObject;
    .end local v5    # "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :catch_0
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v9, "ZipAppUtils"

    const-string/jumbo v11, "Exception on parseConfig"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v11, v8, v12}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    const/4 v6, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit v10

    return-object v6

    .line 267
    .restart local v3    # "appNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "appsObj":Lorg/json/JSONObject;
    .restart local v5    # "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_1
    :try_start_3
    const-string/jumbo v9, "apps"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "configDataString":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 270
    const-string/jumbo v9, "parseGlobalConfig2String"

    invoke-static {v9, v6}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 241
    .end local v3    # "appNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "appsObj":Lorg/json/JSONObject;
    .end local v5    # "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v6    # "configDataString":Ljava/lang/String;
    .end local v7    # "data":Lorg/json/JSONObject;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static parsePrefixes(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 206
    .local v7, "prefixesTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 207
    .local v9, "updateCount":I
    if-nez p0, :cond_0

    .line 208
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v10

    const/4 v11, 0x0

    iput v11, v10, Lc8/uG;->updateCount:I

    .line 232
    :goto_0
    return-object v7

    .line 212
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "dataObj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 214
    .local v8, "prefixs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 215
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 217
    .local v4, "foldersObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 218
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 219
    .local v5, "foldersTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 220
    .local v3, "foldersIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "folder":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    goto :goto_2

    .line 225
    .end local v2    # "folder":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    .end local v0    # "dataObj":Lorg/json/JSONObject;
    .end local v3    # "foldersIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "foldersObj":Lorg/json/JSONObject;
    .end local v5    # "foldersTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v8    # "prefixs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ZipAppUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse prefixes Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v10

    iput v9, v10, Lc8/uG;->updateCount:I

    goto :goto_0
.end method

.method public static parseString2GlobalConfig(Ljava/lang/String;)Lc8/WG;
    .locals 14
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 286
    const-string/jumbo v11, "parseString2GlobalConfig"

    invoke-static {v11, p0}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    new-instance v2, Lc8/WG;

    invoke-direct {v2}, Lc8/WG;-><init>()V

    .line 290
    .local v2, "appsConfigOb":Lc8/WG;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "configObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "v"

    const-string/jumbo v12, ""

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "version":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 293
    iput-object v8, v2, Lc8/WG;->v:Ljava/lang/String;

    .line 298
    const-string/jumbo v11, "i"

    const-string/jumbo v12, "0"

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lc8/WG;->i:Ljava/lang/String;

    .line 299
    const-string/jumbo v11, "zcache"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 300
    .local v9, "zcacheInfo":Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 301
    const-string/jumbo v11, "0"

    iput-object v11, v2, Lc8/WG;->v:Ljava/lang/String;

    .line 352
    .end local v4    # "configObject":Lorg/json/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "zcacheInfo":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v2

    .line 295
    .restart local v4    # "configObject":Lorg/json/JSONObject;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, ""

    iput-object v11, v2, Lc8/WG;->v:Ljava/lang/String;

    goto :goto_0

    .end local v4    # "configObject":Lorg/json/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 304
    .restart local v4    # "configObject":Lorg/json/JSONObject;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "zcacheInfo":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v11, "apps"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 305
    .local v3, "appsjson":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 306
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 307
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 309
    .local v0, "appInfoObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 312
    new-instance v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-direct {v10}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 313
    .local v10, "zipAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    const-string/jumbo v11, "f"

    const-wide/16 v12, 0x5

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    .line 314
    const-string/jumbo v11, "v"

    const-string/jumbo v12, ""

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 315
    const-string/jumbo v11, "s"

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 316
    const-string/jumbo v11, "t"

    const-wide/16 v12, 0x5

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 317
    const-string/jumbo v11, "z"

    const-string/jumbo v12, ""

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 318
    const-string/jumbo v11, "isOptional"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 319
    const-string/jumbo v11, "isPreViewApp"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 320
    const-string/jumbo v11, "installedSeq"

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 321
    const-string/jumbo v11, "installedVersion"

    const-string/jumbo v12, "0.0"

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 322
    const-string/jumbo v11, "status"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 323
    iput-object v1, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 324
    const-string/jumbo v11, "folders"

    const-string/jumbo v12, ""

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 326
    .local v5, "folders":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_4

    .line 327
    const/4 v11, 0x1

    const-string/jumbo v12, "]"

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "foldersString":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 329
    const-string/jumbo v11, "Folders"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new folder for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    .end local v6    # "foldersString":[Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_2
    const-string/jumbo v11, "mappingUrl"

    const-string/jumbo v12, ""

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 337
    invoke-virtual {v10}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v11

    sget-object v12, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v11, v12, :cond_6

    .line 339
    iget-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    iget-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6

    .line 340
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lc8/NG;->parseUrlMappingInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ZZ)Z

    .line 344
    :cond_6
    iget-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v11

    sget-object v12, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v11, v12, :cond_7

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "//h5."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v12}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".taobao.com/app/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 347
    :cond_7
    invoke-virtual {v2, v1, v10}, Lc8/WG;->putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    goto/16 :goto_1

    .line 332
    :catch_1
    move-exception v11

    const-string/jumbo v11, "ZipAppUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to parse folders : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public static parseUrlSuffix(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v5, v6

    .line 109
    :goto_0
    return-object v5

    .line 73
    :cond_1
    const-string/jumbo v5, "http:"

    const-string/jumbo v7, ""

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "https:"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "matchingUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 75
    .local v2, "isMatched":Z
    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 78
    iget-wide v8, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2

    .line 79
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "13"

    invoke-interface {v5, v7, v8, v9}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v5, v6

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 85
    :cond_4
    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 86
    const/4 v2, 0x1

    .line 103
    :cond_5
    :goto_1
    if-eqz v2, :cond_9

    .line 105
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 107
    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 89
    .end local v0    # "base":Landroid/net/Uri;
    :cond_6
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 90
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "14"

    invoke-interface {v5, v7, p1, v8}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 97
    const/4 v2, 0x1

    .line 98
    goto :goto_1

    .line 94
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_9
    move-object v5, v6

    .line 109
    goto/16 :goto_0
.end method

.method public static parseZcacheConfig(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 175
    .local v7, "zcacheTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v7

    .line 179
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "dataObj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 184
    .local v5, "md5s":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v4, "md5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 187
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 189
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {v7, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "dataObj":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "md5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "md5s":Lorg/json/JSONArray;
    .end local v6    # "size":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static parseZcacheMap2String(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "zcacheTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "{}"

    .line 119
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 120
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method public static savaZcacheMapToLoc(Ljava/util/Hashtable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 568
    if-eqz p0, :cond_0

    .line 569
    :try_start_0
    invoke-static {p0}, Lc8/fH;->parseZcacheMap2String(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v3, "ZipAppUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ZcacheMap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lc8/AG;->saveZcacheConfig([BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 577
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const-string/jumbo v3, "ZipAppUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Zcache \u672c\u5730\u914d\u7f6e\u4fdd\u5b58\u5f02\u5e38\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 606
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 607
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 608
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lc8/fH;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 612
    :cond_0
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 610
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lc8/fH;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .local v2, "value":Ljava/util/Map;
    goto :goto_1

    .line 614
    .end local v2    # "value":Ljava/util/Map;
    :cond_2
    return-object v1
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 586
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 591
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/fH;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 595
    :cond_0
    :goto_1
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 593
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/fH;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .local v3, "value":Ljava/util/Map;
    goto :goto_1

    .line 597
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/Map;
    :cond_2
    return-object v2
.end method
