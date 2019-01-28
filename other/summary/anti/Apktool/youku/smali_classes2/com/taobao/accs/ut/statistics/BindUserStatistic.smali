.class public Lcom/taobao/accs/ut/statistics/BindUserStatistic;
.super Ljava/lang/Object;
.source "BindUserStatistic.java"

# interfaces
.implements Lcom/taobao/accs/ut/statistics/UTInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.BindUserStatistic"


# instance fields
.field private final PAGE_NAME:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public failReason:Ljava/lang/String;

.field private isCommitted:Z

.field public ret:Z

.field public time:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "BindUser"

    iput-object v0, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->PAGE_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->isCommitted:Z

    return-void
.end method

.method private commit(Ljava/lang/String;)V
    .locals 10
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const v8, 0x101d1

    .line 63
    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->isCommitted:Z

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "arg1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 69
    .local v4, "arg2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 70
    .local v5, "arg3":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->deviceId:Ljava/lang/String;

    .line 74
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string/jumbo v0, "device_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->deviceId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v0, "bind_date"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->time:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "ret"

    iget-boolean v0, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->ret:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "y"

    :goto_1
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "fail_reasons"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->failReason:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->userId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string/jumbo v0, "accs.BindUserStatistic"

    const v1, 0x101d1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "accs.BindUserStatistic"

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

    .line 77
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "n"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public commitUT()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "BindUser"

    invoke-direct {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->commit(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setFailReason(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 33
    sparse-switch p1, :sswitch_data_0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    .line 55
    :goto_0
    :sswitch_0
    return-void

    .line 37
    :sswitch_1
    const-string/jumbo v0, "network fail"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :sswitch_2
    const-string/jumbo v0, "msg too large"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :sswitch_3
    const-string/jumbo v0, "app not bind"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :sswitch_4
    const-string/jumbo v0, "param error"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_5
    const-string/jumbo v0, "service not available"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_3
    .end sparse-switch
.end method

.method public setFailReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/taobao/accs/ut/statistics/BindUserStatistic;->failReason:Ljava/lang/String;

    .line 30
    return-void
.end method
