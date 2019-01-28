.class public Lc8/GG;
.super Ljava/lang/Object;
.source "WVPackageAppCleanup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FG;,
        Lc8/EG;
    }
.end annotation


# static fields
.field private static final CLEAN_CAUSE_AT_CLEAN_PERIOD:I = 0x0

.field private static final CLEAN_CAUSE_LEVEL_HIGH:I = 0x1

.field public static final PER_APP_SPACE:J = 0xaae60L

.field private static SP_IFNO_KEY:Ljava/lang/String; = null

.field private static SP_KEY:Ljava/lang/String; = null

.field private static SP_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WVPackageAppCleanup"

.field private static instance:Lc8/GG;


# instance fields
.field infoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/BG;",
            ">;"
        }
    .end annotation
.end field

.field private lastDelTime:J

.field private listener:Lc8/EG;

.field private needWriteToDisk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "WVpackageApp"

    sput-object v0, Lc8/GG;->SP_NAME:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "lastDel"

    sput-object v0, Lc8/GG;->SP_KEY:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "sp_ifno_key"

    sput-object v0, Lc8/GG;->SP_IFNO_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/GG;->needWriteToDisk:Z

    .line 61
    sget-object v0, Lc8/GG;->SP_NAME:Ljava/lang/String;

    sget-object v1, Lc8/GG;->SP_KEY:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/GG;->lastDelTime:J

    .line 62
    return-void
.end method

