.class public Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
.super Ljava/lang/Object;
.source "ReceiveMsgStat.java"

# interfaces
.implements Lcom/taobao/accs/ut/statistics/UTInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.ReceiveMessage"


# instance fields
.field private final PAGE_NAME:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public dataLen:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field private isCommitted:Z

.field public messageType:Ljava/lang/String;

.field public receiveDate:Ljava/lang/String;

.field public repeat:Z

.field public serviceId:Ljava/lang/String;

.field public toBzDate:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "receiveMessage"

    iput-object v0, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->PAGE_NAME:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->repeat:Z

    .line 34
    iput-boolean v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->isCommitted:Z

    return-void
.end method


# virtual methods
.method public commitUT()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x101d1

    .line 38
    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->isCommitted:Z

    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, "arg1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, "arg2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 45
    .local v5, "arg3":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->deviceId:Ljava/lang/String;

    .line 48
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string/jumbo v0, "device_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->deviceId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "data_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->dataId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "receive_date"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->receiveDate:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "to_bz_date"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->toBzDate:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "service_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->serviceId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "data_length"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->dataLen:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v0, "msg_type"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->messageType:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "repeat"

    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->repeat:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "y"

    :goto_1
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->userId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string/jumbo v0, "accs.ReceiveMessage"

    const v1, 0x101d1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "receiveMessage"

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 64
    :catch_0
    move-exception v7

    .line 65
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "accs.ReceiveMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 56
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "n"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
