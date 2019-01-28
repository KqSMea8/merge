.class public Lc8/QMf;
.super Landroid/os/Handler;
.source "HandlerMgr.java"


# static fields
.field public static final ON_CACHED:I = 0x4

.field public static final ON_DATA_RECEIVED:I = 0x1

.field public static final ON_FINISHED:I = 0x3

.field public static final ON_HEADER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "mtopsdk.HandlerMgr"

.field private static volatile mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    return-void
.end method

.method private checkBeforeCallback(Lcom/taobao/tao/remotebusiness/handler/HandlerParam;)Z
    .locals 4
    .param p1, "hMsg"    # Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    .prologue
    const/4 v1, 0x0

    .line 168
    const-string/jumbo v0, ""

    .line 169
    .local v0, "seqNo":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 170
    const-string/jumbo v2, "mtopsdk.HandlerMgr"

    const-string/jumbo v3, "HandlerMsg is null."

    invoke-static {v2, v0, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v1

    .line 174
    :cond_0
    iget-object v2, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v2, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->isTaskCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const-string/jumbo v2, "mtopsdk.HandlerMgr"

    const-string/jumbo v3, "The request of MtopBusiness is cancelled."

    invoke-static {v2, v0, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    .locals 1
    .param p0, "listener"    # Lc8/QNp;
    .param p1, "event"    # Lc8/NNp;
    .param p2, "mtopBusiness"    # Lc8/GMf;

    .prologue
    .line 164
    new-instance v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;-><init>(Lc8/QNp;Lc8/NNp;Lc8/GMf;)V

    return-object v0
.end method

.method public static instance()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lc8/QMf;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lc8/QMf;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lc8/QMf;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lc8/QMf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/QMf;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/QMf;->mHandler:Landroid/os/Handler;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lc8/QMf;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    .line 63
    .local v6, "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lc8/QMf;->checkBeforeCallback(Lcom/taobao/tao/remotebusiness/handler/HandlerParam;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 161
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v14}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "seqNo":Ljava/lang/String;
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v14}, Lc8/GMf;->getReqContext()Ljava/lang/Object;

    move-result-object v8

    .line 68
    .local v8, "reqContext":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 160
    :cond_1
    :goto_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 70
    :pswitch_0
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 71
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "onReceive: ON_DATA_RECEIVED."

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_2
    :try_start_0
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    check-cast v14, Lc8/EMf;

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lc8/NNp;

    check-cast v15, Lc8/RNp;

    invoke-interface {v14, v15, v8}, Lc8/EMf;->onDataReceived(Lc8/RNp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "listener onDataReceived callback error."

    invoke-static {v14, v12, v15, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    .end local v4    # "e":Ljava/lang/Throwable;
    :pswitch_1
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 82
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "onReceive: ON_HEADER."

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    :try_start_1
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    check-cast v14, Lc8/EMf;

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lc8/NNp;

    check-cast v15, Lc8/PNp;

    invoke-interface {v14, v15, v8}, Lc8/EMf;->onHeader(Lc8/PNp;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "listener onHeader callback error."

    invoke-static {v14, v12, v15, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/lang/Throwable;
    :pswitch_2
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 93
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "onReceive: ON_FINISHED."

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 96
    .local v10, "sTime":J
    const-wide/16 v2, 0x0

    .line 97
    .local v2, "dataSize":J
    const/4 v7, 0x0

    .line 98
    .local v7, "mtopStat":Lc8/pPp;
    const/4 v13, 0x0

    .line 99
    .local v13, "statData":Lc8/oPp;
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v14, :cond_5

    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v14}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 100
    invoke-virtual {v7}, Lc8/pPp;->getRbStatData()Lc8/oPp;

    move-result-object v13

    .line 101
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    iget-wide v14, v14, Lc8/GMf;->onBgFinishTime:J

    sub-long v14, v10, v14

    iput-wide v14, v13, Lc8/oPp;->toMainThTime:J

    .line 102
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v14}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v14

    if-eqz v14, :cond_5

    .line 103
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v14}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v14

    array-length v14, v14

    int-to-long v2, v14

    .line 107
    :cond_5
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v0, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lc8/cOp;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lc8/GMf;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;)V

    .line 109
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "doFinishTime="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; dataSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    if-eqz v13, :cond_6

    .line 113
    invoke-virtual {v13}, Lc8/oPp;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_6
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onReceive: ON_FINISHED. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v7, :cond_1

    .line 119
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lc8/pPp;->commitStatData(Z)V

    goto/16 :goto_1

    .line 124
    .end local v2    # "dataSize":J
    .end local v7    # "mtopStat":Lc8/pPp;
    .end local v10    # "sTime":J
    .end local v13    # "statData":Lc8/oPp;
    :pswitch_3
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 125
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "onReceive: ON_CACHED"

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_8
    iget-object v5, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lc8/NNp;

    check-cast v5, Lc8/HNp;

    .line 128
    .local v5, "event":Lc8/HNp;
    if-nez v5, :cond_9

    .line 129
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "HandlerMsg.event is null."

    invoke-static {v14, v12, v15}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_9
    invoke-virtual {v5}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 134
    invoke-virtual {v5}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v14

    invoke-virtual {v14}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v7

    .line 135
    .restart local v7    # "mtopStat":Lc8/pPp;
    if-eqz v7, :cond_b

    .line 136
    invoke-virtual {v7}, Lc8/pPp;->getRbStatData()Lc8/oPp;

    move-result-object v13

    .line 137
    .restart local v13    # "statData":Lc8/oPp;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v0, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lc8/GMf;->onBgFinishTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    iput-wide v14, v13, Lc8/oPp;->toMainThTime:J

    .line 138
    sget-object v14, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v14}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 139
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    invoke-virtual {v13}, Lc8/oPp;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v12, v15}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_a
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lc8/pPp;->commitStatData(Z)V

    .line 145
    .end local v7    # "mtopStat":Lc8/pPp;
    .end local v13    # "statData":Lc8/oPp;
    :cond_b
    :try_start_2
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    instance-of v14, v14, Lc8/BMf;

    if-eqz v14, :cond_c

    .line 146
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "listener onCached callback"

    invoke-static {v14, v12, v15}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    check-cast v14, Lc8/BMf;

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lc8/cOp;

    invoke-interface {v14, v5, v15, v8}, Lc8/BMf;->onCached(Lc8/HNp;Lc8/cOp;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 152
    :catch_2
    move-exception v4

    .line 153
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    const-string/jumbo v15, "listener onCached callback error."

    invoke-static {v14, v12, v15, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 149
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_c
    :try_start_3
    const-string/jumbo v14, "mtopsdk.HandlerMgr"

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v15}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "listener onCached transfer to onSuccess callback"

    invoke-static/range {v14 .. v16}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v14, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    check-cast v14, Lc8/CMf;

    iget-object v15, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v15}, Lc8/GMf;->getRequestType()I

    move-result v15

    iget-object v0, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lc8/cOp;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v1, v8}, Lc8/CMf;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
