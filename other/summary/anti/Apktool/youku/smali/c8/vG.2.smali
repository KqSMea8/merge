.class public Lc8/vG;
.super Ljava/lang/Object;
.source "WVPackageAppRuntime.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageApp-Runtime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSupportPackageApp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const-string/jumbo v2, "http"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const-string/jumbo v2, "https"

    const-string/jumbo v3, "http"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 398
    :cond_0
    :goto_0
    invoke-static {p0}, Lc8/fH;->getLocPathByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 400
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "zipAppFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 403
    .end local v1    # "zipAppFile":Ljava/io/File;
    :goto_1
    return v2

    .line 395
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 403
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 320
    invoke-static {}, Lc8/QG;->getInstance()Lc8/QG;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/QG;->getZipAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "appName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 322
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug :appName==null["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v4

    .line 349
    :cond_1
    :goto_0
    return-object v0

    .line 328
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v5

    invoke-virtual {v5, v1}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 329
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v0, :cond_1

    .line 330
    sget-object v5, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v5, v5, Lc8/EB;->isAutoRegisterApp:Z

    if-eqz v5, :cond_3

    .line 331
    new-instance v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-direct {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;-><init>()V

    .line 332
    .local v3, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iput-object v1, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 333
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 334
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    .line 335
    invoke-static {}, Lc8/fG;->getInstance()Lc8/fG;

    move-result-object v5

    invoke-virtual {v5}, Lc8/fG;->resetConfig()V

    .line 336
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 337
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug :autoRegist ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v3    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug :appInfo==null["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v4

    .line 343
    goto :goto_0

    .line 346
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug \u901a\u8fc7url\u83b7\u53d6APPinfo\u5f02\u5e38ul: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  appName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "],errorMag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 349
    goto/16 :goto_0
.end method

.method private static getComboUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "dataIndex":I
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    move-object v0, p1

    .line 170
    .local v0, "comboUrlData":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Landroid/webkit/WebResourceResponse;
    .locals 36
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 426
    .local v32, "startTime":J
    invoke-static/range {p0 .. p0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 427
    invoke-static/range {p0 .. p1}, Lc8/vG;->isAvailable(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Ljava/lang/String;

    move-result-object v20

    .line 428
    .local v20, "errorCode":Ljava/lang/String;
    if-eqz p1, :cond_14

    if-nez v20, :cond_14

    .line 429
    move-object/from16 v0, p1

    iget v5, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v6, Lc8/dH;->ZIP_REMOVED:I

    if-eq v5, v6, :cond_b

    .line 431
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lc8/fH;->parseUrlSuffix(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 432
    .local v30, "resPath":Ljava/lang/String;
    if-eqz v30, :cond_b

    .line 433
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1, v6}, Lc8/AG;->readZipAppResByte(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)[B

    move-result-object v18

    .line 436
    .local v18, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 437
    .local v26, "readTime":J
    invoke-static/range {p0 .. p0}, Lc8/dI;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 438
    .local v24, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    array-length v5, v0

    if-lez v5, :cond_e

    .line 439
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 440
    .local v22, "in":Ljava/io/InputStream;
    if-nez v22, :cond_3

    .line 442
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 443
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_2

    const-string/jumbo v5, "unknown-0"

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create ByteArrayInputStream failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "11"

    invoke-interface {v6, v5, v7, v8}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    const/16 v28, 0x0

    .line 523
    .end local v18    # "data":[B
    .end local v20    # "errorCode":Ljava/lang/String;
    .end local v22    # "in":Ljava/io/InputStream;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v26    # "readTime":J
    .end local v30    # "resPath":Ljava/lang/String;
    .end local v32    # "startTime":J
    :cond_1
    :goto_1
    return-object v28

    .line 443
    .restart local v18    # "data":[B
    .restart local v20    # "errorCode":Ljava/lang/String;
    .restart local v22    # "in":Ljava/io/InputStream;
    .restart local v24    # "mimeType":Ljava/lang/String;
    .restart local v26    # "readTime":J
    .restart local v30    # "resPath":Ljava/lang/String;
    .restart local v32    # "startTime":J
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 450
    :cond_3
    const-wide/16 v34, 0x0

    .line 451
    .local v34, "verifyTime":J
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lc8/vG;->needCheckSecurity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 452
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v5

    sget-object v6, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    .line 454
    .local v25, "path":Ljava/lang/String;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2, v6}, Lc8/cH;->isFileSecrity(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 457
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 458
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_5

    const-string/jumbo v5, "unknown-0"

    :goto_2
    const-string/jumbo v7, "10"

    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0, v7}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_4
    const/16 v28, 0x0

    goto :goto_1

    .line 458
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 462
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 464
    .end local v25    # "path":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 465
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug  \u5165\u53e3:\u547d\u4e2d["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_8
    sub-long v12, v26, v32

    .line 468
    .local v12, "readUseTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v34, v6

    if-nez v5, :cond_c

    const-wide/16 v14, 0x0

    .line 469
    .local v14, "verifyUseTime":J
    :goto_3
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 470
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v7, v34, v8

    if-nez v7, :cond_d

    const-string/jumbo v7, "false"

    :goto_4
    add-long v8, v12, v14

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    move-wide/from16 v16, v0

    invoke-interface/range {v5 .. v17}, Lc8/aG;->commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 471
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-interface {v5, v6, v8, v9}, Lc8/aG;->commitPackageVisitSuccess(Ljava/lang/String;J)V

    .line 473
    :cond_9
    new-instance v28, Landroid/webkit/WebResourceResponse;

    sget-object v5, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 474
    .local v28, "res":Landroid/webkit/WebResourceResponse;
    if-eqz v28, :cond_e

    .line 475
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v29

    .line 476
    .local v29, "resInfo":Lc8/YG;
    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 478
    :try_start_1
    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    invoke-static {v5}, Lc8/fH;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v21

    .line 479
    .local v21, "headers":Ljava/util/Map;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 480
    .end local v21    # "headers":Ljava/util/Map;
    :catch_0
    move-exception v19

    .line 481
    .local v19, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "JSON to Map error \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 516
    .end local v12    # "readUseTime":J
    .end local v14    # "verifyUseTime":J
    .end local v18    # "data":[B
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "errorCode":Ljava/lang/String;
    .end local v22    # "in":Ljava/io/InputStream;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v26    # "readTime":J
    .end local v28    # "res":Landroid/webkit/WebResourceResponse;
    .end local v29    # "resInfo":Lc8/YG;
    .end local v30    # "resPath":Ljava/lang/String;
    .end local v32    # "startTime":J
    .end local v34    # "verifyTime":J
    :catch_1
    move-exception v19

    .line 518
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 519
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_17

    const-string/jumbo v5, "unknown-0"

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "9"

    invoke-interface {v6, v5, v7, v8}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_a
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug \u5165\u53e3:\u8bbf\u95ee\u672c\u5730zip\u8d44\u6e90\u5931\u8d25 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_6
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 468
    .restart local v12    # "readUseTime":J
    .restart local v18    # "data":[B
    .restart local v20    # "errorCode":Ljava/lang/String;
    .restart local v22    # "in":Ljava/io/InputStream;
    .restart local v24    # "mimeType":Ljava/lang/String;
    .restart local v26    # "readTime":J
    .restart local v30    # "resPath":Ljava/lang/String;
    .restart local v32    # "startTime":J
    .restart local v34    # "verifyTime":J
    :cond_c
    sub-long v14, v34, v26

    goto/16 :goto_3

    .line 470
    .restart local v14    # "verifyUseTime":J
    :cond_d
    :try_start_3
    const-string/jumbo v7, "true"

    goto/16 :goto_4

    .line 487
    .end local v12    # "readUseTime":J
    .end local v14    # "verifyUseTime":J
    .end local v22    # "in":Ljava/io/InputStream;
    .end local v34    # "verifyTime":J
    :cond_e
    const-string/jumbo v5, "??"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 488
    .local v4, "comboIndex":I
    const/4 v5, -0x1

    if-ne v5, v4, :cond_b

    .line 490
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 491
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v5

    invoke-virtual {v5}, Lc8/GG;->getInfoMap()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lc8/BG;

    .line 492
    .local v23, "infoSnippet":Lc8/BG;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 494
    move-object/from16 v0, v23

    iget v5, v0, Lc8/BG;->failCount:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_f

    .line 495
    const/4 v5, 0x1

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lc8/BG;->needReinstall:Z

    .line 497
    :cond_f
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 498
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug \u5165\u53e3:\u672a\u547d\u4e2d["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_10
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_11

    const-string/jumbo v5, "unknown-0"

    :goto_7
    const-string/jumbo v7, "12"

    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0, v7}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 502
    :cond_12
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_13

    const-string/jumbo v5, "unknown"

    :goto_8
    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0}, Lc8/aG;->commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageappforDebug \u5165\u53e3:\u4e0d\u5728\u9884\u52a0\u8f7d\u5305\u4e2d["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 502
    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    goto :goto_8

    .line 511
    .end local v4    # "comboIndex":I
    .end local v18    # "data":[B
    .end local v23    # "infoSnippet":Lc8/BG;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v26    # "readTime":J
    .end local v30    # "resPath":Ljava/lang/String;
    :cond_14
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 512
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_16

    const-string/jumbo v5, "unknown-0"

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v6, v5, v0, v1}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 512
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_9

    .line 519
    .end local v20    # "errorCode":Ljava/lang/String;
    .end local v32    # "startTime":J
    .restart local v19    # "e":Ljava/lang/Exception;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5
.end method

.method public static getWrapResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Lc8/II;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-static {p0, p1}, Lc8/vG;->getResourceResponse(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 410
    .local v0, "res":Landroid/webkit/WebResourceResponse;
    if-eqz v0, :cond_1

    .line 411
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 412
    new-instance v1, Lc8/II;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 419
    :goto_0
    return-object v1

    .line 415
    :cond_0
    new-instance v1, Lc8/II;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 419
    goto :goto_0
.end method

.method public static getWrapResourceResponse(Ljava/lang/String;Lc8/VG;)Lc8/II;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filedata"    # Lc8/VG;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {p0, p1}, Lc8/vG;->getZcacheResourceResponse(Ljava/lang/String;Lc8/VG;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/webkit/WebResourceResponse;
    if-eqz v0, :cond_1

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 54
    new-instance v1, Lc8/II;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 61
    :goto_0
    return-object v1

    .line 57
    :cond_0
    new-instance v1, Lc8/II;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 61
    goto :goto_0
.end method

.method public static getZcacheResourceResponse(Ljava/lang/String;Lc8/VG;)Landroid/webkit/WebResourceResponse;
    .locals 34
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filedata"    # Lc8/VG;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_f

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 70
    .local v30, "startTime":J
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/VG;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v4

    .line 71
    .local v4, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lc8/vG;->isAvailable(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Ljava/lang/String;

    move-result-object v21

    .line 73
    .local v21, "errorCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v21, :cond_4

    .line 75
    :cond_0
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 76
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez v4, :cond_3

    const-string/jumbo v5, "unknown-0"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v6, v5, v0, v1}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    const/16 v28, 0x0

    .line 153
    .end local v4    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v21    # "errorCode":Ljava/lang/String;
    .end local v30    # "startTime":J
    :cond_2
    :goto_1
    return-object v28

    .line 76
    .restart local v4    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v21    # "errorCode":Ljava/lang/String;
    .restart local v30    # "startTime":J
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 80
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lc8/VG;->path:Ljava/lang/String;

    invoke-static {v5}, Lc8/JD;->read(Ljava/lang/String;)[B

    move-result-object v19

    .line 82
    .local v19, "data":[B
    invoke-static/range {p0 .. p0}, Lc8/dI;->getMimeTypeExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 83
    .local v24, "mimeType":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 84
    .local v26, "readTime":J
    if-eqz v19, :cond_12

    move-object/from16 v0, v19

    array-length v5, v0

    if-lez v5, :cond_12

    .line 85
    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v23, "in":Ljava/io/InputStream;
    if-nez v23, :cond_7

    .line 88
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 89
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez v4, :cond_6

    const-string/jumbo v5, "unknown-0"

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create ByteArrayInputStream failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "11"

    invoke-interface {v6, v5, v7, v8}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5
    const/16 v28, 0x0

    goto :goto_1

    .line 89
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 96
    :cond_7
    const-wide/16 v32, 0x0

    .line 97
    .local v32, "verifyTime":J
    iget-object v5, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lc8/vG;->needCheckSecurity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 98
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/VG;->path:Ljava/lang/String;

    iget-object v7, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1, v6, v7}, Lc8/cH;->isFileSecrity(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 100
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 101
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez v4, :cond_9

    const-string/jumbo v5, "unknown-0"

    :goto_3
    const-string/jumbo v7, "10"

    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0, v7}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 101
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 105
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 107
    :cond_b
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 108
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ZcacheforDebug :\u547d\u4e2d["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_c
    sub-long v12, v26, v30

    .line 111
    .local v12, "readUseTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v32, v6

    if-nez v5, :cond_10

    const-wide/16 v14, 0x0

    .line 112
    .local v14, "verifyUseTime":J
    :goto_4
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 113
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    iget-object v6, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v7, v32, v8

    if-nez v7, :cond_11

    const-string/jumbo v7, "false"

    :goto_5
    add-long v8, v12, v14

    const-wide/16 v10, 0x0

    iget-wide v0, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    move-wide/from16 v16, v0

    invoke-interface/range {v5 .. v17}, Lc8/aG;->commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 114
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    iget-object v6, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    iget-wide v8, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-interface {v5, v6, v8, v9}, Lc8/aG;->commitPackageVisitSuccess(Ljava/lang/String;J)V

    .line 116
    :cond_d
    new-instance v28, Landroid/webkit/WebResourceResponse;

    sget-object v5, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 117
    .local v28, "resourceResponse":Landroid/webkit/WebResourceResponse;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v4, v0}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v25

    .line 118
    .local v25, "resInfo":Lc8/YG;
    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 120
    :try_start_1
    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    invoke-static {v5}, Lc8/fH;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v22

    .line 121
    .local v22, "headers":Ljava/util/Map;
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 122
    .end local v22    # "headers":Ljava/util/Map;
    :catch_0
    move-exception v20

    .line 123
    .local v20, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "JSON to Map error \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 145
    .end local v4    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v12    # "readUseTime":J
    .end local v14    # "verifyUseTime":J
    .end local v19    # "data":[B
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "errorCode":Ljava/lang/String;
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v25    # "resInfo":Lc8/YG;
    .end local v26    # "readTime":J
    .end local v28    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .end local v30    # "startTime":J
    .end local v32    # "verifyTime":J
    :catch_1
    move-exception v20

    .line 147
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 148
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez p1, :cond_17

    const-string/jumbo v5, "unknown-0"

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "9"

    invoke-interface {v6, v5, v7, v8}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_e
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ZcacheforDebug \u5165\u53e3:\u8bbf\u95ee\u672c\u5730zip\u8d44\u6e90\u5931\u8d25 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_7
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 111
    .restart local v4    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v12    # "readUseTime":J
    .restart local v19    # "data":[B
    .restart local v21    # "errorCode":Ljava/lang/String;
    .restart local v23    # "in":Ljava/io/InputStream;
    .restart local v24    # "mimeType":Ljava/lang/String;
    .restart local v26    # "readTime":J
    .restart local v30    # "startTime":J
    .restart local v32    # "verifyTime":J
    :cond_10
    sub-long v14, v32, v26

    goto/16 :goto_4

    .line 113
    .restart local v14    # "verifyUseTime":J
    :cond_11
    :try_start_3
    const-string/jumbo v7, "true"

    goto/16 :goto_5

    .line 128
    .end local v12    # "readUseTime":J
    .end local v14    # "verifyUseTime":J
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v32    # "verifyTime":J
    :cond_12
    const-string/jumbo v5, "??"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 129
    .local v18, "comboIndex":I
    const/4 v5, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_f

    .line 131
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 132
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v4, v0}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 133
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v5

    invoke-virtual {v5}, Lc8/GG;->getInfoMap()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/BG;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lc8/BG;->needReinstall:Z

    .line 134
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez v4, :cond_14

    const-string/jumbo v5, "unknown-0"

    :goto_8
    const-string/jumbo v7, "12"

    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0, v7}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_13
    :goto_9
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 140
    const-string/jumbo v5, "PackageApp-Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ZcacheforDebug :\u547d\u4e2durl \u4f46\u672c\u5730\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25\uff1a\u6587\u4ef6\u6d41\u4e3a\u7a7a["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 134
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 136
    :cond_15
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v6

    if-nez v4, :cond_16

    const-string/jumbo v5, "unknown"

    :goto_a
    move-object/from16 v0, p0

    invoke-interface {v6, v5, v0}, Lc8/aG;->commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    iget-object v5, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    .line 148
    .end local v4    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v18    # "comboIndex":I
    .end local v19    # "data":[B
    .end local v21    # "errorCode":Ljava/lang/String;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v26    # "readTime":J
    .end local v30    # "startTime":J
    .restart local v20    # "e":Ljava/lang/Exception;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v7, v0, Lc8/VG;->appName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lc8/VG;->seq:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6
.end method

.method public static isAvailable(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 359
    if-nez p1, :cond_0

    .line 360
    const-string/jumbo v1, "20"

    .line 383
    :goto_0
    return-object v1

    .line 361
    :cond_0
    iget v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v2, Lc8/dH;->ZIP_REMOVED:I

    if-ne v1, v2, :cond_2

    .line 362
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v1

    invoke-virtual {v1}, Lc8/GG;->getInfoMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/BG;

    .line 363
    .local v0, "infoSnippet":Lc8/BG;
    iget-wide v2, v0, Lc8/BG;->count:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 364
    sget v1, Lc8/dH;->ZIP_NEWEST:I

    iput v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 366
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->startUpdateAppsTask()V

    .line 368
    :cond_1
    const-string/jumbo v1, "24"

    goto :goto_0

    .line 369
    .end local v0    # "infoSnippet":Lc8/BG;
    :cond_2
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v1

    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v1, v2, :cond_3

    .line 370
    const-string/jumbo v1, "25"

    goto :goto_0

    .line 371
    :cond_3
    iget-wide v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 372
    iget-wide v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 373
    const-string/jumbo v1, "26"

    goto :goto_0

    .line 375
    :cond_4
    const-string/jumbo v1, "20"

    goto :goto_0

    .line 376
    :cond_5
    sget-object v1, Lc8/DB;->commonConfig:Lc8/EB;

    iget v1, v1, Lc8/EB;->packageAppStatus:I

    if-nez v1, :cond_6

    .line 377
    const-string/jumbo v1, "23"

    goto :goto_0

    .line 378
    :cond_6
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getUpdateType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    move-result-object v1

    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_ONLINE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    if-ne v1, v2, :cond_7

    .line 379
    const-string/jumbo v1, "22"

    goto :goto_0

    .line 380
    :cond_7
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getUpdateType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    move-result-object v1

    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_FORCE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    if-ne v1, v2, :cond_8

    iget-wide v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    iget-wide v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 381
    const-string/jumbo v1, "21"

    goto/16 :goto_0

    .line 383
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static makeComboRes(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 46
    .param p0, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 180
    .local v42, "startTime":J
    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v4, v4, Lc8/EB;->isOpenCombo:Z

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo v4, "??"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 181
    :cond_0
    const/16 v37, 0x0

    .line 310
    :cond_1
    :goto_0
    return-object v37

    .line 184
    :cond_2
    invoke-static/range {p0 .. p0}, Lc8/dI;->parseCombo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 186
    .local v24, "comboUrls":[Ljava/lang/String;
    if-nez v24, :cond_3

    .line 187
    const/16 v37, 0x0

    goto :goto_0

    .line 189
    :cond_3
    const-string/jumbo v4, "??"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 191
    .local v23, "comboIndex":I
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_4

    .line 192
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    .line 194
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 196
    .local v45, "urlPrefix":Ljava/lang/String;
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    .local v22, "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v24

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 198
    .local v29, "filePathDatas":[Ljava/lang/String;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v20, "appList":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    const/16 v40, 0x0

    .line 201
    .local v40, "resHeaders":Ljava/util/Map;
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_2
    move-object/from16 v0, v24

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_d

    .line 202
    aget-object v4, v24, v30

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 205
    aget-object v4, v24, v30

    move-object/from16 v0, v45

    invoke-static {v0, v4}, Lc8/vG;->getComboUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 206
    .local v36, "path":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v19

    .line 207
    .local v19, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v19, :cond_5

    .line 208
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lc8/WG;->isZcacheUrl(Ljava/lang/String;)Lc8/VG;

    move-result-object v25

    .line 209
    .local v25, "data":Lc8/VG;
    if-eqz v25, :cond_5

    .line 210
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/VG;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v19

    .line 213
    .end local v25    # "data":Lc8/VG;
    :cond_5
    if-eqz v19, :cond_6

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lc8/vG;->isAvailable(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 214
    :cond_6
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 215
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZcacheforDebug \u5165\u53e3:combo\u672a\u547d\u4e2d["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] \u542b\u975ezcache \u8d44\u6e90:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_7
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 219
    :cond_8
    invoke-static/range {v36 .. v36}, Lc8/fH;->getLocPathByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 220
    .local v32, "localPath":Ljava/lang/String;
    if-nez v32, :cond_a

    .line 221
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 222
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZcacheforDebug \u5165\u53e3:combo\u672a\u547d\u4e2d["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] \u542b\u975ezcache \u8d44\u6e90:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_9
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 228
    :cond_a
    if-nez v40, :cond_b

    .line 229
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v41

    .line 230
    .local v41, "resInfo":Lc8/YG;
    move-object/from16 v0, v41

    iget-object v4, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    if-eqz v4, :cond_b

    .line 232
    :try_start_0
    move-object/from16 v0, v41

    iget-object v4, v0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    invoke-static {v4}, Lc8/fH;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v40

    .line 239
    .end local v41    # "resInfo":Lc8/YG;
    :cond_b
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    aput-object v32, v29, v30

    .line 201
    .end local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v32    # "localPath":Ljava/lang/String;
    .end local v36    # "path":Ljava/lang/String;
    :cond_c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 233
    .restart local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v32    # "localPath":Ljava/lang/String;
    .restart local v36    # "path":Ljava/lang/String;
    .restart local v41    # "resInfo":Lc8/YG;
    :catch_0
    move-exception v26

    .line 234
    .local v26, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "JSON to Map error \uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 242
    .end local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v32    # "localPath":Ljava/lang/String;
    .end local v36    # "path":Ljava/lang/String;
    .end local v41    # "resInfo":Lc8/YG;
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 243
    .local v34, "matchTime":J
    const/16 v30, 0x0

    :goto_4
    move-object/from16 v0, v29

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_14

    .line 244
    aget-object v4, v29, v30

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 247
    new-instance v28, Ljava/io/File;

    aget-object v4, v29, v30

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v28, "file":Ljava/io/File;
    invoke-static/range {v28 .. v28}, Lc8/JD;->read(Ljava/io/File;)[B

    move-result-object v25

    .line 249
    .local v25, "data":[B
    if-eqz v25, :cond_f

    move-object/from16 v0, v25

    array-length v4, v0

    if-lez v4, :cond_f

    .line 251
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .end local v25    # "data":[B
    .end local v28    # "file":Ljava/io/File;
    :cond_e
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 253
    .restart local v25    # "data":[B
    .restart local v28    # "file":Ljava/io/File;
    :catch_1
    move-exception v4

    const/16 v37, 0x0

    goto/16 :goto_0

    .line 257
    :cond_f
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 258
    aget-object v4, v24, v30

    move-object/from16 v0, v45

    invoke-static {v0, v4}, Lc8/vG;->getComboUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 259
    .local v27, "failedUrl":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v19

    .line 260
    .restart local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 261
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-nez v19, :cond_11

    const-string/jumbo v4, "unknown-0"

    :goto_5
    const-string/jumbo v6, "15"

    move-object/from16 v0, v27

    invoke-interface {v5, v4, v0, v6}, Lc8/aG;->commitPackageVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v27    # "failedUrl":Ljava/lang/String;
    :cond_10
    :goto_6
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 261
    .restart local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v27    # "failedUrl":Ljava/lang/String;
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "-0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 263
    :cond_12
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    if-nez v19, :cond_13

    const-string/jumbo v4, "unknown"

    :goto_7
    move-object/from16 v0, p0

    invoke-interface {v5, v4, v0}, Lc8/aG;->commitPackageWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    goto :goto_7

    .line 269
    .end local v19    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v25    # "data":[B
    .end local v27    # "failedUrl":Ljava/lang/String;
    .end local v28    # "file":Ljava/io/File;
    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v44

    .line 271
    .local v44, "toatlData":[B
    :try_start_2
    new-instance v31, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 272
    .local v31, "in":Ljava/io/InputStream;
    invoke-static/range {p0 .. p0}, Lc8/dI;->getMimeTypeExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 273
    .local v33, "mimeType":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 274
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZcacheforDebug :\u547d\u4e2dcombo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 278
    .local v38, "readTime":J
    sub-long v12, v38, v34

    .line 279
    .local v12, "readUseTime":J
    sub-long v10, v34, v42

    .line 280
    .local v10, "matchUseTime":J
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 281
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 282
    .local v21, "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_16
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 283
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 284
    .local v18, "app":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v18, :cond_16

    .line 285
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-interface {v4, v5, v6, v7}, Lc8/aG;->commitPackageVisitSuccess(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    .line 301
    .end local v10    # "matchUseTime":J
    .end local v12    # "readUseTime":J
    .end local v18    # "app":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v21    # "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v31    # "in":Ljava/io/InputStream;
    .end local v33    # "mimeType":Ljava/lang/String;
    .end local v38    # "readTime":J
    :catch_2
    move-exception v26

    .line 302
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZcacheforDebug \u5165\u53e3:\u8bbf\u95ee\u672c\u5730combo zip\u8d44\u6e90\u5931\u8d25 ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_17
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 308
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZcacheforDebug \u5165\u53e3:combo\u672a\u547d\u4e2d["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_18
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v10    # "matchUseTime":J
    .restart local v12    # "readUseTime":J
    .restart local v21    # "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .restart local v31    # "in":Ljava/io/InputStream;
    .restart local v33    # "mimeType":Ljava/lang/String;
    .restart local v38    # "readTime":J
    :cond_19
    :try_start_3
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    const-string/jumbo v6, "COMBO"

    const-string/jumbo v7, "false"

    add-long v8, v12, v10

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    invoke-interface/range {v5 .. v17}, Lc8/aG;->commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 290
    .end local v21    # "apps":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_1a
    new-instance v37, Landroid/webkit/WebResourceResponse;

    sget-object v4, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 291
    .local v37, "res":Landroid/webkit/WebResourceResponse;
    if-eqz v37, :cond_17

    .line 292
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 293
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v4

    const/16 v6, 0xc8

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v9}, Lc8/cG;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V

    .line 296
    :cond_1b
    if-eqz v40, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 297
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private static needCheckSecurity(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/cH;->getAppSample(Ljava/lang/String;)D

    move-result-wide v2

    .line 531
    .local v2, "sampleRate":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 532
    .local v0, "random":D
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 533
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u91c7\u6837\u7387\u4e0d\u6ee1\u8db3\u8981\u6c42\uff0c\u4e0d\u5bf9\u3010"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u3011\u8fdb\u884c\u6821\u9a8c \u5f53\u524d\u914d\u7f6e\u91c7\u6837\u7387\u4e3a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  \u83b7\u53d6\u7684\u968f\u673a\u503c\u4e3a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    const/4 v4, 0x0

    .line 541
    :goto_0
    return v4

    .line 538
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    const-string/jumbo v4, "PackageApp-Runtime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u91c7\u6837\u7387\u6ee1\u8db3\u8981\u6c42\uff0c\u5bf9\u3010"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u3011\u8fdb\u884c\u6821\u9a8c \u5f53\u524d\u914d\u7f6e\u91c7\u6837\u7387\u4e3a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  \u83b7\u53d6\u7684\u968f\u673a\u503c\u4e3a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
