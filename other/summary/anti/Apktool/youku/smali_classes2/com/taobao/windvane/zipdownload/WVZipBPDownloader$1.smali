.class public Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;
.super Ljava/lang/Object;
.source "WVZipBPDownloader.java"

# interfaces
.implements Lc8/Dmf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->doTBDownloadTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;


# direct methods
.method constructor <init>(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$400(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Lcom/taobao/windvane/zipdownload/DownLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v1}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$100(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$200(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)I

    move-result v4

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$300(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/windvane/zipdownload/DownLoadListener;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    sget v1, Lc8/UG;->ERR_DOWN_ZIP:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v4}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorCode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "doTBDownloadTask ErrorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 102
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "WVZipBPDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTBDownloadTask Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$400(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Lcom/taobao/windvane/zipdownload/DownLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v1}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$100(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v2}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$200(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)I

    move-result v4

    iget-object v2, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v2}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$300(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/windvane/zipdownload/DownLoadListener;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$400(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Lcom/taobao/windvane/zipdownload/DownLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v1}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$100(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v2}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$200(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)I

    move-result v4

    iget-object v2, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v2}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$300(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v7

    move-object v3, v7

    invoke-interface/range {v0 .. v5}, Lcom/taobao/windvane/zipdownload/DownLoadListener;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    sget v1, Lc8/UG;->ERR_DOWN_ZIP:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v4}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v3}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doTBDownloadTask ErrorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 115
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "WVZipBPDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTBDownloadTask Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;->this$0:Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    invoke-static {v0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0x1774

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 93
    :cond_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "WVZipBPDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadProgress pro : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public onFinish(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "param"    # Lcom/taobao/downloader/request/Param;
    .param p3, "networkLimitCallback"    # Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;

    .prologue
    .line 134
    return-void
.end method