.method private addInfoIfNeed(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 222
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    new-instance v0, Lc8/BG;

    iget-object v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v6

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lc8/BG;-><init>(Ljava/lang/String;JJII)V

    .line 225
    .local v0, "value":Lc8/BG;
    iget-object v1, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v0    # "value":Lc8/BG;
    :cond_0
    return-void
.end method

.method private appMonior(I)V
    .locals 13
    .param p1, "cleanCause"    # I

    .prologue
    .line 339
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v0

    .line 340
    .local v0, "locConfig":Lc8/WG;
    invoke-virtual {v0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v12

    .line 342
    .local v12, "packageApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-direct {p0}, Lc8/GG;->getDevAvailableSpace()J

    move-result-wide v2

    .line 343
    .local v2, "beforeDelSpace":J
    invoke-direct {p0}, Lc8/GG;->getStorageCapacity()I

    move-result v4

    .line 344
    .local v4, "expectedNum":I
    invoke-virtual {v12}, Ljava/util/Hashtable;->size()I

    move-result v5

    .line 345
    .local v5, "installedNum":I
    sub-int v1, v5, v4

    if-gez v1, :cond_1

    const/4 v6, 0x0

    .line 346
    .local v6, "willDeleteCount":I
    :goto_0
    invoke-direct {p0, v12}, Lc8/GG;->getCustomRadio(Ljava/util/Hashtable;)F

    move-result v7

    .line 347
    .local v7, "customRadio":F
    sget v1, Lc8/dH;->ZIP_REMOVED:I

    invoke-direct {p0, v12, v1}, Lc8/GG;->getCountByType(Ljava/util/Hashtable;I)I

    move-result v8

    .line 348
    .local v8, "noCacheCount":I
    sget v1, Lc8/dH;->ZIP_NEWEST:I

    invoke-direct {p0, v12, v1}, Lc8/GG;->getCountByType(Ljava/util/Hashtable;I)I

    move-result v9

    .line 349
    .local v9, "normalCount":I
    invoke-direct {p0, v8, v9}, Lc8/GG;->getNoCacheRatio(II)F

    move-result v10

    .line 350
    .local v10, "noCacheRatio":F
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    move v11, p1

    invoke-interface/range {v1 .. v11}, Lc8/aG;->onStartCleanAppCache(JIIIFIIFI)V

    .line 356
    :cond_0
    return-void

    .line 345
    .end local v6    # "willDeleteCount":I
    .end local v7    # "customRadio":F
    .end local v8    # "noCacheCount":I
    .end local v9    # "normalCount":I
    .end local v10    # "noCacheRatio":F
    :cond_1
    sub-int v6, v5, v4

    goto :goto_0
.end method

.method private atCleanUpPeriod()Z
    .locals 4

    .prologue
    .line 171
    iget-wide v0, p0, Lc8/GG;->lastDelTime:J

    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->packageRemoveInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcToRetainApp(Ljava/util/Hashtable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "allApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    :try_start_0
    new-instance v2, Lc8/DG;

    invoke-direct {v2, p0, p1}, Lc8/DG;-><init>(Lc8/GG;Ljava/util/Hashtable;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    invoke-direct {p0, p1, v1}, Lc8/GG;->getMostFrequentUsedApp(Ljava/util/Hashtable;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WVPackageAppCleanup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCleanUpCacheExist()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCount()V
    .locals 10

    .prologue
    .line 516
    iget-object v5, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 517
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/BG;

    .line 518
    .local v3, "next":Lc8/BG;
    iget-wide v0, v3, Lc8/BG;->count:D

    .line 519
    .local v0, "currentCount":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    iput-wide v6, v3, Lc8/BG;->count:D

    .line 520
    iget-wide v6, v3, Lc8/BG;->count:D

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    .line 521
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lc8/BG;->count:D

    .line 522
    const-string/jumbo v5, "WVPackageAppCleanup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lc8/BG;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "visit count from : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lc8/BG;->count:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v0    # "currentCount":D
    .end local v3    # "next":Lc8/BG;
    :cond_1
    return-void
.end method

.method private getAvailableSpace()J
    .locals 4

    .prologue
    .line 615
    invoke-direct {p0}, Lc8/GG;->getDevAvailableSpace()J

    move-result-wide v0

    .line 618
    .local v0, "availableSpace":J
    invoke-direct {p0}, Lc8/GG;->getInstalledSpace()J

    move-result-wide v2

    .line 619
    .local v2, "installedSpace":J
    add-long/2addr v0, v2

    .line 620
    return-wide v0
.end method

.method private getCountByType(Ljava/util/Hashtable;I)I
    .locals 8
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "packageApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    const/4 v0, 0x0

    .line 374
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 375
    .local v2, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v4, v5, :cond_0

    .line 376
    iget v4, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    if-ne v4, p2, :cond_0

    .line 377
    iget-object v4, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/BG;

    .line 378
    .local v3, "infoSnippet":Lc8/BG;
    if-eqz v3, :cond_0

    .line 379
    int-to-double v4, v0

    iget-wide v6, v3, Lc8/BG;->count:D

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 384
    .end local v2    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v3    # "infoSnippet":Lc8/BG;
    :cond_1
    return v0
.end method

.method private getCustomRadio(Ljava/util/Hashtable;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "packageApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    const/4 v3, 0x0

    .line 393
    .local v3, "totalCount":I
    const/4 v0, 0x0

    .line 394
    .local v0, "customAppCount":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 395
    .local v2, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v4, v5, :cond_0

    .line 396
    iget-boolean v4, v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-eqz v4, :cond_1

    .line 397
    add-int/lit8 v0, v0, 0x1

    .line 399
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_2
    if-nez v3, :cond_3

    .line 405
    const/4 v4, 0x0

    .line 407
    :goto_1
    return v4

    :cond_3
    int-to-float v4, v0

    int-to-float v5, v3

    div-float/2addr v4, v5

    goto :goto_1
.end method

.method private getDevAvailableSpace()J
    .locals 10

    .prologue
    .line 416
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 417
    .local v4, "devStatFs":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 418
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 427
    .end local v4    # "devStatFs":Landroid/os/StatFs;
    .local v0, "available":J
    :goto_0
    return-wide v0

    .line 420
    .end local v0    # "available":J
    .restart local v4    # "devStatFs":Landroid/os/StatFs;
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 421
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long v0, v6, v2

    .restart local v0    # "available":J
    goto :goto_0

    .line 423
    .end local v0    # "available":J
    .end local v2    # "blockSize":J
    .end local v4    # "devStatFs":Landroid/os/StatFs;
    :catch_0
    move-exception v5

    .line 424
    .local v5, "e":Ljava/lang/RuntimeException;
    const-wide/32 v0, 0x7fffffff

    .line 425
    .restart local v0    # "available":J
    const/16 v6, 0x3bca

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lc8/FF;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getInstallNum(Ljava/util/Hashtable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "allApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    const/4 v1, 0x0

    .line 581
    .local v1, "installNum":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 582
    .local v2, "zipAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isAppInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v2    # "zipAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_1
    return v1
.end method

.method private getInstalledSpace()J
    .locals 8

    .prologue
    .line 648
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    .line 649
    .local v1, "locConfig":Lc8/WG;
    const-wide/16 v2, 0x0

    .line 650
    .local v2, "installedSpace":J
    invoke-virtual {v1}, Lc8/WG;->isAvailableData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    invoke-virtual {v1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v0

    .line 652
    .local v0, "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-direct {p0, v0}, Lc8/GG;->getInstallNum(Ljava/util/Hashtable;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xaae60

    mul-long v2, v4, v6

    .line 655
    .end local v0    # "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_0
    return-wide v2
.end method

.method public static getInstance()Lc8/GG;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lc8/GG;->instance:Lc8/GG;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lc8/GG;

    invoke-direct {v0}, Lc8/GG;-><init>()V

    sput-object v0, Lc8/GG;->instance:Lc8/GG;

    .line 73
    :cond_0
    sget-object v0, Lc8/GG;->instance:Lc8/GG;

    return-object v0
.end method

.method private getMaxInstallCapacity()I
    .locals 6

    .prologue
    const-wide/32 v4, 0x3200000

    .line 627
    invoke-direct {p0}, Lc8/GG;->getAvailableSpace()J

    move-result-wide v0

    .line 629
    .local v0, "availableSpace":J
    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 631
    const/16 v2, 0x1e

    .line 640
    .local v2, "result":I
    :goto_0
    return v2

    .line 632
    .end local v2    # "result":I
    :cond_0
    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    const-wide/32 v4, 0x6400000

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 635
    const/16 v2, 0x4b

    .restart local v2    # "result":I
    goto :goto_0

    .line 638
    .end local v2    # "result":I
    :cond_1
    const/16 v2, 0x96

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getMostFrequentUsedApp(Ljava/util/Hashtable;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/BG;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "allApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .local p2, "listToSort":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    invoke-direct {p0}, Lc8/GG;->getStorageCapacity()I

    move-result v0

    .line 536
    .local v0, "capacity":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    .line 538
    .local v1, "installNum":I
    sub-int v3, v1, v0

    if-lez v3, :cond_0

    .line 539
    sub-int v3, v1, v0

    invoke-direct {p0, p1, p2, v3}, Lc8/GG;->getToRetainList(Ljava/util/Hashtable;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 545
    .local v2, "toRetainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 542
    .end local v2    # "toRetainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lc8/GG;->getToRetainList(Ljava/util/Hashtable;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "toRetainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private getNoCacheRatio(II)F
    .locals 3
    .param p1, "noCacheCount"    # I
    .param p2, "normalCount"    # I

    .prologue
    .line 364
    add-int v0, p1, p2

    .line 365
    .local v0, "totalCount":I
    if-nez v0, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 368
    :goto_0
    return v1

    :cond_0
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private getStorageCapacity()I
    .locals 6

    .prologue
    const-wide/32 v4, 0x3200000

    .line 594
    invoke-direct {p0}, Lc8/GG;->getAvailableSpace()J

    move-result-wide v0

    .line 596
    .local v0, "availableSpace":J
    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 598
    const/16 v2, 0x1e

    .line 607
    .local v2, "result":I
    :goto_0
    return v2

    .line 599
    .end local v2    # "result":I
    :cond_0
    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    const-wide/32 v4, 0x6400000

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 602
    const/16 v2, 0x32

    .restart local v2    # "result":I
    goto :goto_0

    .line 605
    .end local v2    # "result":I
    :cond_1
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v3, Lc8/EB;->packageMaxAppCount:I

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getToRetainList(Ljava/util/Hashtable;Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p3, "toRemoveNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/BG;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "allApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .local p2, "sortedList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 560
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 561
    const-string/jumbo v2, "WVPackageAppCleanup"

    const-string/jumbo v3, "\u7f13\u5b58\u6e05\u7406\u7b97\u6cd5\u51fa\u9519 \uff1a \u5f85\u6e05\u7406\u7684App\u6570\u91cf\u4e0d\u5e94\u5927\u4e8e\u6e05\u7406\u961f\u5217\u4e2d\u7684\u957f\u5ea6"

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 569
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/BG;

    iget-object v2, v2, Lc8/BG;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "i":I
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz p3, :cond_0

    .line 563
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, p3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 571
    .restart local v0    # "i":I
    .restart local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v1
.end method

.method private initCheanUpInfoIfNeed()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lc8/GG;->checkCleanUpCacheExist()Z

    move-result v0

    .line 162
    .local v0, "hasInit":Z
    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lc8/GG;->initCleanUpInfo()V

    .line 165
    :cond_0
    return-void
.end method

.method private initCleanUpInfo()V
    .locals 10

    .prologue
    .line 235
    sget-object v7, Lc8/GG;->SP_NAME:Ljava/lang/String;

    sget-object v8, Lc8/GG;->SP_IFNO_KEY:Ljava/lang/String;

    const-string/jumbo v9, "{}"

    invoke-static {v7, v8, v9}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "{}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    .line 239
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 241
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 243
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    .local v2, "infoObject":Lorg/json/JSONObject;
    new-instance v3, Lc8/BG;

    invoke-direct {v3}, Lc8/BG;-><init>()V

    .line 245
    .local v3, "infoSnippet":Lc8/BG;
    const-string/jumbo v7, "count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v3, Lc8/BG;->count:D

    .line 246
    const-string/jumbo v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lc8/BG;->name:Ljava/lang/String;

    .line 247
    const-string/jumbo v7, "failCount"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lc8/BG;->failCount:I

    .line 248
    const-string/jumbo v7, "needReinstall"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lc8/BG;->needReinstall:Z

    .line 249
    const-string/jumbo v7, "lastAccessTime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v3, Lc8/BG;->lastAccessTime:J

    .line 250
    iget-object v7, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v2    # "infoObject":Lorg/json/JSONObject;
    .end local v3    # "infoSnippet":Lc8/BG;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 253
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "WVPackageAppCleanup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse KEY_CLEAN_UP_INFO Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    invoke-direct {p0}, Lc8/GG;->initCleanupInfoFromLocal()V

    goto :goto_1
.end method

.method private initCleanupInfoFromLocal()V
    .locals 14

    .prologue
    .line 266
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v11

    .line 267
    .local v11, "locConfig":Lc8/WG;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lc8/WG;->isAvailableData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v11}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v8

    .line 269
    .local v8, "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, "iterator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 272
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 273
    .local v12, "zipAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget-object v0, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    iget-object v13, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    new-instance v0, Lc8/BG;

    iget-object v1, v12, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lc8/BG;-><init>(Ljava/lang/String;JJII)V

    invoke-virtual {v13, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    .end local v8    # "appsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v9    # "iterator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "zipAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    .line 280
    :cond_2
    return-void
.end method

.method private updateLastDelTime()V
    .locals 4

    .prologue
    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/GG;->lastDelTime:J

    .line 508
    sget-object v0, Lc8/GG;->SP_NAME:Ljava/lang/String;

    sget-object v1, Lc8/GG;->SP_KEY:Ljava/lang/String;

    iget-wide v2, p0, Lc8/GG;->lastDelTime:J

    invoke-static {v0, v1, v2, v3}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 509
    return-void
.end method


# virtual methods
.method public cleanUp(I)Ljava/util/List;
    .locals 4
    .param p1, "cleanCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v0

    .line 318
    .local v0, "locConfig":Lc8/WG;
    invoke-virtual {v0}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v1

    .line 319
    .local v1, "packageApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-direct {p0}, Lc8/GG;->initCleanupInfoFromLocal()V

    .line 320
    invoke-direct {p0, p1}, Lc8/GG;->appMonior(I)V

    .line 321
    invoke-direct {p0, v1}, Lc8/GG;->calcToRetainApp(Ljava/util/Hashtable;)Ljava/util/List;

    move-result-object v2

    .line 323
    .local v2, "toRetainedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/GG;->listener:Lc8/EG;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 324
    iget-object v3, p0, Lc8/GG;->listener:Lc8/EG;

    invoke-interface {v3, v2}, Lc8/EG;->onUninstall(Ljava/util/List;)V

    .line 329
    :cond_0
    :goto_0
    invoke-direct {p0}, Lc8/GG;->clearCount()V

    .line 330
    invoke-virtual {p0}, Lc8/GG;->saveInfoSnippetToDisk()V

    .line 331
    return-object v2

    .line 325
    :cond_1
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v3, v3, Lc8/EB;->isCheckCleanup:Z

    if-nez v3, :cond_0

    .line 327
    iget-object v3, p0, Lc8/GG;->listener:Lc8/EG;

    invoke-interface {v3, v2}, Lc8/EG;->onUninstall(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/BG;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lc8/FG;

    invoke-direct {v1}, Lc8/FG;-><init>()V

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 66
    invoke-direct {p0}, Lc8/GG;->initCheanUpInfoIfNeed()V

    .line 67
    return-void
.end method

.method public needInstall(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 7
    .param p1, "onlineAppInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 118
    const/4 v3, 0x1

    .line 119
    .local v3, "shouldInstall":Z
    invoke-direct {p0}, Lc8/GG;->initCheanUpInfoIfNeed()V

    .line 121
    invoke-direct {p0, p1}, Lc8/GG;->addInfoIfNeed(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    .line 123
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    .line 124
    .local v1, "locConfig":Lc8/WG;
    invoke-virtual {v1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/GG;->getInstallNum(Ljava/util/Hashtable;)I

    move-result v0

    .line 125
    .local v0, "installNum":I
    invoke-virtual {v1}, Lc8/WG;->isAvailableData()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-direct {p0}, Lc8/GG;->getMaxInstallCapacity()I

    move-result v2

    .line 127
    .local v2, "maxInstallCapacity":I
    if-ge v0, v2, :cond_4

    move v3, v4

    .line 131
    .end local v2    # "maxInstallCapacity":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lc8/GG;->atCleanUpPeriod()Z

    move-result v6

    if-nez v6, :cond_5

    .line 132
    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_1

    iget v5, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v6, Lc8/dH;->ZIP_REMOVED:I

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v5

    sget-object v6, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v5, v6, :cond_1

    .line 135
    const/4 v3, 0x1

    .line 136
    invoke-direct {p0}, Lc8/GG;->updateLastDelTime()V

    .line 138
    invoke-virtual {p0, v4}, Lc8/GG;->cleanUp(I)Ljava/util/List;

    .line 145
    :cond_1
    :goto_1
    iget v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v5, Lc8/dH;->ZIP_REMOVED:I

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v4, v5, :cond_6

    .line 146
    :cond_2
    const/4 v3, 0x0

    .line 154
    :cond_3
    :goto_2
    return v3

    .restart local v2    # "maxInstallCapacity":I
    :cond_4
    move v3, v5

    .line 127
    goto :goto_0

    .line 140
    .end local v2    # "maxInstallCapacity":I
    :cond_5
    invoke-direct {p0}, Lc8/GG;->atCleanUpPeriod()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-direct {p0}, Lc8/GG;->updateLastDelTime()V

    .line 142
    invoke-virtual {p0, v5}, Lc8/GG;->cleanUp(I)Ljava/util/List;

    goto :goto_1

    .line 149
    :cond_6
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v4, v5, :cond_3

    .line 150
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public registerUninstallListener(Lc8/EG;)V
    .locals 0
    .param p1, "listener"    # Lc8/EG;

    .prologue
    .line 306
    iput-object p1, p0, Lc8/GG;->listener:Lc8/EG;

    .line 307
    return-void
.end method

.method public saveInfoSnippetToDisk()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    const-string/jumbo v0, "{}"

    .line 181
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-static {v2}, Lc8/CG;->getJsonString(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_1
    sget-object v2, Lc8/GG;->SP_NAME:Ljava/lang/String;

    sget-object v3, Lc8/GG;->SP_IFNO_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "WVPackageAppCleanup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveInfoSnippetToDisk exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveInfoSnippetToDiskInner()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v0, "{}"

    .line 200
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-boolean v2, p0, Lc8/GG;->needWriteToDisk:Z

    if-nez v2, :cond_1

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/GG;->needWriteToDisk:Z

    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-static {v2}, Lc8/CG;->getJsonString(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_1
    sget-object v2, Lc8/GG;->SP_NAME:Ljava/lang/String;

    sget-object v3, Lc8/GG;->SP_IFNO_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "WVPackageAppCleanup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveInfoSnippetToDisk exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateAccessTimes(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDiskError"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Lc8/GG;->initCheanUpInfoIfNeed()V

    .line 87
    iget-object v3, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/BG;

    .line 88
    .local v2, "infoSnippet":Lc8/BG;
    if-nez v2, :cond_0

    .line 89
    invoke-direct {p0}, Lc8/GG;->initCleanupInfoFromLocal()V

    .line 90
    iget-object v3, p0, Lc8/GG;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "infoSnippet":Lc8/BG;
    check-cast v2, Lc8/BG;

    .line 92
    .restart local v2    # "infoSnippet":Lc8/BG;
    :cond_0
    if-eqz v2, :cond_1

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "cur":J
    iget-wide v4, v2, Lc8/BG;->lastAccessTime:J

    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget v3, v3, Lc8/EB;->packageAccessInterval:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/GG;->needWriteToDisk:Z

    .line 97
    iget-wide v4, v2, Lc8/BG;->count:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    iput-wide v4, v2, Lc8/BG;->count:D

    .line 98
    iput-wide v0, v2, Lc8/BG;->lastAccessTime:J

    .line 99
    if-eqz p2, :cond_1

    .line 100
    iget v3, v2, Lc8/BG;->failCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lc8/BG;->failCount:I

    .line 104
    .end local v0    # "cur":J
    :cond_1
    return-void
.end method
