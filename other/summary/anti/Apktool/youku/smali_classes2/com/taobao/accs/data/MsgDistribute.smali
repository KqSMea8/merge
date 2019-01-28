.class public Lcom/taobao/accs/data/MsgDistribute;
.super Ljava/lang/Object;
.source "MsgDistribute.java"


# static fields
.field private static final KEY_ROUTING_ACK:Ljava/lang/String; = "routingAck"

.field private static final KEY_ROUTING_MSG:Ljava/lang/String; = "routingMsg"

.field private static final MIN_SPACE:J = 0x500000L

.field private static final TAG:Ljava/lang/String; = "MsgDistribute"

.field private static volatile instance:Lcom/taobao/accs/data/MsgDistribute;

.field private static mRoutingDataIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/data/MsgDistribute;->instance:Lcom/taobao/accs/data/MsgDistribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/data/MsgDistribute;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/data/MsgDistribute;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/data/MsgDistribute;->distribute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/accs/data/MsgDistribute;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/data/MsgDistribute;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/MsgDistribute;->tryElection(Landroid/content/Context;)V

    return-void
.end method

.method public static distribMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/data/MsgDistribute$1;

    invoke-direct {v2, p0, p1}, Lcom/taobao/accs/data/MsgDistribute$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MsgDistribute"

    const-string/jumbo v2, "distribMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string/jumbo v3, "MsgToBuss8"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "distribMessage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private distribute(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    .line 78
    .local v27, "action":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string/jumbo v3, "MsgDistribute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "action null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d1

    const-string/jumbo v7, "MsgToBuss9"

    const-string/jumbo v9, "action null"

    const/16 v10, 0xdd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v4, v7, v9, v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const/4 v5, 0x0

    .line 89
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 91
    .local v13, "command":I
    :try_start_0
    const-string/jumbo v3, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 92
    const-string/jumbo v3, "command"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 93
    const-string/jumbo v3, "userInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "userId":Ljava/lang/String;
    const-string/jumbo v3, "errorCode"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 95
    .local v18, "errorCode":I
    const-string/jumbo v3, "serviceId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string/jumbo v3, "dataId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "dataId":Ljava/lang/String;
    const-string/jumbo v3, "appKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, "appkey":Ljava/lang/String;
    const-string/jumbo v3, "configTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 100
    .local v28, "configTag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_3
    const-string/jumbo v3, "accs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "distribute"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "command:"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " serviceId:"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    aput-object v5, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, " dataId:"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    aput-object v6, v7, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "appkey"

    aput-object v10, v7, v9

    const/4 v9, 0x7

    aput-object v12, v7, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "config"

    aput-object v10, v7, v9

    const/16 v9, 0x9

    aput-object v28, v7, v9

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/taobao/accs/data/MsgDistribute;->handleRoutingMsgAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    if-gez v13, :cond_5

    .line 117
    const-string/jumbo v3, "MsgDistribute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "command error:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "serviceId"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v5, v7, v9

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v6    # "dataId":Ljava/lang/String;
    .end local v12    # "appkey":Ljava/lang/String;
    .end local v14    # "userId":Ljava/lang/String;
    .end local v18    # "errorCode":I
    .end local v28    # "configTag":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 156
    .local v29, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "distribMessage :"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "serviceId"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v5, v7, v9

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "send_fail"

    const-string/jumbo v7, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "distribute error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v4, v5, v7, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    .end local v29    # "t":Ljava/lang/Throwable;
    .restart local v6    # "dataId":Ljava/lang/String;
    .restart local v12    # "appkey":Ljava/lang/String;
    .restart local v14    # "userId":Ljava/lang/String;
    .restart local v18    # "errorCode":I
    .restart local v28    # "configTag":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "distribute"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "command:"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " serviceId:"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    aput-object v5, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, " dataId:"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    aput-object v6, v7, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "appkey"

    aput-object v10, v7, v9

    const/4 v9, 0x7

    aput-object v12, v7, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "config"

    aput-object v10, v7, v9

    const/16 v9, 0x9

    aput-object v28, v7, v9

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 122
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5, v6}, Lcom/taobao/accs/data/MsgDistribute;->checkSpace(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/taobao/accs/data/MsgDistribute;->handleRoutingMsg(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getAppReceiver()Ljava/util/Map;

    move-result-object v21

    .line 132
    .local v21, "appReceivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;>;"
    const/4 v8, 0x0

    .line 133
    .local v8, "appcallback":Lcom/taobao/accs/IAppReceiver;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 134
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/IAppReceiver;

    move-object v8, v3

    :cond_6
    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 138
    invoke-virtual/range {v3 .. v8}, Lcom/taobao/accs/data/MsgDistribute;->handleMsgInChannelProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/IAppReceiver;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    .line 143
    invoke-direct/range {v9 .. v18}, Lcom/taobao/accs/data/MsgDistribute;->handleControlMsg(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;I)V

    .line 146
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v8

    move-object/from16 v22, p2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v13

    move/from16 v26, v18

    .line 147
    invoke-virtual/range {v19 .. v26}, Lcom/taobao/accs/data/MsgDistribute;->handleBusinessMsg(Landroid/content/Context;Lcom/taobao/accs/IAppReceiver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 134
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v22, p2

    move/from16 v23, v13

    move/from16 v24, v18

    .line 149
    invoke-virtual/range {v19 .. v24}, Lcom/taobao/accs/data/MsgDistribute;->handBroadCastMsg(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 152
    .end local v6    # "dataId":Ljava/lang/String;
    .end local v8    # "appcallback":Lcom/taobao/accs/IAppReceiver;
    .end local v12    # "appkey":Ljava/lang/String;
    .end local v14    # "userId":Ljava/lang/String;
    .end local v18    # "errorCode":I
    .end local v21    # "appReceivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;>;"
    .end local v28    # "configTag":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "MsgDistribute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action error "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "serviceId"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v5, v7, v9

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d1

    const-string/jumbo v7, "MsgToBuss10"

    const/16 v9, 0xdd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v7, v0, v9}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/taobao/accs/data/MsgDistribute;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->instance:Lcom/taobao/accs/data/MsgDistribute;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/taobao/accs/data/MsgDistribute;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->instance:Lcom/taobao/accs/data/MsgDistribute;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/taobao/accs/data/MsgDistribute;

    invoke-direct {v0}, Lcom/taobao/accs/data/MsgDistribute;-><init>()V

    sput-object v0, Lcom/taobao/accs/data/MsgDistribute;->instance:Lcom/taobao/accs/data/MsgDistribute;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->instance:Lcom/taobao/accs/data/MsgDistribute;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleControlMsg(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "command"    # I
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "serviceId"    # Ljava/lang/String;
    .param p7, "dataId"    # Ljava/lang/String;
    .param p8, "appReceiver"    # Lcom/taobao/accs/IAppReceiver;
    .param p9, "errorCode"    # I

    .prologue
    .line 216
    if-eqz p8, :cond_0

    .line 217
    sparse-switch p4, :sswitch_data_0

    .line 268
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p4, v3, :cond_4

    sget-object v3, Lcom/taobao/accs/client/GlobalClientInfo;->mAgooAppReceiver:Lcom/taobao/accs/IAgooAppReceiver;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    sget-object v3, Lcom/taobao/accs/client/GlobalClientInfo;->mAgooAppReceiver:Lcom/taobao/accs/IAgooAppReceiver;

    invoke-virtual {v3}, Lcom/taobao/accs/IAgooAppReceiver;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    sget-object v3, Lcom/taobao/accs/client/GlobalClientInfo;->mAgooAppReceiver:Lcom/taobao/accs/IAgooAppReceiver;

    const/4 v4, 0x0

    move/from16 v0, p9

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/IAgooAppReceiver;->onBindApp(ILjava/lang/String;)V

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 219
    :sswitch_0
    move-object/from16 v0, p8

    instance-of v3, v0, Lcom/taobao/accs/IAppReceiverV1;

    if-eqz v3, :cond_2

    move-object/from16 v3, p8

    .line 220
    check-cast v3, Lcom/taobao/accs/IAppReceiverV1;

    const/4 v4, 0x0

    move/from16 v0, p9

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/IAppReceiverV1;->onBindApp(ILjava/lang/String;)V

    .line 226
    :goto_2
    const/16 v3, 0xc8

    move/from16 v0, p9

    if-ne v0, v3, :cond_0

    .line 227
    :try_start_0
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "start election by bindapp...."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "serviceId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p6, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/MsgDistribute;->tryElection(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v9

    .line 231
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "start election is error"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "serviceId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p6, v5, v6

    invoke-static {v3, v4, v9, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-interface/range {p8 .. p9}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    goto :goto_2

    .line 236
    :sswitch_1
    const/16 v3, 0xc8

    move/from16 v0, p9

    if-ne v0, v3, :cond_3

    .line 237
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->disableService(Landroid/content/Context;)V

    .line 239
    :cond_3
    invoke-interface/range {p8 .. p9}, Lcom/taobao/accs/IAppReceiver;->onUnbindApp(I)V

    goto :goto_0

    .line 242
    :sswitch_2
    move-object/from16 v0, p8

    move-object/from16 v1, p5

    move/from16 v2, p9

    invoke-interface {v0, v1, v2}, Lcom/taobao/accs/IAppReceiver;->onBindUser(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 245
    :sswitch_3
    invoke-interface/range {p8 .. p9}, Lcom/taobao/accs/IAppReceiver;->onUnbindUser(I)V

    goto/16 :goto_0

    .line 248
    :sswitch_4
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "serviceId isEmpty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 252
    .local v10, "msg":[B
    if-eqz v10, :cond_0

    .line 253
    move-object/from16 v0, p8

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-interface {v0, v1, v2, v10}, Lcom/taobao/accs/IAppReceiver;->onData(Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 258
    .end local v10    # "msg":[B
    :sswitch_5
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    move/from16 v2, p9

    invoke-interface {v0, v1, v2}, Lcom/taobao/accs/IAppReceiver;->onSendData(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 277
    :cond_4
    if-nez p8, :cond_1

    const/16 v3, 0x68

    if-eq p4, v3, :cond_1

    const/16 v3, 0x67

    if-eq p4, v3, :cond_1

    .line 280
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "send_fail"

    const-string/jumbo v5, "1"

    const-string/jumbo v6, "appReceiver null return"

    move-object/from16 v0, p6

    invoke-static {v3, v4, v0, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "appReceiver null!"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "serviceId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p6, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d1

    const-string/jumbo v5, "MsgToBuss7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "commandId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " errorCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dataId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleRoutingMsg(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v6, 0x0

    .line 465
    .local v6, "handled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :try_start_0
    const-string/jumbo v0, "MsgDistribute"

    const-string/jumbo v1, "start MsgDistributeService"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "receive pkg"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "target pkg"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "serviceId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p4, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string/jumbo v0, "routingMsg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 472
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    .line 475
    :cond_0
    sget-object v0, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    move-object v2, p3

    .line 477
    .local v2, "routingDataId":Ljava/lang/String;
    new-instance v0, Lcom/taobao/accs/data/MsgDistribute$2;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/data/MsgDistribute$2;-><init>(Lcom/taobao/accs/data/MsgDistribute;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v4, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v2    # "routingDataId":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    .line 500
    :cond_1
    return v6

    .line 491
    :catch_0
    move-exception v7

    .line 492
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "ele_routing_rate"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "exception"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v0, "MsgDistribute"

    const-string/jumbo v1, "routing msg error, try election"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "serviceId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v7, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/MsgDistribute;->tryElection(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleRoutingMsgAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "needReturn":Z
    const-string/jumbo v6, "routingAck"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 427
    .local v3, "routingACK":Z
    const-string/jumbo v6, "routingMsg"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 430
    .local v4, "routingMSG":Z
    if-eqz v3, :cond_1

    .line 431
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "recieve routiong ack"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "dataId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "serviceId"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v6, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 433
    sget-object v6, Lcom/taobao/accs/data/MsgDistribute;->mRoutingDataIds:Ljava/util/Set;

    invoke-interface {v6, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "ele_routing_rate"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x1

    .line 440
    :cond_1
    if-eqz v4, :cond_2

    .line 442
    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "send routiong ack"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "dataId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "to pkg"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "serviceId"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object p4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.taobao.accs.intent.action.COMMAND"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "intentAck":Landroid/content/Intent;
    const-string/jumbo v6, "command"

    const/16 v7, 0x6a

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string/jumbo v6, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v6, "routingAck"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v6, "dataId"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v0    # "intentAck":Landroid/content/Intent;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 451
    :catch_0
    move-exception v5

    .line 452
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "send routing ack"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "serviceId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p4, v8, v9

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tryElection(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->isElectionEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "startIntent":Landroid/content/Intent;
    const-string/jumbo v1, "operate"

    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/data/MsgDistribute;->getChannelService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 414
    .end local v0    # "startIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkSpace(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "command"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "needReturn":Z
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "agooSend"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getUsableSpace()J

    move-result-wide v2

    .line 166
    .local v2, "space":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 167
    const-string/jumbo v1, "accs"

    const-string/jumbo v4, "send_fail"

    const-string/jumbo v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "space low "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, p2, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "MsgDistribute"

    const-string/jumbo v4, "user space low, don\'t distribute"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "size"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "serviceId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const/4 v0, 0x1

    .line 172
    .end local v2    # "space":J
    :cond_0
    return v0
.end method

.method protected getChannelService(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    const-string/jumbo v0, "com.taobao.accs.ChannelService"

    return-object v0
.end method

.method protected getMsgDistributeService(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    const-string/jumbo v0, "com.taobao.accs.data.MsgDistributeService"

    return-object v0
.end method

.method protected handBroadCastMsg(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "command"    # I
    .param p5, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "appReceivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v16, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 322
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 323
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/accs/IAppReceiver;

    .line 324
    .local v8, "appReceiver":Lcom/taobao/accs/IAppReceiver;
    invoke-interface {v8}, Lcom/taobao/accs/IAppReceiver;->getAllServices()Ljava/util/Map;

    move-result-object v15

    .line 325
    .local v15, "sers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    .line 326
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 331
    .end local v8    # "appReceiver":Lcom/taobao/accs/IAppReceiver;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "sers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/16 v6, 0x67

    move/from16 v0, p4

    if-ne v0, v6, :cond_a

    .line 332
    if-eqz v16, :cond_5

    .line 333
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 335
    .local v14, "key":Ljava/lang/String;
    const-string/jumbo v6, "accs"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "windvane"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "motu-remote"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 340
    .local v10, "className":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 341
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 343
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 344
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 352
    .end local v10    # "className":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "connect_avail"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 353
    .local v9, "available":Z
    const-string/jumbo v6, "host"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v6, "errorDetail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "errorDetail":Ljava/lang/String;
    const-string/jumbo v6, "type_inapp"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 356
    .local v4, "isInapp":Z
    const-string/jumbo v6, "is_center_host"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 357
    .local v5, "isCenter":Z
    const/4 v2, 0x0

    .line 358
    .local v2, "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 359
    if-eqz v9, :cond_8

    .line 360
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 364
    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    :goto_2
    iput-boolean v9, v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    .line 366
    :cond_6
    if-eqz v2, :cond_9

    .line 367
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v6, "com.taobao.accs.intent.action.CONNECTINFO"

    invoke-direct {v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v11, "connectionIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v6, "connect_info"

    invoke-virtual {v11, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "isInapp":Z
    .end local v5    # "isCenter":Z
    .end local v7    # "errorDetail":Ljava/lang/String;
    .end local v9    # "available":Z
    .end local v11    # "connectionIntent":Landroid/content/Intent;
    :cond_7
    :goto_3
    return-void

    .line 362
    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "isInapp":Z
    .restart local v5    # "isCenter":Z
    .restart local v7    # "errorDetail":Ljava/lang/String;
    .restart local v9    # "available":Z
    :cond_8
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    move/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    goto :goto_2

    .line 372
    :cond_9
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v17, "connect info null, host empty"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 375
    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "isInapp":Z
    .end local v5    # "isCenter":Z
    .end local v7    # "errorDetail":Ljava/lang/String;
    .end local v9    # "available":Z
    :cond_a
    const/16 v6, 0x68

    move/from16 v0, p4

    if-ne v0, v6, :cond_d

    .line 376
    if-eqz v16, :cond_7

    .line 377
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 378
    .restart local v14    # "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 380
    .restart local v10    # "className":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 381
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 383
    :cond_c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    .line 390
    .end local v10    # "className":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "MsgDistribute"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "distribMessage serviceId is null!! command:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method protected handleBusinessMsg(Landroid/content/Context;Lcom/taobao/accs/IAppReceiver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appReceiver"    # Lcom/taobao/accs/IAppReceiver;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "serviceId"    # Ljava/lang/String;
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "command"    # I
    .param p7, "errorCode"    # I

    .prologue
    .line 287
    const/4 v9, 0x0

    .line 288
    .local v9, "className":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 289
    invoke-interface {p2, p4}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 296
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    const-string/jumbo v2, "MsgDistribute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "to start service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_2
    invoke-virtual {p3, p1, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 313
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string/jumbo v4, "MsgToBuss"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "commandId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dataId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "to_buss"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2commandId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 315
    return-void

    .line 303
    :cond_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;

    move-result-object v10

    .line 304
    .local v10, "listener":Lcom/taobao/accs/base/AccsAbstractDataListener;
    if-eqz v10, :cond_4

    .line 305
    invoke-static {p1, p3, v10}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I

    goto/16 :goto_0

    .line 307
    :cond_4
    const-string/jumbo v2, "appKey"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "appkey":Ljava/lang/String;
    const-string/jumbo v2, "MsgDistribute"

    const-string/jumbo v3, "callback is null"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " serviceId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " command"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "service is null"

    invoke-static {v2, v3, p4, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleMsgInChannelProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/IAppReceiver;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "appReceiver"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    const/4 v9, 0x0

    .line 180
    const/4 v1, 0x0

    .line 183
    .local v1, "handled":Z
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 212
    .end local v1    # "handled":Z
    .local v2, "handled":I
    :goto_0
    return v2

    .line 187
    .end local v2    # "handled":I
    .restart local v1    # "handled":Z
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "className":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 189
    invoke-interface {p5, p2}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    const-string/jumbo v4, "accs"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    const-string/jumbo v4, "MsgDistribute"

    const-string/jumbo v5, "start MsgDistributeService"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dataId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_1
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/taobao/accs/data/MsgDistribute;->getMsgDistributeService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, p4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    const/4 v1, 0x1

    .end local v0    # "className":Ljava/lang/String;
    :cond_3
    :goto_2
    move v2, v1

    .line 212
    .restart local v2    # "handled":I
    goto :goto_0

    .line 200
    .end local v2    # "handled":I
    .restart local v0    # "className":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "MsgDistribute"

    const-string/jumbo v5, "start MsgDistributeService"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dataId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 208
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "MsgDistribute"

    const-string/jumbo v5, "handleMsgInChannelProcess"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method
