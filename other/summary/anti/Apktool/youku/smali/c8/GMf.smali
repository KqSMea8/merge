.class public Lc8/GMf;
.super Lc8/COp;
.source "MtopBusiness.java"


# static fields
.field public static final MAX_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBusiness"

.field private static seqGen:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private apiID:Lc8/ENp;

.field public authParam:Ljava/lang/String;

.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public isCached:Z

.field private isCancelled:Z

.field private isErrorNotifyAfterCache:Z

.field public listener:Lc8/QNp;

.field private mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public onBgFinishTime:J

.field public reqStartTime:J

.field public requestContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected requestType:I

.field protected retryTime:I

.field public sendStartTime:J

.field private final seqNo:Ljava/lang/String;

.field public showAuthUI:Z

.field private showLoginUI:Z

.field private syncRequestLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/GMf;->seqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V
    .locals 5
    .param p1, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lc8/dOp;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lc8/COp;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    .line 38
    iput-boolean v0, p0, Lc8/GMf;->isCancelled:Z

    .line 43
    iput v0, p0, Lc8/GMf;->retryTime:I

    .line 44
    iput v0, p0, Lc8/GMf;->requestType:I

    .line 49
    iput-object v1, p0, Lc8/GMf;->requestContext:Ljava/lang/Object;

    .line 52
    iput-boolean v4, p0, Lc8/GMf;->showLoginUI:Z

    .line 53
    iput-boolean v0, p0, Lc8/GMf;->isErrorNotifyAfterCache:Z

    .line 55
    iput-object v1, p0, Lc8/GMf;->authParam:Ljava/lang/String;

    .line 56
    iput-boolean v4, p0, Lc8/GMf;->showAuthUI:Z

    .line 58
    iput-boolean v0, p0, Lc8/GMf;->isCached:Z

    .line 59
    iput-wide v2, p0, Lc8/GMf;->reqStartTime:J

    .line 60
    iput-wide v2, p0, Lc8/GMf;->onBgFinishTime:J

    .line 61
    iput-wide v2, p0, Lc8/GMf;->sendStartTime:J

    .line 63
    iput-object v1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 64
    iput-object v1, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    invoke-direct {p0}, Lc8/GMf;->genSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    .line 76
    return-void
.end method

.method protected constructor <init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lc8/COp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 38
    iput-boolean v0, p0, Lc8/GMf;->isCancelled:Z

    .line 43
    iput v0, p0, Lc8/GMf;->retryTime:I

    .line 44
    iput v0, p0, Lc8/GMf;->requestType:I

    .line 49
    iput-object v1, p0, Lc8/GMf;->requestContext:Ljava/lang/Object;

    .line 52
    iput-boolean v4, p0, Lc8/GMf;->showLoginUI:Z

    .line 53
    iput-boolean v0, p0, Lc8/GMf;->isErrorNotifyAfterCache:Z

    .line 55
    iput-object v1, p0, Lc8/GMf;->authParam:Ljava/lang/String;

    .line 56
    iput-boolean v4, p0, Lc8/GMf;->showAuthUI:Z

    .line 58
    iput-boolean v0, p0, Lc8/GMf;->isCached:Z

    .line 59
    iput-wide v2, p0, Lc8/GMf;->reqStartTime:J

    .line 60
    iput-wide v2, p0, Lc8/GMf;->onBgFinishTime:J

    .line 61
    iput-wide v2, p0, Lc8/GMf;->sendStartTime:J

    .line 63
    iput-object v1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 64
    iput-object v1, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 83
    invoke-direct {p0}, Lc8/GMf;->genSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static build(Lc8/AOp;Lc8/dOp;)Lc8/GMf;
    .locals 1
    .param p0, "mtop"    # Lc8/AOp;
    .param p1, "inputData"    # Lc8/dOp;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/GMf;->build(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p0, "mtop"    # Lc8/AOp;
    .param p1, "inputData"    # Lc8/dOp;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lc8/GMf;

    invoke-direct {v0, p0, p1, p2}, Lc8/GMf;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    return-object v0
.end method

