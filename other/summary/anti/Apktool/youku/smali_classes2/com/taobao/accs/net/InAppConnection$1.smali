.class public Lcom/taobao/accs/net/InAppConnection$1;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/InAppConnection;->sendMessage(Lcom/taobao/accs/data/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/InAppConnection;

.field final synthetic val$message:Lcom/taobao/accs/data/Message;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/InAppConnection;Lcom/taobao/accs/data/Message;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iput-object p2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 98
    :cond_0
    const/4 v7, 0x1

    .line 99
    .local v7, "sendSucc":Z
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v11

    .line 101
    .local v11, "type":I
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try send:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/InAppConnection;->mAppkey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    const/4 v0, 0x1

    if-ne v11, v0, :cond_16

    .line 105
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    if-nez v7, :cond_4

    .line 162
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 164
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/InAppConnection;->reSend(Lcom/taobao/accs/data/Message;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget v0, v0, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 168
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "resend"

    const-string/jumbo v2, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    :cond_4
    :goto_1
    const-string/jumbo v0, "accs"

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 177
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .end local v7    # "sendSucc":Z
    .end local v11    # "type":I
    :cond_5
    :goto_2
    return-void

    .line 108
    .restart local v7    # "sendSucc":Z
    .restart local v11    # "type":I
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v9

    .line 109
    .local v9, "sessionCenter":Lanet/channel/SessionCenter;
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v1, v2}, Lcom/taobao/accs/net/InAppConnection;->registerSessionInfo(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 110
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/32 v2, 0xea60

    invoke-virtual {v9, v0, v1, v2, v3}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v8

    .line 111
    .local v8, "session":Lanet/channel/Session;
    if-eqz v8, :cond_15

    .line 112
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget v2, v2, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/Message;->build(Landroid/content/Context;I)[B

    move-result-object v6

    .line 114
    .local v6, "data":[B
    const-string/jumbo v0, "accs"

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "send data "

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "len"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez v6, :cond_b

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "command"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "host"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v4, "utdid"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/InAppConnection;->mUtdid:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->setSendTime(J)V

    .line 133
    array-length v0, v6

    const/16 v1, 0x4000

    if-le v0, v1, :cond_12

    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_12

    .line 134
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 155
    .end local v6    # "data":[B
    .end local v8    # "session":Lanet/channel/Session;
    .end local v9    # "sessionCenter":Lanet/channel/SessionCenter;
    :catch_0
    move-exception v10

    .line 157
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    const-string/jumbo v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget v5, v5, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sendMessage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v10, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    if-nez v7, :cond_a

    .line 162
    const/4 v0, 0x1

    if-ne v11, v0, :cond_19

    .line 164
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/InAppConnection;->reSend(Lcom/taobao/accs/data/Message;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget v0, v0, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 168
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "resend"

    const-string/jumbo v2, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    :cond_a
    :goto_5
    const-string/jumbo v0, "accs"

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 177
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 115
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v6    # "data":[B
    .restart local v8    # "session":Lanet/channel/Session;
    .restart local v9    # "sessionCenter":Lanet/channel/SessionCenter;
    :cond_b
    :try_start_3
    array-length v0, v6

    goto/16 :goto_3

    .line 122
    :cond_c
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "send data "

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "len"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez v6, :cond_11

    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "command"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "host"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v4, "utdid"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/InAppConnection;->mUtdid:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 161
    .end local v6    # "data":[B
    .end local v8    # "session":Lanet/channel/Session;
    .end local v9    # "sessionCenter":Lanet/channel/SessionCenter;
    :catchall_0
    move-exception v0

    if-nez v7, :cond_f

    .line 162
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1b

    .line 164
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/net/InAppConnection;->reSend(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 165
    :cond_d
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v3, -0xb

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 167
    :cond_e
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget v1, v1, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 168
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    :cond_f
    :goto_7
    const-string/jumbo v1, "accs"

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 177
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_10
    :goto_8
    throw v0

    .line 123
    .restart local v6    # "data":[B
    .restart local v8    # "session":Lanet/channel/Session;
    .restart local v9    # "sessionCenter":Lanet/channel/SessionCenter;
    :cond_11
    :try_start_4
    array-length v0, v6

    goto/16 :goto_6

    .line 136
    :cond_12
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/MessageHandler;->onSend(Lcom/taobao/accs/data/Message;)V

    .line 137
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-boolean v0, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mAckMessage:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_13
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v0

    const/16 v1, 0xc8

    invoke-virtual {v8, v0, v6, v1}, Lanet/channel/Session;->sendCustomFrame(I[BI)V

    .line 141
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 142
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 144
    :cond_14
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget v2, v2, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/net/InAppConnection;->setTimeOut(Ljava/lang/String;J)V

    .line 145
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v12, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v2

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v6

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v12, v0}, Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    goto/16 :goto_0

    .line 148
    .end local v6    # "data":[B
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 152
    .end local v8    # "session":Lanet/channel/Session;
    .end local v9    # "sessionCenter":Lanet/channel/SessionCenter;
    :cond_16
    const/4 v7, 0x1

    .line 153
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip msg type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 171
    :cond_17
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .line 178
    :cond_18
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 171
    .restart local v10    # "t":Ljava/lang/Throwable;
    :cond_19
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_5

    .line 178
    :cond_1a
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSucc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 171
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_1b
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    const/16 v3, -0xb

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_7

    .line 178
    :cond_1c
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 179
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$1;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSucc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection$1;->val$message:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8
.end method
