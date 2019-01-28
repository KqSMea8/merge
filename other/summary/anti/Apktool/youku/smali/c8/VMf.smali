.class public Lc8/VMf;
.super Ljava/lang/Object;
.source "MtopJSBridge.java"

# interfaces
.implements Lc8/AMf;
.implements Lc8/BMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YMf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopJSListener"
.end annotation


# instance fields
.field private cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field private isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lc8/AMf;

.field private final mtopBusiness:Lc8/GMf;


# direct methods
.method public constructor <init>(Lc8/GMf;Lc8/AMf;)V
    .locals 2
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/AMf;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/VMf;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 323
    iput-object p1, p0, Lc8/VMf;->mtopBusiness:Lc8/GMf;

    .line 324
    iput-object p2, p0, Lc8/VMf;->listener:Lc8/AMf;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lc8/VMf;)Lc8/AMf;
    .locals 1
    .param p0, "x0"    # Lc8/VMf;

    .prologue
    .line 315
    iget-object v0, p0, Lc8/VMf;->listener:Lc8/AMf;

    return-object v0
.end method


# virtual methods
.method public onCached(Lc8/HNp;Lc8/cOp;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lc8/HNp;
    .param p2, "pojo"    # Lc8/cOp;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, p0, Lc8/VMf;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 395
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string/jumbo v0, "mtopsdk.MtopJSBridge"

    const-string/jumbo v1, "callback onCached"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_1
    return-void
.end method

.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 370
    iget-object v0, p0, Lc8/VMf;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 374
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string/jumbo v0, "mtopsdk.MtopJSBridge"

    const-string/jumbo v1, "callback onError"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_1
    invoke-static {}, Lc8/YMf;->access$100()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lc8/TMf;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/TMf;-><init>(Lc8/VMf;ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 7
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 348
    iget-object v0, p0, Lc8/VMf;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 352
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string/jumbo v0, "mtopsdk.MtopJSBridge"

    const-string/jumbo v1, "callback onSuccess"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    invoke-static {}, Lc8/YMf;->access$100()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v0, Lc8/SMf;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/SMf;-><init>(Lc8/VMf;ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 404
    iget-object v0, p0, Lc8/VMf;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const-string/jumbo v0, "mtopsdk.MtopJSBridge"

    const-string/jumbo v1, "callback onSystemError"

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-static {}, Lc8/YMf;->access$100()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lc8/UMf;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/UMf;-><init>(Lc8/VMf;ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public onTimeOut()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lc8/VMf;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const-string/jumbo v1, "mtopsdk.MtopJSBridge"

    const-string/jumbo v2, "callback onTimeOut"

    invoke-static {v1, v2}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lc8/VMf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v1}, Lc8/GMf;->cancelRequest()V

    .line 336
    :try_start_0
    iget-object v1, p0, Lc8/VMf;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lc8/VMf;->listener:Lc8/AMf;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/VMf;->cachedResponse:Lmtopsdk/mtop/domain/MtopResponse;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/AMf;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.MtopJSBridge"

    const-string/jumbo v2, "do onTimeOut callback error."

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/VMf;->listener:Lc8/AMf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lc8/AMf;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
