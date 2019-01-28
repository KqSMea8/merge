.class public Lcom/taobao/accs/ut/statistics/MonitorStatistic;
.super Ljava/lang/Object;
.source "MonitorStatistic.java"

# interfaces
.implements Lcom/taobao/accs/ut/statistics/UTInterface;


# static fields
.field private static final COMMIT_INTERVAL:J = 0x124f80L

.field private static final PAGE:Ljava/lang/String; = "MONITOR"

.field private static final TAG:Ljava/lang/String; = "MonitorStatistic"


# instance fields
.field public connType:I

.field private lastCommitTime:J

.field public messageNum:I

.field public networkAvailable:Z

.field public proxy:Ljava/lang/String;

.field public startServiceTime:J

.field public status:I

.field public tcpConnected:Z

.field public threadIsalive:Z

.field public unHandleMessageNum:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->lastCommitTime:J

    .line 20
    iput-boolean v2, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->tcpConnected:Z

    .line 21
    iput v2, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->messageNum:I

    .line 22
    iput v2, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->unHandleMessageNum:I

    return-void
.end method


# virtual methods
.method public commitUT()V
    .locals 14

    .prologue
    const v13, 0x101d1

    const/4 v12, 0x0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    .local v8, "time":J
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "MonitorStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commitUT interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->lastCommitTime:J

    sub-long v10, v8, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " interval1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->startServiceTime:J

    sub-long v10, v8, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->lastCommitTime:J

    sub-long v0, v8, v0

    const-wide/32 v10, 0x124f80

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->startServiceTime:J

    sub-long v0, v8, v0

    const-wide/32 v10, 0xea60

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "arg1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 41
    .local v4, "arg2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 42
    .local v5, "arg3":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget v0, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->messageNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    iget v0, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->unHandleMessageNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    const-string/jumbo v0, "connStatus"

    iget v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->status:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v0, "connType"

    iget v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->connType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "tcpConnected"

    iget-boolean v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->tcpConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "proxy"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->proxy:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "startServiceTime"

    iget-wide v10, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->startServiceTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "commitTime"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "networkAvailable"

    iget-boolean v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->networkAvailable:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v0, "threadIsalive"

    iget-boolean v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->threadIsalive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->url:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "MonitorStatistic"

    const v1, 0x101d1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "MONITOR"

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    .line 62
    iput-wide v8, p0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->lastCommitTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v3    # "arg1":Ljava/lang/String;
    .end local v4    # "arg2":Ljava/lang/String;
    .end local v5    # "arg3":Ljava/lang/String;
    .end local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void

    .line 63
    .restart local v3    # "arg1":Ljava/lang/String;
    .restart local v4    # "arg2":Ljava/lang/String;
    .restart local v5    # "arg3":Ljava/lang/String;
    .restart local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 64
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "MonitorStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

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

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
