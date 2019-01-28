.class public Lcom/taobao/accs/net/InAppConnection$2;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/InAppConnection;->onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/InAppConnection;

.field final synthetic val$data:[B

.field final synthetic val$frameType:I

.field final synthetic val$session:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/InAppConnection;I[BLanet/channel/session/TnetSpdySession;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iput p2, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$frameType:I

    iput-object p3, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$data:[B

    iput-object p4, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$session:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 280
    iget v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$frameType:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 283
    .local v2, "receiveTime":J
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v5, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$data:[B

    iget-object v6, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$session:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v6}, Lanet/channel/session/TnetSpdySession;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/taobao/accs/data/MessageHandler;->onMessage([BLjava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v4}, Lcom/taobao/accs/data/MessageHandler;->getReceiveMsgStat()Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-result-object v1

    .line 285
    .local v1, "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    if-eqz v1, :cond_0

    .line 286
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->receiveDate:Ljava/lang/String;

    .line 287
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget v4, v4, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    if-nez v4, :cond_1

    const-string/jumbo v4, "service"

    :goto_0
    iput-object v4, v1, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->messageType:Ljava/lang/String;

    .line 288
    invoke-virtual {v1}, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->commitUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    .end local v2    # "receiveTime":J
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v4}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "try handle msg"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :goto_2
    return-void

    .line 287
    .restart local v1    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    .restart local v2    # "receiveTime":J
    :cond_1
    :try_start_1
    const-string/jumbo v4, "inapp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 291
    .end local v1    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    .end local v2    # "receiveTime":J
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v4}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onDataReceive "

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d1

    const-string/jumbo v6, "DATA_RECEIVE"

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection$2;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v4}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drop frame len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$data:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " frameType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/taobao/accs/net/InAppConnection$2;->val$frameType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
