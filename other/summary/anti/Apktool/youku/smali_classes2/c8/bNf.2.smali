.class public Lc8/bNf;
.super Lc8/aNf;
.source "MtopCacheListenerImpl.java"

# interfaces
.implements Lc8/INp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopCacheListenerImpl"


# direct methods
.method public constructor <init>(Lc8/GMf;Lc8/QNp;)V
    .locals 0
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/QNp;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lc8/aNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCached(Lc8/HNp;Ljava/lang/Object;)V
    .locals 18
    .param p1, "event"    # Lc8/HNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v13}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, "seqNo":Ljava/lang/String;
    sget-object v13, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v13}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 33
    const-string/jumbo v13, "mtopsdk.MtopCacheListenerImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Mtop onCached event received. apiKey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    iget-object v15, v15, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v9, v14}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v13}, Lc8/GMf;->isTaskCanceled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 37
    sget-object v13, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v13}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 38
    const-string/jumbo v13, "mtopsdk.MtopCacheListenerImpl"

    const-string/jumbo v14, "The request of MtopBusiness is cancelled."

    invoke-static {v13, v9, v14}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->listener:Lc8/QNp;

    if-nez v13, :cond_3

    .line 42
    sget-object v13, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v13}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 43
    const-string/jumbo v13, "mtopsdk.MtopCacheListenerImpl"

    const-string/jumbo v14, "The listener of MtopBusiness is null."

    invoke-static {v13, v9, v14}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    .local v2, "cacheReturnTime":J
    const/4 v8, 0x0

    .line 50
    .local v8, "response":Lmtopsdk/mtop/domain/MtopResponse;
    const/4 v7, 0x0

    .line 51
    .local v7, "pojo":Lc8/cOp;
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 53
    .local v10, "sTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    iget-object v13, v13, Lc8/GMf;->clazz:Ljava/lang/Class;

    invoke-static {v8, v13}, Lc8/jPp;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/cOp;

    move-result-object v7

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 56
    .local v4, "eTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Lc8/GMf;->onBgFinishTime:J

    .line 57
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v13

    invoke-virtual {v13}, Lc8/pPp;->getRbStatData()Lc8/oPp;

    move-result-object v12

    .line 58
    .local v12, "statData":Lc8/oPp;
    sub-long v14, v4, v10

    iput-wide v14, v12, Lc8/oPp;->jsonParseTime:J

    .line 59
    iget-wide v14, v12, Lc8/oPp;->jsonParseTime:J

    iput-wide v14, v12, Lc8/oPp;->jsonTime:J

    .line 60
    const/4 v13, 0x1

    iput v13, v12, Lc8/oPp;->isCache:I

    .line 61
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    iget-wide v14, v13, Lc8/GMf;->sendStartTime:J

    sub-long v14, v2, v14

    iput-wide v14, v12, Lc8/oPp;->mtopReqTime:J

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    iget-wide v14, v13, Lc8/GMf;->onBgFinishTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v13, Lc8/GMf;->reqStartTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    iput-wide v14, v12, Lc8/oPp;->rbReqTime:J

    .line 63
    iget-wide v14, v12, Lc8/oPp;->rbReqTime:J

    iput-wide v14, v12, Lc8/oPp;->totalTime:J

    .line 66
    .end local v4    # "eTime":J
    .end local v10    # "sTime":J
    .end local v12    # "statData":Lc8/oPp;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->listener:Lc8/QNp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14}, Lc8/QMf;->getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v6

    .line 67
    .local v6, "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    iput-object v7, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lc8/cOp;

    .line 68
    iput-object v8, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 74
    invoke-static {}, Lc8/QMf;->instance()Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/bNf;->mtopBusiness:Lc8/GMf;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lc8/GMf;->isCached:Z

    goto/16 :goto_0
.end method
