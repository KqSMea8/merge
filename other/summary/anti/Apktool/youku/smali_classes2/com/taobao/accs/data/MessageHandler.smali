.class public Lcom/taobao/accs/data/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static final MESSAGE_ID_CACHE_SIZE:I = 0x32


# instance fields
.field private TAG:Ljava/lang/String;

.field private handledMessageId:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAccsDeviceToken:Ljava/lang/String;

.field public mAntiBrush:Lcom/taobao/accs/antibrush/AntiBrush;

.field public mConnectType:I

.field private mConnection:Lcom/taobao/accs/net/BaseConnection;

.field private mContext:Landroid/content/Context;

.field public mFlowControl:Lcom/taobao/accs/flowcontrol/FlowControl;

.field private mLastSendMessage:Lcom/taobao/accs/data/Message;

.field private mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

.field private mRestoreTrafficsRunnable:Ljava/lang/Runnable;

.field protected mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public reqTasks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private unHandleMessage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private unRevPing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/net/BaseConnection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Lcom/taobao/accs/net/BaseConnection;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->reqTasks:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/data/MessageHandler;->unRevPing:Z

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mAccsDeviceToken:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "MsgRecv_"

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$1;-><init>(Lcom/taobao/accs/data/MessageHandler;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    .line 932
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$3;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$3;-><init>(Lcom/taobao/accs/data/MessageHandler;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mRestoreTrafficsRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    .line 100
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mTrafficMonitor:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 101
    new-instance v0, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mFlowControl:Lcom/taobao/accs/flowcontrol/FlowControl;

    .line 102
    new-instance v0, Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/antibrush/AntiBrush;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mAntiBrush:Lcom/taobao/accs/antibrush/AntiBrush;

    .line 103
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/taobao/accs/data/MessageHandler;->restoreMessageId()V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/accs/data/MessageHandler;->restoreTraffics()V

    .line 107
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private buildBaseReceiveIntent(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;
    .locals 3
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string/jumbo v1, "command"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 817
    const-string/jumbo v1, "serviceId"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const-string/jumbo v1, "userInfo"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 820
    const-string/jumbo v1, "dataId"

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    :cond_0
    return-object v0
.end method

.method private handleControlMessage(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    .locals 20
    .param p1, "reqMessage"    # Lcom/taobao/accs/data/Message;
    .param p2, "oriData"    # [B
    .param p3, "data"    # [B
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v7, -0x8

    .line 415
    .local v7, "code":I
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    .local v18, "msgJson":Lorg/json/JSONObject;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse Json:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_0
    const-string/jumbo v2, "code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 420
    .end local v7    # "code":I
    .local v15, "code":I
    const/16 v2, 0xc8

    if-ne v15, v2, :cond_4

    .line 421
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    move v7, v15

    .line 467
    .end local v15    # "code":I
    .end local v18    # "msgJson":Lorg/json/JSONObject;
    .restart local v7    # "code":I
    :goto_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 468
    new-instance v8, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v10

    move-object/from16 v0, p3

    array-length v2, v0

    int-to-long v12, v2

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    .line 470
    return-void

    .line 423
    .end local v7    # "code":I
    .restart local v15    # "code":I
    .restart local v18    # "msgJson":Lorg/json/JSONObject;
    :pswitch_0
    :try_start_2
    const-string/jumbo v2, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 426
    .local v17, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "accsToken"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mAccsDeviceToken:Ljava/lang/String;

    .line 428
    const-string/jumbo v2, "ACCS_SDK"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V

    .line 431
    if-eqz v17, :cond_1

    .line 432
    const-string/jumbo v2, "packageNames"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 433
    .local v14, "bindedPacks":Lorg/json/JSONArray;
    if-eqz v14, :cond_3

    .line 434
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 435
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/accs/client/ClientManager;->onAppBind(Ljava/lang/String;)V

    .line 434
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 439
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unbind app"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v8, "pkg"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 463
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v14    # "bindedPacks":Lorg/json/JSONArray;
    .end local v16    # "i":I
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v19

    move v7, v15

    .line 464
    .end local v15    # "code":I
    .end local v18    # "msgJson":Lorg/json/JSONObject;
    .restart local v7    # "code":I
    .local v19, "t":Ljava/lang/Throwable;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleControlMessage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 465
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v5, "handleControlMessage"

    const-string/jumbo v6, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v6, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 447
    .end local v7    # "code":I
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v15    # "code":I
    .restart local v18    # "msgJson":Lorg/json/JSONObject;
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/accs/client/ClientManager;->onAppUnbind(Ljava/lang/String;)V

    :cond_3
    :goto_5
    move v7, v15

    .line 466
    .end local v15    # "code":I
    .restart local v7    # "code":I
    goto/16 :goto_1

    .line 450
    .end local v7    # "code":I
    .restart local v15    # "code":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/taobao/accs/client/ClientManager;->onUserBind(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 453
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/taobao/accs/client/ClientManager;->onUserUnBind(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/16 v2, 0x12c

    if-ne v15, v2, :cond_3

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/accs/client/ClientManager;->onAppUnbind(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 463
    .end local v15    # "code":I
    .end local v18    # "msgJson":Lorg/json/JSONObject;
    .restart local v7    # "code":I
    :catch_1
    move-exception v19

    goto/16 :goto_4

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleMessage(I[BLjava/lang/String;I)V
    .locals 40
    .param p1, "compress"    # I
    .param p2, "data"    # [B
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "proVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v32, Lcom/taobao/accs/utl/MessageStreamReader;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/taobao/accs/utl/MessageStreamReader;-><init>([B)V

    .line 163
    .local v32, "reader":Lcom/taobao/accs/utl/MessageStreamReader;
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 164
    .local v24, "flags":J
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "flag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v24

    long-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_0
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/taobao/accs/utl/MessageStreamReader;->readString(I)Ljava/lang/String;

    move-result-object v36

    .line 169
    .local v36, "target":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "target:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/taobao/accs/utl/MessageStreamReader;->readString(I)Ljava/lang/String;

    move-result-object v35

    .line 174
    .local v35, "source":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "source:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_2
    :try_start_0
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/taobao/accs/utl/MessageStreamReader;->readString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 187
    .local v21, "dataId":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dataId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 193
    .local v38, "uniqueId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 194
    .local v8, "oriData":[B
    const/4 v9, 0x0

    .line 195
    .local v9, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 196
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/taobao/accs/data/MessageHandler;->parseExtHeader(Lcom/taobao/accs/utl/MessageStreamReader;)Ljava/util/Map;

    move-result-object v9

    .line 200
    :cond_4
    if-nez p1, :cond_c

    .line 201
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->readAll()[B

    move-result-object v8

    .line 233
    :cond_5
    :goto_0
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->close()V

    .line 235
    if-nez v8, :cond_12

    .line 236
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "oriData is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_6
    :goto_1
    const/16 v4, 0xf

    shr-long v10, v24, v4

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v4, v10

    invoke-static {v4}, Lcom/taobao/accs/data/Message$MsgType;->valueOf(I)I

    move-result v29

    .line 246
    .local v29, "msgType":I
    const/16 v4, 0xd

    shr-long v10, v24, v4

    const-wide/16 v12, 0x3

    and-long/2addr v10, v12

    long-to-int v4, v10

    invoke-static {v4}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v7

    .line 248
    .local v7, "reqType":Lcom/taobao/accs/data/Message$ReqType;
    const/16 v4, 0xc

    shr-long v10, v24, v4

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v0, v10

    move/from16 v23, v0

    .line 250
    .local v23, "error":I
    const/16 v4, 0xb

    shr-long v10, v24, v4

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v4, v10

    invoke-static {v4}, Lcom/taobao/accs/data/Message$MsgResType;->valueOf(I)I

    move-result v33

    .line 252
    .local v33, "resType":I
    const/4 v4, 0x6

    shr-long v10, v24, v4

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v4, v10

    const/4 v10, 0x1

    if-ne v4, v10, :cond_13

    const/16 v30, 0x1

    .line 254
    .local v30, "needBusinessAck":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " dataId"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v21, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "type"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "reqType"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-virtual {v7}, Lcom/taobao/accs/data/Message$ReqType;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "resType"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    invoke-static/range {v33 .. v33}, Lcom/taobao/accs/data/Message$MsgResType;->name(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "target"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    aput-object v36, v11, v12

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_a

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v7, v4, :cond_7

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_a

    .line 261
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 262
    .local v5, "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_15

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "reqMessage not null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 264
    const/16 v6, 0xc8

    .line 265
    .local v6, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    .line 267
    :try_start_2
    new-instance v28, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v28, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "code"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v6

    .line 274
    .end local v28    # "jObject":Lorg/json/JSONObject;
    :cond_8
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 275
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onRecAck()V

    .line 278
    :cond_9
    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_14

    move-object/from16 v4, p0

    .line 279
    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 283
    :goto_4
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    iget-object v11, v5, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    .line 289
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .end local v6    # "errorCode":I
    :cond_a
    :goto_5
    if-nez v29, :cond_17

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_17

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 291
    .restart local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_16

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v8, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->handleControlMessage(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 409
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .end local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .end local v8    # "oriData":[B
    .end local v9    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "dataId":Ljava/lang/String;
    .end local v23    # "error":I
    .end local v29    # "msgType":I
    .end local v30    # "needBusinessAck":Z
    .end local v33    # "resType":I
    .end local v38    # "uniqueId":Ljava/lang/String;
    :cond_b
    :goto_6
    return-void

    .line 181
    :catch_0
    move-exception v22

    .line 182
    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dataId read error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual/range {v32 .. v32}, Lcom/taobao/accs/utl/MessageStreamReader;->close()V

    .line 184
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "data id read error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 202
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v8    # "oriData":[B
    .restart local v9    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v21    # "dataId":Ljava/lang/String;
    .restart local v38    # "uniqueId":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 203
    new-instance v26, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 204
    .local v26, "inputStream":Ljava/util/zip/GZIPInputStream;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    .local v19, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    :try_start_4
    new-array v0, v4, [B

    move-object/from16 v20, v0

    .line 210
    .local v20, "buf":[B
    :goto_7
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v31

    .local v31, "r":I
    if-lez v31, :cond_e

    .line 211
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 216
    .end local v20    # "buf":[B
    .end local v31    # "r":I
    :catch_1
    move-exception v22

    .line 217
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uncompress data error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " uncompress data error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    if-eqz v26, :cond_d

    .line 222
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_d
    if-eqz v19, :cond_5

    .line 226
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 230
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 214
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v20    # "buf":[B
    .restart local v31    # "r":I
    :cond_e
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 221
    if-eqz v26, :cond_f

    .line 222
    :try_start_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_f
    if-eqz v19, :cond_5

    .line 226
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 230
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 220
    .end local v20    # "buf":[B
    .end local v31    # "r":I
    :catchall_0
    move-exception v4

    .line 221
    if-eqz v26, :cond_10

    .line 222
    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 225
    :cond_10
    if-eqz v19, :cond_11

    .line 226
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 229
    :cond_11
    :goto_8
    throw v4

    .line 238
    .end local v19    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "inputStream":Ljava/util/zip/GZIPInputStream;
    :cond_12
    :try_start_a
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oriData:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 404
    :catch_4
    move-exception v22

    .line 405
    .restart local v22    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "1"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 252
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .restart local v23    # "error":I
    .restart local v29    # "msgType":I
    .restart local v33    # "resType":I
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 270
    .restart local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .restart local v6    # "errorCode":I
    .restart local v30    # "needBusinessAck":Z
    :catch_5
    move-exception v4

    const/4 v6, -0x3

    goto/16 :goto_3

    .line 281
    :cond_14
    :try_start_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v9}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;ILjava/util/Map;)V

    goto/16 :goto_4

    .line 285
    .end local v6    # "errorCode":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " data ack/res reqMessage is null,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 295
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " contorl ACK reqMessage is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Message not handled, body:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    :cond_17
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_b

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_b

    .line 304
    if-eqz v36, :cond_b

    .line 307
    const-string/jumbo v4, "\\|"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 308
    .local v37, "targets":[Ljava/lang/String;
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x2

    if-lt v4, v10, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onPush"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    if-eqz v4, :cond_18

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    invoke-virtual {v4}, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->commitUT()V

    .line 315
    :cond_18
    new-instance v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    invoke-direct {v4}, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->receiveDate:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    aget-object v10, v37, v10

    invoke-static {v4, v10}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 319
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_19

    const/4 v4, 0x2

    aget-object v34, v37, v4

    .line 320
    .local v34, "serviceId":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-object/from16 v0, v34

    iput-object v0, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->serviceId:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/accs/data/MessageHandler;->isDuplicateMessage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " msg duplicate"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->repeat:Z

    .line 380
    :goto_a
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_b

    .line 381
    const-string/jumbo v4, "accs"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " try to send ack dataId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v14, 0x0

    move-wide/from16 v0, v24

    long-to-int v4, v0

    int-to-short v15, v4

    move-object/from16 v11, v36

    move-object/from16 v12, v35

    move-object/from16 v13, v21

    move-object/from16 v16, p3

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/taobao/accs/data/Message;->buildPushAck(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v18

    .line 388
    .local v18, "ack":Lcom/taobao/accs/data/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v10}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    .line 389
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v1}, Lcom/taobao/accs/data/MessageHandler;->utStatSendAck(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz v30, :cond_b

    .line 391
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "ack"

    const-string/jumbo v11, ""

    const-wide/16 v12, 0x0

    invoke-static {v4, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_6

    .line 319
    .end local v18    # "ack":Lcom/taobao/accs/data/Message;
    .end local v34    # "serviceId":Ljava/lang/String;
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 325
    .restart local v34    # "serviceId":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/accs/data/MessageHandler;->recordMessageId(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v4, "accs"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " try deliver msg to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v37, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "dataId"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v21, v11, v12

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_c
    new-instance v27, Landroid/content/Intent;

    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v27, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    aget-object v4, v37, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string/jumbo v4, "command"

    const/16 v10, 0x65

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_1b

    .line 337
    const-string/jumbo v4, "serviceId"

    const/4 v10, 0x2

    aget-object v10, v37, v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_1b
    const-string/jumbo v39, ""

    .line 340
    .local v39, "userId":Ljava/lang/String;
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x4

    if-lt v4, v10, :cond_1c

    .line 341
    const/4 v4, 0x3

    aget-object v39, v37, v4

    .line 342
    const-string/jumbo v4, "userInfo"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :cond_1c
    const-string/jumbo v4, "data"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    const-string/jumbo v4, "dataId"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string/jumbo v4, "host"

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v4, "conn_type"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string/jumbo v4, "bizAck"

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string/jumbo v4, "appKey"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v10}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v4, "configTag"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v10, v10, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v9, v1}, Lcom/taobao/accs/data/MessageHandler;->putExtHeaderToIntent(Ljava/util/Map;Landroid/content/Intent;)V

    .line 363
    if-eqz v30, :cond_1d

    .line 364
    move-wide/from16 v0, v24

    long-to-int v4, v0

    int-to-short v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/accs/data/MessageHandler;->putBusinessAckInfoToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V

    .line 367
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 371
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v10

    const v11, 0x101d1

    const-string/jumbo v12, "MsgToBussPush"

    const-string/jumbo v13, "commandId=101"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "serviceId="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, " dataId="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "to_buss"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "1commandId=101serviceId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v4, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->dataId:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-object/from16 v0, v39

    iput-object v0, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->userId:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v8, :cond_1f

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->dataLen:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->deviceId:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->toBzDate:Ljava/lang/String;

    .line 378
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object/from16 v11, v34

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    goto/16 :goto_a

    .line 330
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v39    # "userId":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " try deliver msg to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v37, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 375
    .restart local v27    # "intent":Landroid/content/Intent;
    .restart local v39    # "userId":Ljava/lang/String;
    :cond_1f
    array-length v4, v8

    goto :goto_d

    .line 384
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v39    # "userId":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " try to send ack dataId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 395
    .end local v34    # "serviceId":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v37, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not exist, unbind it"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    aget-object v12, v37, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_6

    .end local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .end local v23    # "error":I
    .end local v29    # "msgType":I
    .end local v30    # "needBusinessAck":Z
    .end local v33    # "resType":I
    .end local v37    # "targets":[Ljava/lang/String;
    .restart local v19    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "inputStream":Ljava/util/zip/GZIPInputStream;
    :catch_6
    move-exception v10

    goto/16 :goto_8
.end method

.method private isDuplicateMessage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNetWorkError(I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 650
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x9

    if-eq p1, v0, :cond_0

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 654
    :cond_0
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseExtHeader(Lcom/taobao/accs/utl/MessageStreamReader;)Ljava/util/Map;
    .locals 14
    .param p1, "reader"    # Lcom/taobao/accs/utl/MessageStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/utl/MessageStreamReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 503
    :goto_0
    return-object v1

    .line 475
    :cond_0
    const/4 v1, 0x0

    .line 477
    .local v1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v3

    .line 478
    .local v3, "extHeaderLen":I
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 479
    iget-object v9, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "extHeaderLen:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    const/4 v6, 0x0

    .local v6, "readLen":I
    move-object v2, v1

    .line 483
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_1
    if-ge v6, v3, :cond_3

    .line 484
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v5

    .line 485
    .local v5, "key":I
    add-int/lit8 v6, v6, 0x2

    .line 486
    const v9, 0xfc00

    and-int/2addr v9, v5

    shr-int/lit8 v4, v9, 0xa

    .line 487
    .local v4, "extHeaderType":I
    and-int/lit16 v8, v5, 0x3ff

    .line 488
    .local v8, "valueLen":I
    invoke-virtual {p1, v8}, Lcom/taobao/accs/utl/MessageStreamReader;->readString(I)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, "value":Ljava/lang/String;
    add-int/2addr v6, v8

    .line 490
    if-nez v2, :cond_4

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 497
    iget-object v9, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, ""

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "extHeaderType"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "value"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v7, v11, v12

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v1

    .line 499
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_1

    .end local v4    # "extHeaderType":I
    .end local v5    # "key":I
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "valueLen":I
    :cond_3
    move-object v1, v2

    .line 502
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 500
    .end local v3    # "extHeaderLen":I
    .end local v6    # "readLen":I
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v9, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "parseExtHeader"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v0, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "extHeaderLen":I
    .restart local v6    # "readLen":I
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_3

    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "extHeaderType":I
    .restart local v5    # "key":I
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v8    # "valueLen":I
    :cond_4
    move-object v1, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private putBusinessAckInfoToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "flags"    # S

    .prologue
    .line 835
    if-eqz p1, :cond_2

    .line 836
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    const-string/jumbo v0, "target"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    :cond_1
    const-string/jumbo v0, "flags"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 845
    :cond_2
    return-void
.end method

.method private putExtHeaderToIntent(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 1
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 830
    const-string/jumbo v0, "ext_header"

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 832
    :cond_0
    return-void
.end method

.method private recordMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 775
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-direct {p0}, Lcom/taobao/accs/data/MessageHandler;->saveMessageId()V

    goto :goto_0
.end method

.method private restoreMessageId()V
    .locals 7

    .prologue
    .line 784
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "accs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v6}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 785
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 786
    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "message file not exist"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 789
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 791
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 792
    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 795
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private saveMessageId()V
    .locals 8

    .prologue
    .line 802
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "accs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v7}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 803
    .local v3, "writer":Ljava/io/FileWriter;
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 804
    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->handledMessageId:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    .local v2, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 811
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 807
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private utStat(Lcom/taobao/accs/data/Message;I)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 891
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v5, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "time":Ljava/lang/String;
    const/4 v3, 0x1

    .line 867
    .local v3, "ret":Z
    const/16 v5, 0xc8

    if-eq p2, v5, :cond_1

    .line 868
    const/4 v3, 0x0

    .line 870
    :cond_1
    iget-object v5, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 872
    :pswitch_1
    new-instance v0, Lcom/taobao/accs/ut/statistics/BindAppStatistic;

    invoke-direct {v0}, Lcom/taobao/accs/ut/statistics/BindAppStatistic;-><init>()V

    .line 873
    .local v0, "bindAppStatInfo":Lcom/taobao/accs/ut/statistics/BindAppStatistic;
    iput-object v2, v0, Lcom/taobao/accs/ut/statistics/BindAppStatistic;->deviceId:Ljava/lang/String;

    .line 874
    iput-object v4, v0, Lcom/taobao/accs/ut/statistics/BindAppStatistic;->time:Ljava/lang/String;

    .line 875
    iput-boolean v3, v0, Lcom/taobao/accs/ut/statistics/BindAppStatistic;->ret:Z

    .line 876
    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/statistics/BindAppStatistic;->setFailReason(I)V

    .line 877
    invoke-virtual {v0}, Lcom/taobao/accs/ut/statistics/BindAppStatistic;->commitUT()V

    goto :goto_0

    .line 880
    .end local v0    # "bindAppStatInfo":Lcom/taobao/accs/ut/statistics/BindAppStatistic;
    :pswitch_2
    new-instance v1, Lcom/taobao/accs/ut/statistics/BindUserStatistic;

    invoke-direct {v1}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;-><init>()V

    .line 881
    .local v1, "bindUserStatInfo":Lcom/taobao/accs/ut/statistics/BindUserStatistic;
    iput-object v2, v1, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->deviceId:Ljava/lang/String;

    .line 882
    iput-object v4, v1, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->time:Ljava/lang/String;

    .line 883
    iput-boolean v3, v1, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->ret:Z

    .line 884
    iget-object v5, p1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    iput-object v5, v1, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->userId:Ljava/lang/String;

    .line 885
    invoke-virtual {v1, p2}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(I)V

    .line 886
    invoke-virtual {v1}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->commitUT()V

    goto :goto_0

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private utStatSendAck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 899
    new-instance v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;

    invoke-direct {v0}, Lcom/taobao/accs/ut/statistics/SendAckStatistic;-><init>()V

    .line 900
    .local v0, "stat":Lcom/taobao/accs/ut/statistics/SendAckStatistic;
    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->deviceId:Ljava/lang/String;

    .line 901
    iput-object p1, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->dataId:Ljava/lang/String;

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->sendTime:Ljava/lang/String;

    .line 903
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->failReason:Ljava/lang/String;

    .line 904
    iput-object p2, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->serviceId:Ljava/lang/String;

    .line 905
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->sessionId:Ljava/lang/String;

    .line 906
    invoke-virtual {v0}, Lcom/taobao/accs/ut/statistics/SendAckStatistic;->commitUT()V

    .line 907
    return-void
.end method


# virtual methods
.method public addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .prologue
    .line 919
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/data/MessageHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/taobao/accs/data/MessageHandler$2;-><init>(Lcom/taobao/accs/data/MessageHandler;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addTrafficsInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelControlMessage(Lcom/taobao/accs/data/Message;)V
    .locals 10
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 705
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 707
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    .line 709
    .local v2, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 736
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cancelControlMessage"

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "command"

    aput-object v7, v5, v6

    iget-object v6, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 715
    :pswitch_0
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v8, :cond_2

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 717
    :cond_2
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 722
    :pswitch_1
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 724
    :cond_3
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 729
    :pswitch_2
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 731
    :cond_4
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 741
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "msg":Lcom/taobao/accs/data/Message;
    :cond_5
    return-void

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getReceiveMsgStat()Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    return-object v0
.end method

.method public getUnhandledCount()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getUnhandledMessage(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 1
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    return-object v0
.end method

.method public getUnhandledMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUnrcvPing()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/taobao/accs/data/MessageHandler;->unRevPing:Z

    return v0
.end method

.method public onMessage([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/data/MessageHandler;->onMessage([BLjava/lang/String;)V

    .line 111
    return-void
.end method

.method public onMessage([BLjava/lang/String;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v7, Lcom/taobao/accs/utl/MessageStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/taobao/accs/utl/MessageStreamReader;-><init>([B)V

    .line 117
    .local v7, "reader":Lcom/taobao/accs/utl/MessageStreamReader;
    :try_start_0
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v5

    .line 118
    .local v5, "head":I
    and-int/lit16 v11, v5, 0xf0

    shr-int/lit8 v10, v11, 0x4

    .line 119
    .local v10, "version":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "version:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    and-int/lit8 v3, v5, 0xf

    .line 124
    .local v3, "compress":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "compress:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_1
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    .line 129
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v9

    .line 130
    .local v9, "totalLen":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "totalLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_2
    const/4 v6, 0x0

    .line 135
    .local v6, "nowLen":I
    :goto_0
    if-ge v6, v9, :cond_5

    .line 136
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v4

    .line 137
    .local v4, "dataLen":I
    add-int/lit8 v6, v6, 0x2

    .line 138
    if-lez v4, :cond_4

    .line 139
    new-array v2, v4, [B

    .line 140
    .local v2, "buf":[B
    invoke-virtual {v7, v2}, Lcom/taobao/accs/utl/MessageStreamReader;->read([B)I

    .line 141
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "buf len:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_3
    array-length v11, v2

    add-int/2addr v6, v11

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v2, v1, v10}, Lcom/taobao/accs/data/MessageHandler;->handleMessage(I[BLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    .end local v2    # "buf":[B
    .end local v3    # "compress":I
    .end local v4    # "dataLen":I
    .end local v5    # "head":I
    .end local v6    # "nowLen":I
    .end local v9    # "totalLen":I
    .end local v10    # "version":I
    :catch_0
    move-exception v8

    .line 152
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v11, "accs"

    const-string/jumbo v12, "send_fail"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "1"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v12, v13, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v8, v13}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->close()V

    .line 156
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 148
    .restart local v3    # "compress":I
    .restart local v4    # "dataLen":I
    .restart local v5    # "head":I
    .restart local v6    # "nowLen":I
    .restart local v9    # "totalLen":I
    .restart local v10    # "version":I
    :cond_4
    :try_start_2
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "data format error"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v3    # "compress":I
    .end local v4    # "dataLen":I
    .end local v5    # "head":I
    .end local v6    # "nowLen":I
    .end local v9    # "totalLen":I
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->close()V

    throw v11

    .restart local v3    # "compress":I
    .restart local v5    # "head":I
    .restart local v6    # "nowLen":I
    .restart local v9    # "totalLen":I
    .restart local v10    # "version":I
    :cond_5
    invoke-virtual {v7}, Lcom/taobao/accs/utl/MessageStreamReader;->close()V

    goto :goto_1
.end method

.method public onNetworkFail(I)V
    .locals 9
    .param p1, "errorCode"    # I

    .prologue
    const/4 v8, 0x0

    .line 691
    iput-boolean v8, p0, Lcom/taobao/accs/data/MessageHandler;->unRevPing:Z

    .line 692
    iget-object v6, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 693
    .local v3, "ids":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 694
    iget-object v6, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onNetworkFail"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 696
    .local v2, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 697
    .local v5, "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_0

    .line 698
    invoke-virtual {p0, v5, p1}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 695
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    :cond_1
    return-void
.end method

.method public onRcvPing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRcvPing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    const-class v1, Lcom/taobao/accs/data/MessageHandler;

    monitor-enter v1

    .line 668
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/data/MessageHandler;->unRevPing:Z

    .line 669
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResult(Lcom/taobao/accs/data/Message;I)V
    .locals 6
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 507
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 508
    return-void
.end method

.method public onResult(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .locals 14
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I
    .param p3, "reqType"    # Lcom/taobao/accs/data/Message$ReqType;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p5, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onError, skip ping/ack"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 522
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->reqTasks:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->mAntiBrush:Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Lcom/taobao/accs/antibrush/AntiBrush;->checkAntiBrush(Ljava/net/URL;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 527
    const p2, 0x11186

    .line 528
    const/16 p4, 0x0

    .line 529
    const/16 p5, 0x0

    .line 530
    const/16 p3, 0x0

    .line 533
    :cond_4
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->mFlowControl:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/flowcontrol/FlowControl;->updateFlowCtrlInfo(Ljava/util/Map;Ljava/lang/String;)I

    move-result v13

    .line 534
    .local v13, "type":I
    if-eqz v13, :cond_5

    .line 535
    const/4 v3, 0x2

    if-ne v13, v3, :cond_7

    .line 536
    const p2, 0x11185

    .line 542
    :goto_1
    const/16 p4, 0x0

    .line 543
    const/16 p5, 0x0

    .line 544
    const/16 p3, 0x0

    .line 546
    :cond_5
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 547
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResult command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " erorcode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_6
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_1

    .line 554
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    .line 555
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    const-string/jumbo v4, "accs_election"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/client/GlobalClientInfo;->getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;

    move-result-object v2

    .line 556
    .local v2, "listener":Lcom/taobao/accs/base/AccsAbstractDataListener;
    if-eqz v2, :cond_9

    .line 557
    const-string/jumbo v3, "accs_election"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    const/4 v7, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_0

    .line 537
    .end local v2    # "listener":Lcom/taobao/accs/base/AccsAbstractDataListener;
    :cond_7
    const/4 v3, 0x3

    if-ne v13, v3, :cond_8

    .line 538
    const p2, 0x11187

    goto :goto_1

    .line 540
    :cond_8
    const p2, 0x11184

    goto :goto_1

    .line 559
    .restart local v2    # "listener":Lcom/taobao/accs/base/AccsAbstractDataListener;
    :cond_9
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onResult election listener null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 563
    .end local v2    # "listener":Lcom/taobao/accs/base/AccsAbstractDataListener;
    :cond_a
    iget-boolean v3, p1, Lcom/taobao/accs/data/Message;->isCancel:Z

    if-nez v3, :cond_11

    .line 564
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/taobao/accs/data/MessageHandler;->isNetWorkError(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_d

    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    sget v4, Lcom/taobao/accs/data/Message;->CONTROL_MAX_RETRY_TIMES:I

    if-gt v3, v4, :cond_d

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/taobao/accs/data/Message;->startSendTime:J

    .line 568
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 569
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    .line 615
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v11

    .line 616
    .local v11, "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    if-eqz v11, :cond_c

    .line 617
    invoke-virtual {v11}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 618
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_12

    const/4 v9, 0x0

    .line 619
    .local v9, "host":Ljava/lang/String;
    :goto_3
    const/16 v3, 0xc8

    move/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 620
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 621
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-lez v3, :cond_13

    .line 622
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "succ"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 623
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "succ_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 641
    :goto_4
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 646
    .end local v9    # "host":Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p2}, Lcom/taobao/accs/data/MessageHandler;->utStat(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 571
    .end local v11    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :cond_d
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "prepare send broadcast"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/MessageHandler;->buildBaseReceiveIntent(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;

    move-result-object v10

    .line 573
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "errorCode"

    move/from16 v0, p2

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-short v3, p1, Lcom/taobao/accs/data/Message;->flags:S

    shr-int/lit8 v3, v3, 0xd

    and-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v12

    .line 576
    .local v12, "oriType":Lcom/taobao/accs/data/Message$ReqType;
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v0, p3

    if-eq v0, v3, :cond_e

    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v12, v3, :cond_f

    .line 577
    :cond_e
    const-string/jumbo v3, "send_type"

    const-string/jumbo v4, "res"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    :cond_f
    const/16 v3, 0xc8

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 580
    const-string/jumbo v3, "data"

    move-object/from16 v0, p4

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 582
    :cond_10
    const-string/jumbo v3, "appKey"

    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v3, "configTag"

    iget-object v4, p0, Lcom/taobao/accs/data/MessageHandler;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v10}, Lcom/taobao/accs/data/MessageHandler;->putExtHeaderToIntent(Ljava/util/Map;Landroid/content/Intent;)V

    .line 586
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 590
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 591
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d1

    const-string/jumbo v5, "MsgToBuss0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "commandId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dataId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "to_buss"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1commandId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "serviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_2

    .line 596
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "oriType":Lcom/taobao/accs/data/Message$ReqType;
    :cond_11
    iget-object v3, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message is cancel! command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 618
    .restart local v11    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :cond_12
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 625
    .restart local v9    # "host":Ljava/lang/String;
    :cond_13
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "Request_Success_Rate"

    invoke-static {v3, v4, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 628
    :cond_14
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-lez v3, :cond_16

    .line 629
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail\uff3f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 630
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "fail"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 637
    :cond_15
    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 638
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(I)V

    goto/16 :goto_4

    .line 632
    :cond_16
    const/16 v3, -0xd

    move/from16 v0, p2

    if-eq v0, v3, :cond_15

    .line 633
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "Request_Success_Rate"

    invoke-static/range {p2 .. p2}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/taobao/accs/data/Message;->timeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v9, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onResult(Lcom/taobao/accs/data/Message;ILjava/util/Map;)V
    .locals 6
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 511
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 512
    return-void
.end method

.method public onSend(Lcom/taobao/accs/data/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mLastSendMessage:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mLastSendMessage:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->mLastSendMessage:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 682
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "SEND_REPEAT"

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v0, :cond_2

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSendPing()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSendPing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-class v1, Lcom/taobao/accs/data/MessageHandler;

    monitor-enter v1

    .line 661
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/data/MessageHandler;->unRevPing:Z

    .line 662
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeUnhandledMessage(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "msg":Lcom/taobao/accs/data/Message;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->unHandleMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "msg":Lcom/taobao/accs/data/Message;
    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 761
    .restart local v0    # "msg":Lcom/taobao/accs/data/Message;
    :cond_0
    return-object v0
.end method

.method public restoreTraffics()V
    .locals 4

    .prologue
    .line 911
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/data/MessageHandler;->mRestoreTrafficsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/taobao/accs/data/MessageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restoreTraffics"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setReceiveMsgStat(Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;)V
    .locals 0
    .param p1, "stat"    # Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/taobao/accs/data/MessageHandler;->mReceiveMsgStat:Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    .line 850
    return-void
.end method
