.class public final Lc8/Klf;
.super Ljava/lang/Object;
.source "TbDownloader.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/downloader/TbDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 35
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const-string/jumbo v1, "android_download_task"

    const-string/jumbo v2, "predownload_tasks_version"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    :try_start_0
    const-class v1, Lcom/taobao/downloader/preload/SyncItem;

    invoke-static {v0, v1}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v1, "CompatTBLoader"

    const-string/jumbo v2, "onConfigUpdate"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "syncItems.size"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/downloader/preload/SyncItem;

    .line 43
    const/4 v2, 0x1

    invoke-static {v2}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string/jumbo v2, "CompatTBLoader"

    const-string/jumbo v3, "onConfigUpdate"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/taobao/downloader/preload/SyncItem;->version:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/taobao/downloader/preload/SyncItem;->version:Ljava/lang/String;

    invoke-static {v2}, Lc8/Bmf;->isVersionOk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    const-string/jumbo v2, "CompatTBLoader"

    const-string/jumbo v3, "onConfigUpdate fail"

    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "reason"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "version is not match."

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/taobao/downloader/preload/SyncItem;->url:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "version"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v0, v0, Lcom/taobao/downloader/preload/SyncItem;->version:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x6

    const-string/jumbo v6, "app.version"

    aput-object v6, v5, v0

    const/4 v0, 0x7

    invoke-static {}, Lc8/Bmf;->getVersionName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v1, "CompatTBLoader"

    const-string/jumbo v2, "onConfigUpdate"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v9, v0, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    return-void

    .line 50
    :cond_3
    :try_start_1
    new-instance v2, Lc8/emf;

    invoke-direct {v2}, Lc8/emf;-><init>()V

    iget-object v3, v0, Lcom/taobao/downloader/preload/SyncItem;->url:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v3}, Lc8/emf;->setUrl(Ljava/lang/String;)Lc8/emf;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/downloader/preload/SyncItem;->name:Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v3}, Lc8/emf;->setName(Ljava/lang/String;)Lc8/emf;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/downloader/preload/SyncItem;->md5:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v3}, Lc8/emf;->setMd5(Ljava/lang/String;)Lc8/emf;

    move-result-object v2

    iget-wide v4, v0, Lcom/taobao/downloader/preload/SyncItem;->size:J

    .line 54
    invoke-virtual {v2, v4, v5}, Lc8/emf;->setSize(J)Lc8/emf;

    move-result-object v2

    iget-object v0, v0, Lcom/taobao/downloader/preload/SyncItem;->path:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v0}, Lc8/emf;->setCachePath(Ljava/lang/String;)Lc8/emf;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lc8/emf;->build()Lc8/fmf;

    move-result-object v0

    .line 57
    sget-object v2, Lcom/taobao/downloader/TbDownloader;->mRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
