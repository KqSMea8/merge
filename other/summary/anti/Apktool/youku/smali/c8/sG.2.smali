.class public Lc8/sG;
.super Ljava/lang/Object;
.source "WVPackageAppManager.java"

# interfaces
.implements Lcom/taobao/windvane/zipdownload/DownLoadListener;


# static fields
.field private static appManager:Lc8/sG;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isInit:Z

.field private mContext:Landroid/app/Application;

.field public pkgInitTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "PackageApp-PackageAppManager"

    iput-object v0, p0, Lc8/sG;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/sG;->isInit:Z

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/sG;->pkgInitTime:J

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/sG;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/sG;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lc8/sG;->cleanUp(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lc8/sG;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sG;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/sG;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "retainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v0

    new-instance v1, Lc8/rG;

    invoke-direct {v1, p0, p1}, Lc8/rG;-><init>(Lc8/sG;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/sG;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lc8/sG;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/sG;->appManager:Lc8/sG;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lc8/sG;

    invoke-direct {v0}, Lc8/sG;-><init>()V

    sput-object v0, Lc8/sG;->appManager:Lc8/sG;

    .line 61
    :cond_0
    sget-object v0, Lc8/sG;->appManager:Lc8/sG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private installOrUpgrade(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "isInstall"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 274
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/JG;->download(Ljava/lang/String;)V

    .line 275
    const/4 v2, -0x1

    .line 277
    .local v2, "resultcode":I
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u5f00\u59cb\u5b89\u88c5\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lc8/NG;->install(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 286
    :goto_0
    sget v3, Lc8/UG;->SECCUSS:I

    if-ne v2, v3, :cond_4

    .line 287
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u5f00\u59cb\u5347\u7ea7/\u5b89\u88c5\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    sget v3, Lc8/dH;->ZIP_NEWEST:I

    iput v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 292
    iget-wide v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iput-wide v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 293
    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 295
    const/4 v3, 0x0

    invoke-static {p1, v3, v8}, Lc8/LG;->updateGlobalConfig(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Z

    .line 296
    invoke-static {p1}, Lc8/JG;->success(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V

    .line 298
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    const/16 v4, 0x1778

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-wide v6, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    iget-boolean v7, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 300
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v3

    invoke-virtual {v3}, Lc8/WG;->isAllAppUpdated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    invoke-virtual {v3, v8}, Lc8/AG;->readGlobalConfig(Z)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "config":Ljava/lang/String;
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u6240\u6709\u66f4\u65b0\u5347\u7ea7/\u5b89\u88c5 \u6210\u529f+\u603b\u63a7\u914d\u7f6e:\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v0    # "config":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    const/16 v4, 0x1771

    invoke-virtual {v3, v4}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 309
    :try_start_1
    invoke-static {}, Lc8/vH;->getInstance()Lc8/vH;

    move-result-object v3

    invoke-virtual {v3}, Lc8/vH;->reSetTempBuffer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lc8/gG;->notifyPackageUpdateFinish(Ljava/lang/String;)V

    .line 319
    :cond_4
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Lc8/AG;->clearTmpDir(Ljava/lang/String;Z)Z

    .line 320
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 321
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug \u6e05\u7406\u4e34\u65f6\u76ee\u5f55\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_5
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    sget v3, Lc8/UG;->ERR_SYSTEM:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ErrorMsg = ERR_SYSTEM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p4, "token"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p5

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 170
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    sget v3, Lc8/dH;->ZIP_NEWEST:I

    iput v3, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 172
    const/4 v2, 0x1

    .line 173
    .local v2, "isTaskSuccess":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const/4 v2, 0x0

    .line 175
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug download["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] fail: destFile is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateFinshCount(Z)V

    .line 197
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->updateState()V

    .line 198
    return-void

    .line 178
    :cond_1
    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    const-string/jumbo v3, "wv_zip_origin_url"

    invoke-static {v3, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    :goto_1
    const/4 v3, 0x4

    if-ne p4, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    :try_start_1
    invoke-direct {p0, v0, p2, v3}, Lc8/sG;->installOrUpgrade(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :try_start_2
    const-string/jumbo v3, "wv_zip_origin_url"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 184
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 191
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Throwable;
    sget v3, Lc8/UG;->ERR_SYSTEM:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ErrorMsg = ERR_SYSTEM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 193
    iget-object v3, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageAppforDebug call Throwable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized init(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkupdate"    # Z

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/sG;->isInit:Z

    if-nez v1, :cond_0

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xb

    if-gt v1, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/sG;->pkgInitTime:J

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lc8/sG;->mContext:Landroid/app/Application;

    .line 80
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v1

    invoke-virtual {v1}, Lc8/NG;->init()Z

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/sG;->isInit:Z

    .line 82
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    new-instance v2, Lc8/zG;

    invoke-direct {v2}, Lc8/zG;-><init>()V

    sget v3, Lc8/qH;->WV_FORWARD_EVENT:I

    invoke-virtual {v1, v2, v3}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 83
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v1

    invoke-virtual {v1}, Lc8/GG;->init()V

    .line 84
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v1

    new-instance v2, Lc8/lG;

    invoke-direct {v2, p0}, Lc8/lG;-><init>(Lc8/sG;)V

    invoke-virtual {v1, v2}, Lc8/GG;->registerUninstallListener(Lc8/EG;)V

    .line 90
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    const-string/jumbo v2, "package"

    new-instance v3, Lc8/mG;

    invoke-direct {v3, p0}, Lc8/mG;-><init>(Lc8/sG;)V

    invoke-virtual {v1, v2, v3}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 98
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    const-string/jumbo v2, "prefixes"

    new-instance v3, Lc8/nG;

    invoke-direct {v3, p0}, Lc8/nG;-><init>(Lc8/sG;)V

    invoke-virtual {v1, v2, v3}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 106
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    const-string/jumbo v2, "customs"

    new-instance v3, Lc8/oG;

    invoke-direct {v3, p0}, Lc8/oG;-><init>(Lc8/sG;)V

    invoke-virtual {v1, v2, v3}, Lc8/KB;->registerHandler(Ljava/lang/String;Lc8/FB;)V

    .line 117
    iget-object v1, p0, Lc8/sG;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/fH;->isNeedPreInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lc8/gG;->getPreunzipPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/OG;->preloadZipInstall(Ljava/lang/String;)Z

    move-result v0

    .line 119
    .local v0, "res":Z
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    invoke-virtual {v1}, Lc8/KB;->resetConfig()V

    .line 120
    iget-object v1, p0, Lc8/sG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PackageAppforDebug \u9884\u5236\u5305\u89e3\u538b:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 74
    .end local v0    # "res":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setPackageZipPrefixAdapter(Lc8/wG;)V
    .locals 0
    .param p1, "adapter"    # Lc8/wG;

    .prologue
    .line 326
    invoke-static {p1}, Lc8/xG;->setPackageZipPrefixAdapter(Lc8/wG;)V

    .line 327
    return-void
.end method

.method public updatePackageAppConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lc8/LB;
    .param p2, "defaultUrl"    # Ljava/lang/String;
    .param p3, "snapshortN"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-boolean v0, p0, Lc8/sG;->isInit:Z

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageAppStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 131
    if-eqz p1, :cond_0

    .line 132
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {p1, v0, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/AG;->clearTmpDir(Ljava/lang/String;Z)Z

    .line 141
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lc8/xG;->getWvPackageAppConfig()Lc8/kG;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lc8/pG;

    invoke-direct {v2, p0, p1}, Lc8/pG;-><init>(Lc8/sG;Lc8/LB;)V

    new-instance v3, Lc8/qG;

    invoke-direct {v3, p0, p1}, Lc8/qG;-><init>(Lc8/sG;Lc8/LB;)V

    move-object v4, p3

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lc8/kG;->updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
