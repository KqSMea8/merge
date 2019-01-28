.class public Lc8/gmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/kmf;


# direct methods
.method constructor <init>(Lc8/kmf;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lc8/gmf;->a:Lc8/kmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc8/gmf;->a:Lc8/kmf;

    invoke-static {v0}, Lc8/kmf;->a(Lc8/kmf;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 123
    invoke-virtual {v0}, Lc8/fmf;->checkIsPauseOrCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string/jumbo v1, "RequestQueue"

    const-string/jumbo v2, "dispatch break"

    invoke-virtual {v0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Lc8/fmf;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "dispatch"

    iget-object v2, p0, Lc8/gmf;->a:Lc8/kmf;

    invoke-static {v2}, Lc8/kmf;->c(Lc8/kmf;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "exit as InterruptedException"

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lc8/fmf;->hitCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string/jumbo v1, "RequestQueue"

    const-string/jumbo v2, "dispatch end"

    invoke-virtual {v0}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "reason"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "request hit target file cache"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_1
    sget-object v1, Lcom/taobao/downloader/api/Request$Status;->COMPLETED:Lcom/taobao/downloader/api/Request$Status;

    invoke-virtual {v0, v1}, Lc8/fmf;->setStatus(Lcom/taobao/downloader/api/Request$Status;)V

    .line 133
    invoke-virtual {v0}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc8/smf;->g:Z

    .line 134
    invoke-virtual {v0}, Lc8/fmf;->finish()V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lc8/gmf;->a:Lc8/kmf;

    invoke-static {v1}, Lc8/kmf;->b(Lc8/kmf;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lc8/Nlf;

    invoke-direct {v2, v0}, Lc8/Nlf;-><init>(Lc8/fmf;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
