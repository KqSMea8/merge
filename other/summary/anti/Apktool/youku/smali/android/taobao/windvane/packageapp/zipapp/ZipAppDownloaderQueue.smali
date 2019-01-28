.class public Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "ZipAppDownloaderQueue.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;


# instance fields
.field private currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

.field public finishedCount:I

.field private isAppBackground:Z

.field private isResetState:Z

.field public isTBDownloaderEnabled:Z

.field private isWifi:Z

.field public needDownloadCount:I

.field public successCount:I

.field private taskStartTime:J

.field private updateInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    .line 35
    const-string/jumbo v0, "PackageApp-ZipAppDownloaderQueue"

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 36
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageDownloadLimit:I

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    .line 37
    iput v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    .line 38
    iput v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    .line 39
    iput-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isTBDownloaderEnabled:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->taskStartTime:J

    .line 43
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateInterval:J

    .line 44
    iput-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isAppBackground:Z

    .line 45
    iput-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isWifi:Z

    return-void
.end method

.method private doTask()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    .line 81
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    iget v5, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    if-lt v3, v5, :cond_1

    .line 83
    :cond_0
    iput v4, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    .line 84
    iput-boolean v4, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    move v3, v4

    .line 130
    :goto_0
    return v3

    .line 88
    :cond_1
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v2

    .line 89
    .local v2, "zipGlobalConfig":Lc8/WG;
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/PG;

    .line 90
    .local v1, "comparable":Lc8/PG;
    invoke-virtual {v1}, Lc8/PG;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 91
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateState()V

    move v3, v4

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->taskStartTime:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 96
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doTask use time(ms) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->taskStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->taskStartTime:J

    .line 103
    iget-wide v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    iget v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v5, Lc8/dH;->ZIP_NEWEST:I

    if-ne v3, v5, :cond_4

    .line 105
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateState()V

    move v3, v4

    .line 106
    goto :goto_0

    .line 109
    :cond_4
    iget-wide v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_6

    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/GG;->needInstall(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 111
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v3, v3, Lc8/EB;->isCheckCleanup:Z

    if-eqz v3, :cond_6

    .line 112
    sget v3, Lc8/dH;->ZIP_REMOVED:I

    iput v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 113
    iget-boolean v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-eqz v3, :cond_5

    .line 114
    iput-wide v10, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 115
    const-string/jumbo v3, "0"

    iput-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateState()V

    move v3, v4

    .line 118
    goto/16 :goto_0

    .line 122
    :cond_6
    new-instance v5, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getZipUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v7

    iget-object v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    :goto_1
    invoke-direct {v5, v6, v7, v3, v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;-><init>(Ljava/lang/String;Lcom/taobao/windvane/zipdownload/DownLoadListener;ILjava/lang/Object;)V

    iput-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 124
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v5}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 122
    :cond_7
    const/4 v3, 0x4

    goto :goto_1

    .line 126
    :catch_0
    move-exception v3

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update app error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateState()V

    move v3, v4

    .line 128
    goto/16 :goto_0
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    invoke-direct {v0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;-><init>()V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->instance:Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isContinueUpdate(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 274
    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v2, v3, :cond_3

    .line 278
    :cond_2
    sget v2, Lc8/dH;->ZIP_REMOVED:I

    iput v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 279
    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_3
    iget-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isWifi:Z

    if-nez v2, :cond_7

    .line 283
    invoke-static {}, Lc8/TH;->isWiFiActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 285
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getIs2GUpdate()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getIs3GUpdate()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 286
    goto :goto_0

    .line 288
    :cond_5
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAllApps: can not install app ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] network is not wifi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_6
    iput-boolean v1, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isWifi:Z

    :cond_7
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public isUpdateFinish()Z
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    iget v1, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDuplicate()V
    .locals 5

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, "it":Ljava/util/Iterator;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 306
    .local v3, "set":Ljava/util/HashSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v1, "newList":Ljava/util/List;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/PG;

    .line 309
    .local v2, "oldObj":Lc8/PG;
    invoke-virtual {v2}, Lc8/PG;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "newList":Ljava/util/List;
    .end local v2    # "oldObj":Lc8/PG;
    .end local v3    # "set":Ljava/util/HashSet;
    :catch_0
    move-exception v4

    .line 317
    :goto_1
    return-void

    .line 313
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v1    # "newList":Ljava/util/List;
    .restart local v3    # "set":Ljava/util/HashSet;
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->clear()V

    .line 314
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public resetState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v0

    const-string/jumbo v1, "1"

    iget v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    int-to-long v2, v2

    iget v4, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lc8/aG;->commitPackageQueueInfo(Ljava/lang/String;JJ)V

    .line 218
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageAppQueue s : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    iput v6, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    .line 225
    iput v6, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 228
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageDownloadLimit:I

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    .line 229
    return-void

    .line 220
    :cond_1
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no zipApp need update"

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppBackground(Z)V
    .locals 0
    .param p1, "appBackground"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isAppBackground:Z

    .line 327
    return-void
.end method

.method public startPriorityDownLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isWifi:Z

    .line 64
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->size()I

    move-result v0

    iget v1, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    if-gt v0, v1, :cond_0

    .line 65
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->size()I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    .line 69
    :goto_0
    iput v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    .line 70
    iput v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    .line 71
    iput-boolean v2, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 73
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget-wide v0, v0, Lc8/EB;->updateInterval:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateInterval:J

    .line 74
    invoke-direct {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->doTask()Z

    .line 75
    return-void

    .line 67
    :cond_0
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageDownloadLimit:I

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->needDownloadCount:I

    goto :goto_0
.end method

.method public startUpdateAppsTask()V
    .locals 20

    .prologue
    .line 138
    sget-object v13, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "try to update ZipApps"

    invoke-static {v13, v14}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v13, Lc8/DB;->commonConfig:Lc8/EB;

    iget v13, v13, Lc8/EB;->packageAppStatus:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 141
    sget-object v13, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "not update zip, packageAppStatus is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lc8/DB;->commonConfig:Lc8/EB;

    iget v15, v15, Lc8/EB;->packageAppStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v13, Lc8/xB;->context:Landroid/app/Application;

    if-eqz v13, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isAppBackground:Z

    if-eqz v13, :cond_2

    .line 146
    sget-object v13, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "not update zip, app is background"

    invoke-static {v13, v14}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isUpdateFinish()Z

    move-result v13

    if-nez v13, :cond_5

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-virtual {v13}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v13

    sget-object v14, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v13, v14, :cond_4

    .line 154
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->doTask()Z

    goto :goto_0

    .line 155
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->taskStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->cancel(Z)Z

    .line 158
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 159
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->doTask()Z

    goto :goto_0

    .line 163
    :cond_5
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v13

    invoke-virtual {v13}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->clear()V

    .line 164
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v12

    .line 165
    .local v12, "zipGlobalConfig":Lc8/WG;
    const/4 v5, 0x0

    .line 167
    .local v5, "delList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-virtual {v12}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 168
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 169
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 170
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 171
    .local v3, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v13

    sget-object v14, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-eq v13, v14, :cond_7

    iget v13, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v14, Lc8/dH;->ZIP_REMOVED:I

    if-ne v13, v14, :cond_a

    :cond_7
    const/4 v8, 0x1

    .line 172
    .local v8, "isDel":Z
    :goto_2
    if-eqz v8, :cond_b

    .line 173
    iget-wide v14, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v13

    sget-object v14, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v13, v14, :cond_6

    .line 174
    :cond_8
    if-nez v5, :cond_9

    .line 175
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "delList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .restart local v5    # "delList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    :cond_9
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .end local v8    # "isDel":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 179
    .restart local v8    # "isDel":Z
    :cond_b
    iget-wide v14, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    iget-wide v0, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_6

    .line 180
    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getPriority()I

    move-result v10

    .line 181
    .local v10, "p":I
    iget-boolean v13, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v13, :cond_c

    .line 182
    const/16 v10, 0xa

    .line 185
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isContinueUpdate(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 186
    new-instance v2, Lc8/PG;

    iget-object v13, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v13, v10}, Lc8/PG;-><init>(Ljava/lang/String;I)V

    .line 187
    .local v2, "app":Lc8/PG;
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v2    # "app":Lc8/PG;
    .end local v3    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v8    # "isDel":Z
    .end local v10    # "p":I
    :cond_d
    if-eqz v5, :cond_10

    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 194
    .local v4, "delAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :try_start_0
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v13

    invoke-virtual {v13, v4}, Lc8/NG;->unInstall(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)I

    move-result v11

    .line 195
    .local v11, "resultcode":I
    sget v13, Lc8/UG;->SECCUSS:I

    if-eq v11, v13, :cond_f

    .line 196
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 197
    sget-object v13, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resultcode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "[updateApps] ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " unInstall fail "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v11    # "resultcode":I
    :catch_0
    move-exception v13

    goto :goto_3

    .line 200
    .restart local v11    # "resultcode":I
    :cond_f
    sget-object v13, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " unInstall success"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 207
    .end local v4    # "delAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "resultcode":I
    :cond_10
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v13

    invoke-virtual {v13}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->removeDuplicate()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->startPriorityDownLoader()V

    goto/16 :goto_0
.end method

.method public declared-synchronized updateFinshCount(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    .line 261
    :try_start_1
    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->successCount:I

    .line 263
    :cond_1
    iget v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->finishedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateState()V
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isUpdateFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->resetState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isResetState:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->currentDownloader:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .line 247
    invoke-direct {p0}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->doTask()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
