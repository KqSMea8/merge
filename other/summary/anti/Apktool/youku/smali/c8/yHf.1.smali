.class public Lc8/yHf;
.super Ljava/lang/Object;
.source "TLogCommandPareser.java"


# static fields
.field public static final ACK_RESPONSE_ID:I = 0xfff5

.field public static final AOP_ONLINE:I = 0xd

.field public static final AOP_ONLINE_RES:I = 0xe

.field public static final CANCEL_TRACE_STATUS:I = 0xfffa

.field public static final COMPLEX_CMD:I = 0xfffd

.field private static INSTANCE:Lc8/yHf; = null

.field public static final OPEN_REALTIME_CHANNEL:I = 0xb

.field public static final OPEN_REALTIME_CHANNEL_RES:I = 0xc

.field public static final PROCESS_STATE_RES_ID:I = 0xfffe

.field public static final START_RECORDING:I = 0x3

.field public static final START_RECORDING_RES:I = 0x4

.field public static final START_TRACE_ID:I = 0x9

.field public static final START_TRACE_ID_RES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TLog.TLogCommandPareser"

.field public static final UPLOAD_FILE:I = 0x1

.field public static final UPLOAD_LOG_RES:I = 0x2

.field public static final USER_DEFINE_CMD:I = 0xfff6

