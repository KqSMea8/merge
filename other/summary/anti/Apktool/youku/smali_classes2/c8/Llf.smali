.class public Lc8/Llf;
.super Ljava/lang/Object;
.source "TbDownloader.java"

# interfaces
.implements Lc8/jsf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/downloader/TbDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadOnLineMonitorNotify"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc8/Klf;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lc8/Llf;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineMonitorNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "CompatTBLoader"

    const-string/jumbo v1, "notify_for_in_background"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_1
    sget-object v0, Lcom/taobao/downloader/TbDownloader;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 76
    invoke-virtual {v0}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v2

    sget-object v3, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v2, v3, :cond_2

    .line 77
    invoke-static {}, Lc8/Ylf;->getInstance()Lc8/Ylf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Ylf;->getRequestQueue()Lc8/kmf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/kmf;->add(Lc8/fmf;)V

    goto :goto_1

    .line 82
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "CompatTBLoader"

    const-string/jumbo v1, "notify_for_in_foreground"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
