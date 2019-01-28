.class public Lc8/cNf;
.super Lc8/aNf;
.source "MtopFinishListenerImpl.java"

# interfaces
.implements Lc8/JNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopFinishListenerImpl"


# direct methods
.method public constructor <init>(Lc8/GMf;Lc8/QNp;)V
    .locals 0
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/QNp;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lc8/aNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 20
    .param p1, "event"    # Lc8/ONp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v15}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v11

    .line 34
    .local v11, "seqNo":Ljava/lang/String;
    sget-object v15, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v15}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 35
    const-string/jumbo v15, "mtopsdk.MtopFinishListenerImpl"

    const-string/jumbo v16, "Mtop onFinish event received."

    move-object/from16 v0, v16

    invoke-static {v15, v11, v0}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v15}, Lc8/GMf;->isTaskCanceled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 39
    sget-object v15, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v15}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 40
    const-string/jumbo v15, "mtopsdk.MtopFinishListenerImpl"

    const-string/jumbo v16, "The request of MtopBusiness is canceled."

    move-object/from16 v0, v16

    invoke-static {v15, v11, v0}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v10

    .line 47
    .local v10, "response":Lmtopsdk/mtop/domain/MtopResponse;
    if-nez v10, :cond_3

    .line 48
    sget-object v15, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v15}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 49
    const-string/jumbo v15, "mtopsdk.MtopFinishListenerImpl"

    const-string/jumbo v16, "The MtopResponse of onFinish event  is null."

    move-object/from16 v0, v16

    invoke-static {v15, v11, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 56
    .local v12, "sendEndTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->listener:Lc8/QNp;

    instance-of v15, v15, Lc8/DMf;

    if-eqz v15, :cond_4

    .line 58
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->listener:Lc8/QNp;

    check-cast v15, Lc8/DMf;

    invoke-virtual/range {p1 .. p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lc8/DMf;->parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->listener:Lc8/QNp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v15, v0, v1}, Lc8/QMf;->getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v3

    .line 65
    .local v3, "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    iput-object v10, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 68
    .local v8, "parseStartTime":J
    move-wide v6, v8

    .line 69
    .local v6, "parseEndTime":J
    const/4 v4, 0x0

    .line 70
    .local v4, "mtopStat":Lc8/pPp;
    if-eqz v10, :cond_6

    .line 71
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-object v15, v15, Lc8/GMf;->clazz:Ljava/lang/Class;

    if-eqz v15, :cond_5

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-object v15, v15, Lc8/GMf;->clazz:Ljava/lang/Class;

    invoke-static {v10, v15}, Lc8/jPp;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/cOp;

    move-result-object v5

    .line 73
    .local v5, "pojo":Lc8/cOp;
    iput-object v5, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lc8/cOp;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 76
    .end local v5    # "pojo":Lc8/cOp;
    :cond_5
    invoke-virtual {v10}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v4

    .line 79
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lc8/GMf;->onBgFinishTime:J

    .line 80
    if-eqz v4, :cond_7

    .line 81
    invoke-virtual {v4}, Lc8/pPp;->getRbStatData()Lc8/oPp;

    move-result-object v14

    .line 82
    .local v14, "statData":Lc8/oPp;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->sendStartTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->reqStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->beforeReqTime:J

    .line 83
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->sendStartTime:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->mtopReqTime:J

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->onBgFinishTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->afterReqTime:J

    .line 85
    sub-long v16, v8, v12

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->parseTime:J

    .line 86
    sub-long v16, v6, v8

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->jsonParseTime:J

    .line 87
    iget-wide v0, v14, Lc8/oPp;->jsonParseTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->jsonTime:J

    .line 88
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->onBgFinishTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cNf;->mtopBusiness:Lc8/GMf;

    iget-wide v0, v15, Lc8/GMf;->reqStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->rbReqTime:J

    .line 89
    iget-wide v0, v14, Lc8/oPp;->rbReqTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/oPp;->totalTime:J

    .line 96
    .end local v14    # "statData":Lc8/oPp;
    :cond_7
    invoke-static {}, Lc8/QMf;->instance()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 59
    .end local v3    # "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    .end local v4    # "mtopStat":Lc8/pPp;
    .end local v6    # "parseEndTime":J
    .end local v8    # "parseStartTime":J
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "mtopsdk.MtopFinishListenerImpl"

    const-string/jumbo v16, "listener parseResponse callback error."

    move-object/from16 v0, v16

    invoke-static {v15, v11, v0, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