.method public static build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;)Lc8/GMf;
    .locals 1
    .param p0, "mtop"    # Lc8/AOp;
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p0, "mtop"    # Lc8/AOp;
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lc8/GMf;

    invoke-direct {v0, p0, p1, p2}, Lc8/GMf;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public static build(Lc8/dOp;)Lc8/GMf;
    .locals 1
    .param p0, "inputData"    # Lc8/dOp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/GMf;->build(Lc8/AOp;Lc8/dOp;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lc8/dOp;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p0, "inputData"    # Lc8/dOp;
    .param p1, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/GMf;->build(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/GMf;
    .locals 2
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {v1}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p1, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lc8/AOp;->instance(Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method private cancelRequest(Z)V
    .locals 6
    .param p1, "log"    # Z

    .prologue
    const/4 v5, 0x1

    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string/jumbo v1, "mtopsdk.MtopBusiness"

    iget-object v2, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v3, "cancelRequest."

    invoke-static {v3, p0}, Lc8/fNf;->getRequestLogInfo(Ljava/lang/String;Lc8/GMf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iput-boolean v5, p0, Lc8/GMf;->isCancelled:Z

    .line 350
    iget-object v1, p0, Lc8/GMf;->apiID:Lc8/ENp;

    if-eqz v1, :cond_1

    .line 352
    :try_start_0
    iget-object v1, p0, Lc8/GMf;->apiID:Lc8/ENp;

    invoke-virtual {v1}, Lc8/ENp;->cancelApiCall()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_1
    :goto_0
    iget-object v1, p0, Lc8/GMf;->mtopInstance:Lc8/AOp;

    invoke-static {v1, p0}, Lc8/IMf;->removeFromRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 358
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.MtopBusiness"

    iget-object v2, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v3, "Cancel request task failed."

    const/4 v4, 0x0

    invoke-static {v3, p0, v5, v4}, Lc8/fNf;->getRequestLogInfo(Ljava/lang/String;Lc8/GMf;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doErrorCallback(Lmtopsdk/mtop/domain/MtopResponse;Lc8/CMf;)V
    .locals 6
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "listener"    # Lc8/CMf;

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "isSysError":Z
    if-nez p1, :cond_2

    .line 491
    const/4 v1, 0x1

    .line 492
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mtopResponse is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    :try_start_0
    instance-of v2, p2, Lc8/AMf;

    if-eqz v2, :cond_5

    .line 510
    check-cast p2, Lc8/AMf;

    .end local p2    # "listener":Lc8/CMf;
    iget v2, p0, Lc8/GMf;->requestType:I

    invoke-virtual {p0}, Lc8/GMf;->getReqContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, p1, v3}, Lc8/AMf;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_1
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listener onError callback, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_6

    const-string/jumbo v2, "sys error"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1
    return-void

    .line 495
    .restart local p2    # "listener":Lc8/CMf;
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    const/4 v1, 0x1

    .line 497
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session invalid error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_3
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    :cond_4
    const/4 v1, 0x1

    .line 503
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mtopServerError or mtopSdkError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_5
    :try_start_1
    iget v2, p0, Lc8/GMf;->requestType:I

    invoke-virtual {p0}, Lc8/GMf;->getReqContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, p1, v3}, Lc8/CMf;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 514
    .end local p2    # "listener":Lc8/CMf;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "listener onError callback error"

    invoke-static {v2, v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 519
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v2, "biz error"

    goto/16 :goto_2
.end method

.method private genSeqNo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/GMf;->seqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/GMf;->stat:Lc8/pPp;

    iget-object v2, v2, Lc8/pPp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic addCacheKeyParamBlackList(Ljava/util/List;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->addCacheKeyParamBlackList(Ljava/util/List;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public addCacheKeyParamBlackList(Ljava/util/List;)Lc8/GMf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/GMf;"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lc8/COp;->addCacheKeyParamBlackList(Ljava/util/List;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lc8/GMf;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-super {p0, p1, p2}, Lc8/COp;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic addListener(Lc8/QNp;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Lc8/QNp;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->addListener(Lc8/QNp;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lc8/QNp;)Lc8/GMf;
    .locals 0
    .param p1, "listener"    # Lc8/QNp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lc8/GMf;->listener:Lc8/QNp;

    .line 206
    return-object p0
.end method

.method public bridge synthetic addMteeUa(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->addMteeUa(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public addMteeUa(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "mteeUa"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-super {p0, p1}, Lc8/COp;->addMteeUa(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lc8/GMf;->addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "openAppKey"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Lc8/COp;->addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public asyncRequest()Lc8/ENp;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lc8/GMf;->startRequest()V

    .line 315
    iget-object v0, p0, Lc8/GMf;->apiID:Lc8/ENp;

    return-object v0
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/GMf;->cancelRequest(Z)V

    .line 339
    return-void
.end method

.method public doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;)V
    .locals 6
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "pojo"    # Lc8/cOp;

    .prologue
    .line 431
    iget-object v3, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_0

    .line 432
    iput-object p1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 433
    iget-object v3, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 436
    :cond_0
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "doFinish request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    if-eqz p1, :cond_1

    .line 440
    const-string/jumbo v3, ", retCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-boolean v3, p0, Lc8/GMf;->isCancelled:Z

    if-eqz v3, :cond_4

    .line 447
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "request is cancelled,don\'t callback listener."

    invoke-static {v3, v4, v5}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_3
    :goto_0
    return-void

    .line 452
    :cond_4
    iget-object v3, p0, Lc8/GMf;->listener:Lc8/QNp;

    instance-of v3, v3, Lc8/CMf;

    if-nez v3, :cond_5

    .line 453
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "listener did\'t implement IRemoteBaseListener"

    invoke-static {v3, v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_5
    iget-object v1, p0, Lc8/GMf;->listener:Lc8/QNp;

    check-cast v1, Lc8/CMf;

    .line 459
    .local v1, "l":Lc8/CMf;
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 462
    :try_start_0
    iget v3, p0, Lc8/GMf;->requestType:I

    invoke-virtual {p0}, Lc8/GMf;->getReqContext()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, p1, p2, v4}, Lc8/CMf;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_1
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "listener onSuccess callback."

    invoke-static {v3, v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "listener onSuccess callback error"

    invoke-static {v3, v4, v5, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 473
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    iget-boolean v3, p0, Lc8/GMf;->isCached:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lc8/GMf;->isErrorNotifyAfterCache:Z

    if-nez v3, :cond_7

    .line 474
    const-string/jumbo v3, "mtopsdk.MtopBusiness"

    iget-object v4, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "listener onCached callback,doNothing in doFinish()"

    invoke-static {v3, v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_7
    invoke-direct {p0, p1, v1}, Lc8/GMf;->doErrorCallback(Lmtopsdk/mtop/domain/MtopResponse;Lc8/CMf;)V

    goto :goto_0
.end method

.method public bridge synthetic enableProgressListener()Lc8/COp;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/GMf;->enableProgressListener()Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public enableProgressListener()Lc8/GMf;
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lc8/COp;->enableProgressListener()Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic forceRefreshCache()Lc8/COp;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/GMf;->forceRefreshCache()Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public forceRefreshCache()Lc8/GMf;
    .locals 1

    .prologue
    .line 582
    invoke-super {p0}, Lc8/COp;->forceRefreshCache()Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lc8/GMf;->requestType:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lc8/GMf;->retryTime:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic handler(Landroid/os/Handler;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->handler(Landroid/os/Handler;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lc8/GMf;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 587
    invoke-super {p0, p1}, Lc8/COp;->handler(Landroid/os/Handler;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic headers(Ljava/util/Map;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->headers(Ljava/util/Map;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lc8/GMf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/GMf;"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lc8/COp;->headers(Ljava/util/Map;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public isNeedAuth()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lc8/GMf;->authParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowLoginUI()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lc8/GMf;->showLoginUI:Z

    return v0
.end method

.method public isTaskCanceled()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lc8/GMf;->isCancelled:Z

    return v0
.end method

.method public bridge synthetic protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Lmtopsdk/mtop/domain/ProtocolEnum;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/GMf;
    .locals 1
    .param p1, "protocol"    # Lmtopsdk/mtop/domain/ProtocolEnum;

    .prologue
    .line 597
    invoke-super {p0, p1}, Lc8/COp;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public registerListener(Lc8/CMf;)Lc8/GMf;
    .locals 0
    .param p1, "listener"    # Lc8/CMf;

    .prologue
    .line 192
    iput-object p1, p0, Lc8/GMf;->listener:Lc8/QNp;

    .line 193
    return-object p0
.end method

.method public registerListener(Lc8/QNp;)Lc8/GMf;
    .locals 0
    .param p1, "listener"    # Lc8/QNp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lc8/GMf;->listener:Lc8/QNp;

    .line 182
    return-object p0
.end method

.method public bridge synthetic reqContext(Ljava/lang/Object;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->reqContext(Ljava/lang/Object;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public reqContext(Ljava/lang/Object;)Lc8/GMf;
    .locals 1
    .param p1, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 602
    invoke-super {p0, p1}, Lc8/COp;->reqContext(Ljava/lang/Object;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;
    .locals 1
    .param p1, "method"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 607
    invoke-super {p0, p1}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method retryRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 370
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v0, "mtopsdk.MtopBusiness"

    iget-object v1, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v2, "retryRequest."

    invoke-static {v2, p0}, Lc8/fNf;->getRequestLogInfo(Ljava/lang/String;Lc8/GMf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    iget v0, p0, Lc8/GMf;->retryTime:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 375
    iput v3, p0, Lc8/GMf;->retryTime:I

    .line 376
    invoke-virtual {p0, v4, v4}, Lc8/GMf;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;)V

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-direct {p0, v3}, Lc8/GMf;->cancelRequest(Z)V

    .line 380
    iget v0, p0, Lc8/GMf;->requestType:I

    iget-object v1, p0, Lc8/GMf;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lc8/GMf;->startRequest(ILjava/lang/Class;)V

    .line 381
    iget v0, p0, Lc8/GMf;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/GMf;->retryTime:I

    goto :goto_0
.end method

.method public bridge synthetic retryTime(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->retryTime(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public retryTime(I)Lc8/GMf;
    .locals 1
    .param p1, "retryTimes"    # I

    .prologue
    .line 612
    invoke-super {p0, p1}, Lc8/COp;->retryTime(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setBizId(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setBizId(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setBizId(I)Lc8/GMf;
    .locals 1
    .param p1, "bizId"    # I

    .prologue
    .line 530
    invoke-super {p0, p1}, Lc8/COp;->setBizId(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setCacheControlNoCache()Lc8/COp;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/GMf;->setCacheControlNoCache()Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setCacheControlNoCache()Lc8/GMf;
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Lc8/COp;->setCacheControlNoCache()Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setConnectionTimeoutMilliSecond(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setConnectionTimeoutMilliSecond(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lc8/GMf;
    .locals 1
    .param p1, "connTimeout"    # I

    .prologue
    .line 622
    invoke-super {p0, p1}, Lc8/COp;->setConnectionTimeoutMilliSecond(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setCustomDomain(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setCustomDomain(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setCustomDomain(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lc8/COp;->setCustomDomain(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public setErrorNotifyAfterCache(Z)Lc8/GMf;
    .locals 0
    .param p1, "bNotify"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lc8/GMf;->isErrorNotifyAfterCache:Z

    .line 419
    return-object p0
.end method

.method public setErrorNotifyNeedAfterCache(Z)V
    .locals 0
    .param p1, "bNeed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lc8/GMf;->setErrorNotifyAfterCache(Z)Lc8/GMf;

    .line 425
    return-void
.end method

.method public bridge synthetic setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Lmtopsdk/mtop/domain/JsonTypeEnum;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/GMf;
    .locals 1
    .param p1, "jsonTypeEnum"    # Lmtopsdk/mtop/domain/JsonTypeEnum;

    .prologue
    .line 632
    invoke-super {p0, p1}, Lc8/COp;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public setNeedAuth(Ljava/lang/String;Z)Lc8/GMf;
    .locals 4
    .param p1, "authParam"    # Ljava/lang/String;
    .param p2, "showAuthUI"    # Z

    .prologue
    .line 404
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "mtopsdk.MtopBusiness"

    iget-object v1, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setNeedAuth. authParam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",showAuthUI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lc8/GMf;->authParam:Ljava/lang/String;

    .line 408
    iput-boolean p2, p0, Lc8/GMf;->showAuthUI:Z

    .line 409
    return-object p0
.end method

.method public bridge synthetic setNetInfo(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setNetInfo(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setNetInfo(I)Lc8/GMf;
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 637
    invoke-super {p0, p1}, Lc8/COp;->setNetInfo(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setPageUrl(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setPageUrl(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setPageUrl(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-super {p0, p1}, Lc8/COp;->setPageUrl(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lc8/GMf;->setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "reqAppKey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-super {p0, p1, p2}, Lc8/COp;->setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setReqBizExt(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setReqBizExt(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setReqBizExt(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "reqBizExt"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-super {p0, p1}, Lc8/COp;->setReqBizExt(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setReqSource(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setReqSource(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setReqSource(I)Lc8/GMf;
    .locals 1
    .param p1, "reqSource"    # I

    .prologue
    .line 657
    invoke-super {p0, p1}, Lc8/COp;->setReqSource(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setReqUserId(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setReqUserId(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setReqUserId(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "reqUserId"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-super {p0, p1}, Lc8/COp;->setReqUserId(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic setSocketTimeoutMilliSecond(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->setSocketTimeoutMilliSecond(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public setSocketTimeoutMilliSecond(I)Lc8/GMf;
    .locals 1
    .param p1, "socketTimeout"    # I

    .prologue
    .line 667
    invoke-super {p0, p1}, Lc8/COp;->setSocketTimeoutMilliSecond(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public showLoginUI(Z)Lc8/GMf;
    .locals 0
    .param p1, "showUI"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lc8/GMf;->showLoginUI:Z

    .line 391
    return-object p0
.end method

.method public startRequest()V
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/GMf;->startRequest(ILjava/lang/Class;)V

    .line 218
    return-void
.end method

.method public startRequest(ILjava/lang/Class;)V
    .locals 5
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v0, "mtopsdk.MtopBusiness"

    iget-object v1, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v2, "MtopRequest is null!"

    invoke-static {v0, v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string/jumbo v0, "mtopsdk.MtopBusiness"

    iget-object v1, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/GMf;->reqStartTime:J

    .line 244
    iput-boolean v4, p0, Lc8/GMf;->isCancelled:Z

    .line 245
    iput-boolean v4, p0, Lc8/GMf;->isCached:Z

    .line 246
    iput-object p2, p0, Lc8/GMf;->clazz:Ljava/lang/Class;

    .line 247
    iput p1, p0, Lc8/GMf;->requestType:I

    .line 248
    iget-object v0, p0, Lc8/GMf;->requestContext:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lc8/GMf;->requestContext:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lc8/GMf;->reqContext(Ljava/lang/Object;)Lc8/GMf;

    .line 252
    :cond_2
    iget-object v0, p0, Lc8/GMf;->listener:Lc8/QNp;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lc8/GMf;->isCancelled:Z

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lc8/GMf;->listener:Lc8/QNp;

    invoke-static {p0, v0}, Lc8/dNf;->getMtopListenerProxy(Lc8/GMf;Lc8/QNp;)Lc8/QNp;

    move-result-object v0

    invoke-super {p0, v0}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    .line 256
    :cond_3
    invoke-virtual {p0, v4}, Lc8/GMf;->mtopCommitStatData(Z)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/GMf;->sendStartTime:J

    .line 259
    invoke-super {p0}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v0

    iput-object v0, p0, Lc8/GMf;->apiID:Lc8/ENp;

    goto :goto_0
.end method

.method public startRequest(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lc8/GMf;->startRequest(ILjava/lang/Class;)V

    .line 227
    return-void
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 6

    .prologue
    .line 268
    const-string/jumbo v1, "mtopsdk.MtopBusiness"

    iget-object v2, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    const-string/jumbo v3, "syncRequest"

    invoke-static {v1, v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 270
    iget-object v1, p0, Lc8/GMf;->listener:Lc8/QNp;

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Lc8/FMf;

    invoke-direct {v1, p0}, Lc8/FMf;-><init>(Lc8/GMf;)V

    iput-object v1, p0, Lc8/GMf;->listener:Lc8/QNp;

    .line 286
    :cond_0
    invoke-virtual {p0}, Lc8/GMf;->startRequest()V

    .line 288
    :try_start_0
    iget-object v1, p0, Lc8/GMf;->syncRequestLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x78

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 289
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 291
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRequest timeout . apiKey="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v3, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lc8/GMf;->cancelRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "ret":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v1, :cond_2

    .line 301
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const-string/jumbo v5, "MTOP\u5f02\u6b65\u8c03\u7528\u8d85\u65f6"

    invoke-direct {v1, v2, v3, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 305
    :cond_2
    iget-object v1, p0, Lc8/GMf;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    return-object v1

    .line 291
    .restart local v0    # "ret":Z
    :cond_3
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    .end local v0    # "ret":Z
    :catch_0
    move-exception v1

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string/jumbo v2, "mtopsdk.MtopBusiness"

    iget-object v3, p0, Lc8/GMf;->seqNo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SyncRequest InterruptedException. apiKey="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v3, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method public bridge synthetic ttid(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->ttid(Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public ttid(Ljava/lang/String;)Lc8/GMf;
    .locals 1
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-super {p0, p1}, Lc8/COp;->ttid(Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic useCache()Lc8/COp;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/GMf;->useCache()Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public useCache()Lc8/GMf;
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lc8/COp;->useCache()Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public bridge synthetic useWua()Lc8/COp;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/GMf;->useWua()Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useWua(I)Lc8/COp;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/GMf;->useWua(I)Lc8/GMf;

    move-result-object v0

    return-object v0
.end method

.method public useWua()Lc8/GMf;
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Lc8/COp;->useWua()Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method

.method public useWua(I)Lc8/GMf;
    .locals 1
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    invoke-super {p0, p1}, Lc8/COp;->useWua(I)Lc8/COp;

    move-result-object v0

    check-cast v0, Lc8/GMf;

    return-object v0
.end method