.field public static final USER_DEFINE_CMD_RES:I = 0xfff7


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lc8/yHf;->parseUploadFile(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseStartRecording(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseComplexCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseTraceIDCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseChannelChangeCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseAOPOnlineCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseCancelTraceCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/yHf;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/yHf;->parseOtherCommands(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    return-void
.end method

.method protected static getInstance()Lc8/yHf;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lc8/yHf;->INSTANCE:Lc8/yHf;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lc8/yHf;

    invoke-direct {v0}, Lc8/yHf;-><init>()V

    .line 102
    sput-object v0, Lc8/yHf;->INSTANCE:Lc8/yHf;

    invoke-direct {v0}, Lc8/yHf;->init()V

    .line 104
    :cond_0
    sget-object v0, Lc8/yHf;->INSTANCE:Lc8/yHf;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tlog-command-pareser"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lc8/yHf;->mThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lc8/yHf;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lc8/xHf;

    iget-object v1, p0, Lc8/yHf;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/xHf;-><init>(Lc8/yHf;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/yHf;->mHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method private parseAOPOnlineCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method private parseCancelTraceCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lc8/OHf;->getInstance()Lc8/OHf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/OHf;->removeTraceStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private parseChannelChangeCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 22
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    .line 420
    :try_start_0
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 421
    .local v9, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lc8/YHf;->getInstance()Lc8/YHf;

    move-result-object v8

    .line 423
    .local v8, "controller":Lc8/YHf;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lc8/YHf;->setParams(Ljava/util/Map;)V

    .line 425
    const-string/jumbo v2, "model"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 426
    .local v16, "model":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string/jumbo v2, "realtime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    :cond_0
    invoke-virtual {v8}, Lc8/YHf;->stop()V

    .line 473
    .end local v8    # "controller":Lc8/YHf;
    .end local v9    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "model":Ljava/lang/String;
    :goto_0
    return-void

    .line 432
    .restart local v8    # "controller":Lc8/YHf;
    .restart local v9    # "data":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "model":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "strategy"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v20

    .line 433
    .local v20, "strategy":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 434
    new-instance v21, Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 435
    .local v21, "uploadStrategy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, -0x1

    .local v13, "interval":I
    const/4 v14, -0x1

    .local v14, "logNum":I
    const/4 v15, -0x1

    .line 436
    .local v15, "logSize":I
    const-string/jumbo v2, "interval"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 437
    const-string/jumbo v2, "interval"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 439
    :cond_2
    const-string/jumbo v2, "interval"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v2, "logNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 441
    const-string/jumbo v2, "logNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 443
    :cond_3
    const-string/jumbo v2, "logNum"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string/jumbo v2, "logSize"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 445
    const-string/jumbo v2, "logSize"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 447
    :cond_4
    const-string/jumbo v2, "logSize"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v2, "network"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 450
    .local v18, "networks":Lcom/alibaba/fastjson/JSONArray;
    const/16 v17, 0x0

    .line 451
    .local v17, "netCondition":[Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 452
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 453
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 454
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v17, v12

    .line 453
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 457
    .end local v12    # "i":I
    :cond_5
    const-string/jumbo v2, "retryTimes"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 458
    .local v19, "retryTimes":I
    const-string/jumbo v2, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 459
    .local v10, "duration":J
    invoke-virtual {v8, v10, v11}, Lc8/YHf;->setDuration(J)V

    .line 460
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lc8/YHf;->setNetworkCondition([Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lc8/YHf;->setStrategy(Ljava/util/Map;)V

    .line 462
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lc8/YHf;->setRetryTimes(I)V

    .line 463
    invoke-virtual {v8}, Lc8/YHf;->start()V

    .line 466
    .end local v10    # "duration":J
    .end local v13    # "interval":I
    .end local v14    # "logNum":I
    .end local v15    # "logSize":I
    .end local v17    # "netCondition":[Ljava/lang/String;
    .end local v18    # "networks":Lcom/alibaba/fastjson/JSONArray;
    .end local v19    # "retryTimes":I
    .end local v21    # "uploadStrategy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/16 v2, 0xc

    const-string/jumbo v3, ""

    const-string/jumbo v4, "0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 467
    const-string/jumbo v2, "tlog_monitor_module"

    const-string/jumbo v3, "tlog_command_execute"

    const-string/jumbo v4, "commandID : 11"

    invoke-static {v2, v3, v4}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v8    # "controller":Lc8/YHf;
    .end local v9    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "model":Ljava/lang/String;
    .end local v20    # "strategy":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 472
    :cond_7
    const/16 v2, 0xc

    const-string/jumbo v3, ""

    const-string/jumbo v4, "2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized parseCommond(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const-class v0, Lc8/yHf;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/yHf;->parseCommond(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized parseCommond(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v3, Lc8/yHf;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    monitor-exit v3

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 195
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v2, "serviceId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lc8/yHf;->getInstance()Lc8/yHf;

    move-result-object v2

    iget-object v2, v2, Lc8/yHf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private parseComplexCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 24
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_6

    .line 355
    :try_start_0
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 356
    .local v16, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "orderBy"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 357
    .local v20, "orderBy":Ljava/lang/String;
    const-string/jumbo v2, "commands"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v15

    .line 359
    .local v15, "commands":Lcom/alibaba/fastjson/JSONArray;
    const/16 v21, 0x0

    .line 360
    .local v21, "orders":[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const-string/jumbo v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 364
    :cond_0
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_3

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    move-object/from16 v0, v21

    array-length v3, v0

    if-ne v2, v3, :cond_3

    .line 365
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 366
    aget-object v23, v21, v18

    .line 367
    .local v23, "targetNum":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 368
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 369
    .local v14, "command":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 370
    .local v22, "serialNum":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v2, "serviceId"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lc8/yHf;->parseCommond(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v14    # "command":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "serialNum":Ljava/lang/String;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 367
    .restart local v14    # "command":Lcom/alibaba/fastjson/JSONObject;
    .restart local v22    # "serialNum":Ljava/lang/String;
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 377
    .end local v14    # "command":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "i":I
    .end local v19    # "j":I
    .end local v22    # "serialNum":Ljava/lang/String;
    .end local v23    # "targetNum":Ljava/lang/String;
    :cond_3
    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    array-length v2, v0

    if-nez v2, :cond_5

    .line 378
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 379
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "mtop"

    invoke-static {v2, v3, v4}, Lc8/yHf;->parseCommond(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 384
    .end local v18    # "i":I
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 385
    .local v7, "resData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "content"

    const-string/jumbo v3, "\u547d\u4ee4\u89e3\u91ca\u6267\u884c\u6210\u529f"

    invoke-virtual {v7, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const v2, 0xfffe

    const-string/jumbo v3, ""

    const-string/jumbo v4, "0"

    const/4 v6, 0x1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 387
    const-string/jumbo v2, "tlog_monitor_module"

    const-string/jumbo v3, "tlog_command_execute"

    const-string/jumbo v4, "commandID : 65533"

    invoke-static {v2, v3, v4}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v7    # "resData":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "commands":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "orderBy":Ljava/lang/String;
    .end local v21    # "orders":[Ljava/lang/String;
    :goto_3
    return-void

    .line 390
    :catch_0
    move-exception v17

    .line 391
    .local v17, "e":Ljava/lang/Exception;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_6
    const v8, 0xfffe

    const-string/jumbo v9, ""

    const-string/jumbo v10, "2"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v8 .. v13}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto :goto_3
.end method

.method private parseOtherCommands(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const v0, 0xfff7

    .line 506
    const/4 v9, 0x0

    .line 508
    .local v9, "result":Z
    if-eqz p1, :cond_0

    .line 509
    :try_start_0
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 510
    .local v7, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "serviceName"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "serviceName":Ljava/lang/String;
    const-string/jumbo v1, "commandID"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 512
    .local v6, "commandID":I
    invoke-static {v10}, Lc8/EHf;->getCommandParser(Ljava/lang/String;)Lc8/rHf;

    move-result-object v8

    .line 513
    .local v8, "listener":Lc8/rHf;
    if-eqz v8, :cond_0

    .line 515
    invoke-virtual {v8, v10, v6, v7, p2}, Lc8/rHf;->parserCommand(Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 520
    .end local v6    # "commandID":I
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "listener":Lc8/rHf;
    .end local v10    # "serviceName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 521
    const-string/jumbo v1, ""

    const-string/jumbo v2, "0"

    const/4 v4, 0x1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 525
    :goto_1
    const-string/jumbo v0, "tlog_monitor_module"

    const-string/jumbo v1, "tlog_command_execute"

    const-string/jumbo v2, "commandID : 65526"

    invoke-static {v0, v1, v2}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void

    .line 523
    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, "2"

    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private parseStartRecording(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 28
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "TestCostTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StartRecording Command is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 283
    .local v7, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_7

    .line 284
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 285
    .local v22, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 286
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tlog_destroy"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 287
    .local v23, "tlogDestroy":Z
    const-string/jumbo v2, "tlog_switch"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 288
    .local v27, "tlogSwitch":Z
    const-string/jumbo v2, "tlog_level"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 289
    .local v25, "tlogLevel":Ljava/lang/String;
    const-string/jumbo v2, "tlog_module"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 290
    .local v26, "tlogModule":Ljava/lang/String;
    const-string/jumbo v2, "tlog_endtime"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 291
    .local v24, "tlogEndTime":Ljava/lang/Integer;
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v14

    .line 292
    .local v14, "controller":Lc8/tHf;
    if-nez v14, :cond_0

    .line 350
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "controller":Lc8/tHf;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v23    # "tlogDestroy":Z
    .end local v24    # "tlogEndTime":Ljava/lang/Integer;
    .end local v25    # "tlogLevel":Ljava/lang/String;
    .end local v26    # "tlogModule":Ljava/lang/String;
    .end local v27    # "tlogSwitch":Z
    :goto_0
    return-void

    .line 295
    .restart local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "controller":Lc8/tHf;
    .restart local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v22    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v23    # "tlogDestroy":Z
    .restart local v24    # "tlogEndTime":Ljava/lang/Integer;
    .restart local v25    # "tlogLevel":Ljava/lang/String;
    .restart local v26    # "tlogModule":Ljava/lang/String;
    .restart local v27    # "tlogSwitch":Z
    :cond_0
    if-eqz v23, :cond_1

    .line 296
    invoke-static {}, Lc8/EHf;->delete()V

    .line 297
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Lc8/tHf;->destroyLog(Z)V

    .line 298
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lc8/tHf;->openLog(Z)V

    .line 299
    const-string/jumbo v2, "tlog_switch"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    const/4 v2, 0x4

    const-string/jumbo v3, ""

    const-string/jumbo v4, "0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto :goto_0

    .line 304
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lc8/tHf;->destroyLog(Z)V

    .line 305
    move/from16 v0, v27

    invoke-interface {v14, v0}, Lc8/tHf;->openLog(Z)V

    .line 306
    const-string/jumbo v2, "tlog_switch"

    move/from16 v0, v27

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lc8/tHf;->setLogLevel(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "tlog_level"

    move-object/from16 v0, v25

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :goto_1
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 315
    invoke-static/range {v26 .. v26}, Lc8/IHf;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    .line 316
    .local v20, "module":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lc8/tHf;->setModuleFilter(Ljava/util/Map;)V

    .line 317
    const-string/jumbo v2, "tlog_module"

    move-object/from16 v0, v26

    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    .end local v20    # "module":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    :goto_2
    if-eqz v24, :cond_6

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v16, v2, v4

    .line 324
    .local v16, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long v18, v2, v4

    .line 325
    .local v18, "limitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-lez v2, :cond_4

    cmp-long v2, v16, v18

    if-gez v2, :cond_4

    .line 326
    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1}, Lc8/tHf;->setEndTime(J)V

    .line 327
    const-string/jumbo v2, "tlog_endtime"

    move-wide/from16 v0, v16

    invoke-interface {v15, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 340
    .end local v18    # "limitTime":J
    :goto_3
    const-string/jumbo v2, "tlog_version"

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/IHf;->getAppBuildVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    new-instance v21, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 344
    .local v21, "retData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "tlog_module"

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Lc8/tHf;->getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const/4 v2, 0x4

    const-string/jumbo v3, ""

    const-string/jumbo v4, "0"

    const/4 v6, 0x1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 346
    const-string/jumbo v2, "tlog_monitor_module"

    const-string/jumbo v3, "tlog_command_execute"

    const-string/jumbo v4, "commandID : 3"

    invoke-static {v2, v3, v4}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .end local v16    # "endTime":J
    .end local v21    # "retData":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v2, "tlog_level"

    const-string/jumbo v3, "ERROR"

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 319
    :cond_3
    const-string/jumbo v2, "tlog_module"

    const-string/jumbo v3, ""

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 328
    .restart local v16    # "endTime":J
    .restart local v18    # "limitTime":J
    :cond_4
    cmp-long v2, v16, v18

    if-ltz v2, :cond_5

    .line 329
    move-wide/from16 v0, v18

    invoke-interface {v14, v0, v1}, Lc8/tHf;->setEndTime(J)V

    .line 330
    const-string/jumbo v2, "tlog_endtime"

    move-wide/from16 v0, v18

    invoke-interface {v15, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 332
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v14, v2, v3}, Lc8/tHf;->setEndTime(J)V

    .line 333
    const-string/jumbo v2, "tlog_endtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v15, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 336
    .end local v16    # "endTime":J
    .end local v18    # "limitTime":J
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long v16, v2, v4

    .line 337
    .restart local v16    # "endTime":J
    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1}, Lc8/tHf;->setEndTime(J)V

    .line 338
    const-string/jumbo v2, "tlog_endtime"

    move-wide/from16 v0, v16

    invoke-interface {v15, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 348
    .end local v14    # "controller":Lc8/tHf;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "endTime":J
    .end local v22    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v23    # "tlogDestroy":Z
    .end local v24    # "tlogEndTime":Ljava/lang/Integer;
    .end local v25    # "tlogLevel":Ljava/lang/String;
    .end local v26    # "tlogModule":Ljava/lang/String;
    .end local v27    # "tlogSwitch":Z
    :cond_7
    const/4 v8, 0x4

    const-string/jumbo v9, "the param is null!"

    const-string/jumbo v10, "2"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v8 .. v13}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto/16 :goto_0
.end method

.method private parseTraceIDCmd(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 13
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/16 v9, 0xa

    .line 398
    if-eqz p1, :cond_0

    .line 399
    :try_start_0
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 400
    .local v7, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "prefix"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "prefix":Ljava/lang/String;
    const-string/jumbo v0, "timestamp"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 402
    .local v10, "timestamp":J
    const-string/jumbo v0, "traceModules"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    invoke-static {}, Lc8/tIf;->getInstance()Lc8/tIf;

    move-result-object v6

    .line 404
    .local v6, "creater":Lc8/tIf;
    invoke-virtual {v6, v8, v10, v11}, Lc8/tIf;->setBaseData(Ljava/lang/String;J)Lc8/tIf;

    .line 407
    const/16 v0, 0xa

    const-string/jumbo v1, ""

    const-string/jumbo v2, "0"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 408
    const-string/jumbo v0, "tlog_monitor_module"

    const-string/jumbo v1, "tlog_command_execute"

    const-string/jumbo v2, "commandID : 9"

    invoke-static {v0, v1, v2}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v6    # "creater":Lc8/tIf;
    .end local v7    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "timestamp":J
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 414
    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "2"

    const/4 v4, 0x0

    move v0, v9

    move-object v3, p2

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto :goto_0
.end method

.method private static parseUploadFile(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    .locals 22
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string/jumbo v3, "data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v17

    .line 212
    .local v17, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v17, :cond_0

    .line 215
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v21

    .line 216
    .local v21, "uploaderManager":Lc8/SHf;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/SHf;->setReportParams(Ljava/util/Map;)V

    .line 217
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_b

    .line 218
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 219
    .local v9, "child":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "fileName"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 220
    .local v19, "parentFileName":Ljava/lang/String;
    const-string/jumbo v3, "numberOfDay"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 221
    .local v18, "numberOfDay":I
    const/16 v16, 0x0

    .line 222
    .local v16, "isForceUpload":Z
    const-string/jumbo v3, "network"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const-string/jumbo v3, "network"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 225
    :cond_2
    const/4 v11, 0x0

    .line 226
    .local v11, "filePath":Ljava/lang/String;
    const-string/jumbo v3, "filePath"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    const-string/jumbo v3, "filePath"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 230
    :cond_3
    const-string/jumbo v3, "day"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "day":Ljava/lang/String;
    const/16 v20, 0x0

    .line 232
    .local v20, "times":[Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 233
    const-string/jumbo v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 236
    :cond_4
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-gtz v18, :cond_a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 237
    :cond_5
    const/4 v3, 0x2

    const-string/jumbo v4, "the params are wrong!"

    const-string/jumbo v5, "2"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 242
    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lc8/IHf;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 243
    .local v12, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 244
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    .line 246
    :cond_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lc8/IHf;->getTnetFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 247
    .local v13, "files2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 248
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    .line 252
    :cond_7
    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lc8/IHf;->getAssistFilePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 253
    .local v14, "files4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 254
    invoke-static {}, Lc8/iIf;->getInstance()Lc8/iIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/iIf;->flushBuffer()Z

    .line 255
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    .line 258
    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lc8/SHf;->addFile(Ljava/lang/String;)V

    .line 262
    :cond_9
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/SHf;->isForceUpload(Z)V

    .line 217
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 239
    .end local v12    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "files2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "files4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    const/4 v3, 0x2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "0"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    goto :goto_2

    .line 264
    .end local v9    # "child":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "day":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v16    # "isForceUpload":Z
    .end local v18    # "numberOfDay":I
    .end local v19    # "parentFileName":Ljava/lang/String;
    .end local v20    # "times":[Ljava/lang/String;
    :cond_b
    const-string/jumbo v3, "TLog.TLogCommandPareser"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "There is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v21 .. v21}, Lc8/SHf;->getUploadTaskCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " files match condition to upload!"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/wHf;->logi(Ljava/lang/String;[Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {v21 .. v21}, Lc8/SHf;->getUploadTaskCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 266
    const/4 v3, 0x2

    const-string/jumbo v4, "there are not files matching the condition"

    const-string/jumbo v5, "3"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 267
    const-string/jumbo v3, "TLog.TLogCommandPareser"

    const-string/jumbo v4, "There is not log files to upload"

    invoke-static {v3, v4}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_c
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 271
    .local v8, "resData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lc8/SHf;->getUploadTaskCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " files to upload!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const v3, 0xfffe

    const-string/jumbo v4, ""

    const-string/jumbo v5, "0"

    const/4 v7, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 274
    invoke-virtual/range {v21 .. v21}, Lc8/SHf;->startUpload()V

    .line 275
    const-string/jumbo v3, "tlog_monitor_module"

    const-string/jumbo v4, "tlog_command_execute"

    const-string/jumbo v5, "commandID : 1"

    invoke-static {v3, v4, v5}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
