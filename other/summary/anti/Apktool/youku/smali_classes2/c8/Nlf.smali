.class public Lc8/Nlf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/Nlf;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lc8/fmf;


# direct methods
.method public constructor <init>(Lc8/fmf;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/Nlf;->a:Lc8/fmf;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lc8/Nlf;)I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v1, p1, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0, v1}, Lc8/fmf;->compareTo(Lc8/fmf;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lc8/Nlf;

    invoke-virtual {p0, p1}, Lc8/Nlf;->a(Lc8/Nlf;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 27
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "NetworkTask"

    const-string/jumbo v1, "run start"

    iget-object v4, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v4}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v0, v0, Lc8/fmf;->listener:Lc8/vmf;

    invoke-interface {v0}, Lc8/vmf;->onStart()V

    .line 31
    new-instance v0, Lc8/Mlf;

    invoke-direct {v0}, Lc8/Mlf;-><init>()V

    .line 32
    iget-object v1, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0, v1}, Lc8/Mlf;->a(Lc8/fmf;)V

    .line 33
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->STARTED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v1, :cond_4

    .line 34
    const-string/jumbo v0, "download-sdk"

    const-string/jumbo v1, "url_rate"

    iget-object v4, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v4, v4, Lc8/fmf;->url:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lc8/Lmf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "download-sdk"

    const-string/jumbo v1, "biz_rate"

    iget-object v4, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v4, v4, Lc8/fmf;->bizId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lc8/Lmf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {v0, v1}, Lc8/fmf;->setStatus(Lcom/taobao/downloader/api/Request$Status;)V

    .line 37
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->finish()V

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-string/jumbo v0, "NetworkTask"

    const-string/jumbo v1, "run end"

    iget-object v4, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v4}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v7}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1, v4, v5}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v1, :cond_3

    .line 60
    new-instance v4, Lc8/Kmf;

    invoke-direct {v4}, Lc8/Kmf;-><init>()V

    .line 61
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v0, v0, Lc8/fmf;->url:Ljava/lang/String;

    iput-object v0, v4, Lc8/Kmf;->url:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v0, v0, Lc8/fmf;->bizId:Ljava/lang/String;

    iput-object v0, v4, Lc8/Kmf;->biz:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    iget-wide v0, v0, Lc8/smf;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    move-wide v0, v2

    .line 65
    :goto_2
    iput-wide v0, v4, Lc8/Kmf;->flow:J

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v5}, Lc8/fmf;->getEnterQueueTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, v4, Lc8/Kmf;->totalTime:J

    .line 67
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, v4, Lc8/Kmf;->totalTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    div-long/2addr v0, v2

    long-to-double v0, v0

    iput-wide v0, v4, Lc8/Kmf;->speed:D

    .line 69
    const-string/jumbo v0, "download-sdk"

    const-string/jumbo v1, "quality"

    invoke-static {v0, v1, v4}, Lc8/Lmf;->commitStat(Ljava/lang/String;Ljava/lang/String;Lc8/Kmf;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_3
    :goto_3
    return-void

    .line 38
    :cond_4
    :try_start_2
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->CANCELED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v1, :cond_1

    .line 39
    :cond_5
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->finish()V
    :try_end_2
    .catch Lcom/taobao/downloader/util/LoaderException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->printStackTrace()V

    .line 46
    const-string/jumbo v1, "NetworkTask"

    const-string/jumbo v4, "run fail"

    iget-object v5, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v5}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "errorCode"

    aput-object v7, v6, v9

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, "errorMsg"

    aput-object v7, v6, v10

    const/4 v7, 0x3

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v5, v6}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string/jumbo v1, "download-sdk"

    const-string/jumbo v4, "url_rate"

    iget-object v5, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v5, v5, Lc8/fmf;->url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v4, v5, v6, v7}, Lc8/Lmf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "download-sdk"

    const-string/jumbo v4, "biz_rate"

    iget-object v5, p0, Lc8/Nlf;->a:Lc8/fmf;

    iget-object v5, v5, Lc8/fmf;->bizId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v4, v5, v6, v7}, Lc8/Lmf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getErrorCode()I

    move-result v4

    iput v4, v1, Lc8/smf;->a:I

    .line 52
    invoke-virtual {v0}, Lcom/taobao/downloader/util/LoaderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc8/smf;->b:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->FAILED:Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {v0, v1}, Lc8/fmf;->setStatus(Lcom/taobao/downloader/api/Request$Status;)V

    .line 54
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->finish()V

    goto/16 :goto_1

    .line 64
    :cond_6
    :try_start_3
    iget-object v0, p0, Lc8/Nlf;->a:Lc8/fmf;

    invoke-virtual {v0}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    iget-wide v0, v0, Lc8/smf;->f:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 73
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method
