.class public Lc8/Gxf;
.super Lc8/ryf;
.source "NetworkImageProducer.java"

# interfaces
.implements Lc8/yyf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ryf",
        "<",
        "Lc8/cxf;",
        "Lc8/exf;",
        "Lc8/Jxf;",
        ">;",
        "Lc8/yyf",
        "<",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# instance fields
.field private mHttpLoader:Lc8/Exf;


# direct methods
.method public constructor <init>(Lc8/Exf;)V
    .locals 2
    .param p1, "httpLoader"    # Lc8/Exf;

    .prologue
    .line 28
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/ryf;-><init>(II)V

    .line 29
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lc8/Gxf;->mHttpLoader:Lc8/Exf;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lc8/Gxf;I)V
    .locals 0
    .param p0, "x0"    # Lc8/Gxf;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/Gxf;->notifyPairingScheduler(I)V

    return-void
.end method

.method static synthetic access$100(Lc8/Gxf;Lc8/oyf;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Gxf;
    .param p1, "x1"    # Lc8/oyf;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lc8/Gxf;->onConductFinish(Lc8/oyf;Z)V

    return-void
.end method

.method private notifyPairingScheduler(I)V
    .locals 2
    .param p1, "reqId"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lc8/Gxf;->getConsumeScheduler()Lc8/Nyf;

    move-result-object v0

    .line 138
    .local v0, "scheduler":Lc8/Nyf;
    instance-of v1, v0, Lc8/Iyf;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Lc8/Iyf;

    .end local v0    # "scheduler":Lc8/Nyf;
    invoke-virtual {v0, p1}, Lc8/Iyf;->completePairActions(I)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;Lc8/Kyf;)Z
    .locals 10
    .param p2, "currentAction"    # Lc8/Kyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/cxf;",
            "Lc8/Jxf;",
            ">;",
            "Lc8/Kyf;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v9, 0x1

    .line 82
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    .line 83
    .local v4, "request":Lc8/Jxf;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 84
    .local v2, "conductThreadId":J
    invoke-virtual {p0, p1}, Lc8/Gxf;->onConductStart(Lc8/oyf;)V

    .line 85
    const-string/jumbo v5, "Network"

    const-string/jumbo v6, "start to connect http resource"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string/jumbo v5, "inner_network_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/Jxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, p0}, Lc8/Jxf;->registerCancelListener(Lc8/yyf;)Z

    .line 88
    iget-object v5, p0, Lc8/Gxf;->mHttpLoader:Lc8/Exf;

    invoke-virtual {v4}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lc8/Jxf;->getLoaderExtras()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lc8/Fxf;

    invoke-direct {v8, p0, v2, v3, p1}, Lc8/Fxf;-><init>(Lc8/Gxf;JLc8/oyf;)V

    invoke-interface {v5, v6, v7, v8}, Lc8/Exf;->load(Ljava/lang/String;Ljava/util/Map;Lc8/Dxf;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Jxf;->setBlockingFuture(Ljava/util/concurrent/Future;)V

    .line 122
    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lc8/Jxf;->getLoaderExtras()Ljava/util/Map;

    move-result-object v1

    .local v1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v5, "inner_is_async_http"

    .line 123
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "asyncStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    .end local v0    # "asyncStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v9}, Lc8/Kyf;->notConsumeAction(Z)V

    .line 127
    .end local v1    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return v9
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/exf;)V
    .locals 10
    .param p2, "isLast"    # Z
    .param p3, "response"    # Lc8/exf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/cxf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/exf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Gxf;->onConsumeStart(Lc8/oyf;Z)V

    .line 36
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    .line 37
    .local v9, "request":Lc8/Jxf;
    invoke-virtual {v9}, Lc8/Jxf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string/jumbo v0, "Network"

    const-string/jumbo v2, "request is cancelled before reading response stream"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v9, v2, v3}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-interface {p1}, Lc8/oyf;->onCancellation()V

    .line 40
    invoke-virtual {p3}, Lc8/exf;->release()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v7, Lc8/yxf;

    iget v0, p3, Lc8/exf;->length:I

    invoke-virtual {v9}, Lc8/Jxf;->getProgressUpdateStep()I

    move-result v2

    invoke-direct {v7, p1, v0, v2}, Lc8/yxf;-><init>(Lc8/oyf;II)V

    .line 46
    .local v7, "handler":Lc8/yxf;
    :try_start_0
    invoke-static {p3, v7}, Lc8/bxf;->transformFrom(Lc8/exf;Lc8/yxf;)Lc8/bxf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .local v1, "result":Lc8/bxf;
    invoke-virtual {v7}, Lc8/yxf;->isCancellationCalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {v9}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v0

    iget v2, v1, Lc8/bxf;->length:I

    invoke-virtual {v0, v2}, Lc8/Kxf;->setSize(I)V

    .line 59
    iget-boolean v0, v1, Lc8/bxf;->completed:Z

    if-nez v0, :cond_2

    .line 60
    const-string/jumbo v0, "Network"

    const-string/jumbo v2, "miss bytes while reading response[type:%d], read=%d, content=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p3, Lc8/exf;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v7}, Lc8/yxf;->getReadLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v7, Lc8/yxf;->contentLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v9, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    invoke-direct {v0}, Lcom/taobao/phenix/loader/network/IncompleteResponseException;-><init>()V

    invoke-interface {p1, v0}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    .end local v1    # "result":Lc8/bxf;
    :catch_0
    move-exception v6

    .line 48
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "Network"

    const-string/jumbo v2, "transform data from response[type:%d] error, read=%d, content=%d, throwable=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p3, Lc8/exf;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v7}, Lc8/yxf;->getReadLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v7, Lc8/yxf;->contentLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    invoke-static {v0, v9, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-interface {p1, v6}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 65
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v1    # "result":Lc8/bxf;
    :cond_2
    invoke-virtual {v9, p0}, Lc8/Jxf;->unregisterCancelListener(Lc8/yyf;)Z

    .line 66
    invoke-virtual {v9}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v8

    .line 67
    .local v8, "imageUriInfo":Lc8/Lxf;
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lc8/Gxf;->onConsumeFinish(Lc8/oyf;ZZ)V

    .line 68
    new-instance v0, Lc8/cxf;

    .line 71
    invoke-virtual {v8}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {v8}, Lc8/Lxf;->getImageExtension()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lc8/cxf;-><init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;)V

    .line 68
    invoke-interface {p1, v0, p2}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lc8/exf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Gxf;->consumeNewResult(Lc8/oyf;ZLc8/exf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lc8/exf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Gxf;->consumeNewResult(Lc8/oyf;ZLc8/exf;)V

    return-void
.end method

.method public onCancel(Lc8/Jxf;)V
    .locals 9
    .param p1, "request"    # Lc8/Jxf;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-virtual {p1}, Lc8/Jxf;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lc8/Gxf;->notifyPairingScheduler(I)V

    .line 146
    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "received cancellation"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lc8/Jxf;->getBlockingFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 149
    .local v0, "blockingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lc8/Jxf;->setBlockingFuture(Ljava/util/concurrent/Future;)V

    .line 152
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 153
    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "cancelled blocking future(%s), result=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, p1, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "cancel blocking future error=%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, p1, v3, v4}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onCancel(Lc8/zyf;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lc8/Jxf;

    invoke-virtual {p0, p1}, Lc8/Gxf;->onCancel(Lc8/Jxf;)V

    return-void
.end method
