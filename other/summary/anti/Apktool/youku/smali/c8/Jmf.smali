.class public Lc8/Jmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/vmf;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z

.field b:Lc8/fmf;

.field c:Lc8/Dmf;

.field d:Z


# direct methods
.method public constructor <init>(Lc8/fmf;ZLc8/Dmf;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lc8/Jmf;->d:Z

    .line 17
    iput-boolean v0, p0, Lc8/Jmf;->a:Z

    .line 20
    iput-object p1, p0, Lc8/Jmf;->b:Lc8/fmf;

    .line 21
    iput-boolean p2, p0, Lc8/Jmf;->a:Z

    .line 22
    iput-object p3, p0, Lc8/Jmf;->c:Lc8/Dmf;

    .line 23
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    iget-object v1, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v1, v1, Lc8/fmf;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/Dmf;->onDownloadStateChange(Ljava/lang/String;Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public onCompleted(ZJ)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    iget-object v1, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v1, v1, Lc8/fmf;->url:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v3, v3, Lc8/fmf;->cachePath:Ljava/lang/String;

    iget-object v4, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v4, v4, Lc8/fmf;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/Dmf;->onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lc8/Jmf;->d:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lc8/Dmf;->onFinish(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    iget-object v1, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v1, v1, Lc8/fmf;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lc8/Dmf;->onDownloadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lc8/Jmf;->d:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/Dmf;->onFinish(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public onPaused(Z)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 59
    iget-boolean v0, p0, Lc8/Jmf;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    const/4 v1, 0x2

    new-instance v2, Lcom/taobao/downloader/request/Param;

    invoke-direct {v2}, Lcom/taobao/downloader/request/Param;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc8/Dmf;->onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    iget-object v1, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v1, v1, Lc8/fmf;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/Dmf;->onDownloadStateChange(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lc8/Jmf;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 35
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    .line 36
    iget-object v1, p0, Lc8/Jmf;->c:Lc8/Dmf;

    invoke-interface {v1, v0}, Lc8/Dmf;->onDownloadProgress(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lc8/Jmf;->c:Lc8/Dmf;

    iget-object v1, p0, Lc8/Jmf;->b:Lc8/fmf;

    iget-object v1, v1, Lc8/fmf;->url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lc8/Dmf;->onDownloadStateChange(Ljava/lang/String;Z)V

    .line 30
    :cond_0
    return-void
.end method
