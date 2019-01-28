.class public Lc8/hUf;
.super Ljava/lang/Object;
.source "HotPatchDownloaderListener.java"

# interfaces
.implements Lc8/Dmf;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.taobao.update.UpdateBroadcast"


# instance fields
.field private dataSource:Ljava/lang/String;

.field private isTestMode:Z

.field private mContext:Landroid/content/Context;

.field private patchInfo:Lc8/EUf;


# direct methods
.method public constructor <init>(Lc8/EUf;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "patchInfo"    # Lc8/EUf;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dataSource"    # Ljava/lang/String;
    .param p4, "isTestMode"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    .line 29
    iput-object p2, p0, Lc8/hUf;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lc8/hUf;->dataSource:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lc8/hUf;->isTestMode:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lc8/hUf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/hUf;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/hUf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/hUf;)Lc8/EUf;
    .locals 1
    .param p0, "x0"    # Lc8/hUf;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    return-object v0
.end method

.method static synthetic access$200(Lc8/hUf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hUf;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/hUf;->dataSource:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    const-string/jumbo v2, "hotpatch_download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    iget v4, v4, Lc8/EUf;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p3}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lc8/GUf;

    invoke-direct {v1}, Lc8/GUf;-><init>()V

    .line 42
    .local v1, "updateData":Lc8/GUf;
    iput-boolean v6, v1, Lc8/GUf;->success:Z

    .line 43
    const-string/jumbo v2, "hotpatch_download"

    iput-object v2, v1, Lc8/GUf;->stage:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 45
    iput-object p3, v1, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 46
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    iget v3, v3, Lc8/EUf;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 48
    iput-object p1, v1, Lc8/GUf;->url:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lc8/HUf;->stat(Lc8/GUf;)V

    .line 50
    iget-object v2, p0, Lc8/hUf;->dataSource:Ljava/lang/String;

    const-string/jumbo v3, "SafeMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "updateType"

    const-string/jumbo v3, "hotpatch"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string/jumbo v2, "errorMsg"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lc8/hUf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 57
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 61
    const-string/jumbo v2, "hotpatch_download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    iget v4, v4, Lc8/EUf;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lc8/GUf;

    invoke-direct {v1}, Lc8/GUf;-><init>()V

    .line 63
    .local v1, "updateData":Lc8/GUf;
    iput-boolean v6, v1, Lc8/GUf;->success:Z

    .line 64
    const-string/jumbo v2, "hotpatch_download"

    iput-object v2, v1, Lc8/GUf;->stage:Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "0"

    iput-object v2, v1, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, ""

    iput-object v2, v1, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 67
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    iget v3, v3, Lc8/EUf;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 69
    iput-object p1, v1, Lc8/GUf;->url:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lc8/HUf;->stat(Lc8/GUf;)V

    .line 71
    iget-boolean v2, p0, Lc8/hUf;->isTestMode:Z

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lc8/fUf;

    invoke-direct {v3, p0}, Lc8/fUf;-><init>(Lc8/hUf;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Lc8/gUf;

    invoke-direct {v2, p0, p2}, Lc8/gUf;-><init>(Lc8/hUf;Ljava/lang/String;)V

    invoke-virtual {v2}, Lc8/gUf;->start()V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v2

    iget-object v3, p0, Lc8/hUf;->patchInfo:Lc8/EUf;

    invoke-virtual {v2, p2, v3}, Lc8/tUf;->loadDownloadedPatch(Ljava/lang/String;Lc8/EUf;)V

    .line 95
    iget-object v2, p0, Lc8/hUf;->dataSource:Ljava/lang/String;

    const-string/jumbo v3, "SafeMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "updateType"

    const-string/jumbo v3, "hotpatch"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string/jumbo v2, "errorMsg"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lc8/hUf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 0
    .param p1, "process"    # I

    .prologue
    .line 36
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 108
    return-void
.end method

.method public onFinish(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 113
    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "param"    # Lcom/taobao/downloader/request/Param;
    .param p3, "networkLimitCallback"    # Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;

    .prologue
    .line 118
    return-void
.end method
