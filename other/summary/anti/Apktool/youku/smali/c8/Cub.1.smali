.class public Lc8/Cub;
.super Ljava/lang/Object;
.source "WXMtopRequest.java"

# interfaces
.implements Lc8/BMf;
.implements Lc8/CMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RbListener"
.end annotation


# instance fields
.field private cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field private callback:Lc8/EWf;

.field private failure:Lc8/EWf;

.field private isFinish:Z

.field private isTimeout:Z

.field private mtopTracker:Lc8/gxb;

.field private rbWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/HMf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Dub;

.field private timer:J


# direct methods
.method public constructor <init>(Lc8/Dub;Lc8/gxb;Lc8/EWf;Lc8/EWf;Lc8/HMf;J)V
    .locals 2
    .param p2, "mtopTracker"    # Lc8/gxb;
    .param p3, "callback"    # Lc8/EWf;
    .param p4, "failure"    # Lc8/EWf;
    .param p5, "rb"    # Lc8/HMf;
    .param p6, "timer"    # J

    .prologue
    const/4 v0, 0x0

    .line 342
    iput-object p1, p0, Lc8/Cub;->this$0:Lc8/Dub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-boolean v0, p0, Lc8/Cub;->isTimeout:Z

    .line 336
    iput-boolean v0, p0, Lc8/Cub;->isFinish:Z

    .line 343
    iput-object p2, p0, Lc8/Cub;->mtopTracker:Lc8/gxb;

    .line 344
    iput-object p3, p0, Lc8/Cub;->callback:Lc8/EWf;

    .line 345
    iput-object p4, p0, Lc8/Cub;->failure:Lc8/EWf;

    .line 346
    iput-wide p6, p0, Lc8/Cub;->timer:J

    .line 347
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Cub;->rbWeakRef:Ljava/lang/ref/WeakReference;

    .line 348
    return-void
.end method

.method static synthetic access$700(Lc8/Cub;)Lc8/gxb;
    .locals 1
    .param p0, "x0"    # Lc8/Cub;

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Cub;->mtopTracker:Lc8/gxb;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Cub;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/Cub;

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Cub;->callback:Lc8/EWf;

    return-object v0
.end method

.method static synthetic access$900(Lc8/Cub;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/Cub;

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Cub;->failure:Lc8/EWf;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onCached(Lc8/HNp;Lc8/cOp;Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Lc8/HNp;
    .param p2, "pojo"    # Lc8/cOp;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string/jumbo v0, "WXMtopRequest"

    const-string/jumbo v1, "RemoteBusiness callback onCached"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p1}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, p0, Lc8/Cub;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 417
    invoke-static {}, Lc8/Dub;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lc8/Bub;

    invoke-direct {v1, p0}, Lc8/Bub;-><init>(Lc8/Cub;)V

    iget-wide v2, p0, Lc8/Cub;->timer:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_1
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lc8/Cub;->isTimeout:Z

    if-nez v0, :cond_1

    .line 392
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v0, "WXMtopRequest"

    const-string/jumbo v1, "RemoteBusiness callback onError"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cub;->isFinish:Z

    .line 396
    invoke-static {}, Lc8/Dub;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lc8/Aub;

    invoke-direct {v1, p0, p2}, Lc8/Aub;-><init>(Lc8/Cub;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_1
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 372
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lc8/Cub;->isTimeout:Z

    if-nez v0, :cond_1

    .line 373
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "WXMtopRequest"

    const-string/jumbo v1, "RemoteBusiness callback onSuccess"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cub;->isFinish:Z

    .line 377
    invoke-static {}, Lc8/Dub;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lc8/zub;

    invoke-direct {v1, p0, p2}, Lc8/zub;-><init>(Lc8/Cub;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_1
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTimeOut()V
    .locals 6

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/Cub;->isFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_0
    :try_start_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    const-string/jumbo v1, "WXMtopRequest"

    const-string/jumbo v2, "callback onTimeOut"

    invoke-static {v1, v2}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Cub;->isTimeout:Z

    .line 359
    iget-object v1, p0, Lc8/Cub;->rbWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HMf;

    .line 360
    .local v0, "remoteBusiness":Lc8/HMf;
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lc8/HMf;->cancelRequest()V

    .line 363
    :cond_2
    iget-object v1, p0, Lc8/Cub;->mtopTracker:Lc8/gxb;

    if-eqz v1, :cond_3

    .line 364
    iget-object v1, p0, Lc8/Cub;->mtopTracker:Lc8/gxb;

    iget-object v2, p0, Lc8/Cub;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1, v2}, Lc8/gxb;->onResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 366
    :cond_3
    iget-object v1, p0, Lc8/Cub;->this$0:Lc8/Dub;

    iget-object v2, p0, Lc8/Cub;->this$0:Lc8/Dub;

    iget-object v3, p0, Lc8/Cub;->callback:Lc8/EWf;

    iget-object v4, p0, Lc8/Cub;->failure:Lc8/EWf;

    iget-object v5, p0, Lc8/Cub;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {v2, v3, v4, v5}, Lc8/Dub;->access$600(Lc8/Dub;Lc8/EWf;Lc8/EWf;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/uub;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Dub;->access$200(Lc8/Dub;Lc8/uub;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v0    # "remoteBusiness":Lc8/HMf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
