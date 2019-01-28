.class public Lc8/YM;
.super Lc8/xM;
.source "ConnectionDelegate.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/jM;
.implements Lc8/lM;


# instance fields
.field private config:Lc8/HN;

.field private desc:Ljava/lang/String;

.field private future:Lc8/LM;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputStream:Lc8/eN;

.field private statisticData:Lanetwork/channel/statist/StatisticData;

.field private statusCode:I

.field private statusLatch:Ljava/util/concurrent/CountDownLatch;

.field private streamLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lc8/xM;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/YM;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    iput p1, p0, Lc8/YM;->statusCode:I

    .line 41
    invoke-static {p1}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/YM;->desc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lc8/HN;)V
    .locals 2
    .param p1, "config"    # Lc8/HN;

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lc8/xM;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/YM;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    iput-object p1, p0, Lc8/YM;->config:Lc8/HN;

    .line 46
    return-void
.end method

.method private buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 132
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    goto :goto_0
.end method

.method private waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lc8/YM;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->getWaitTimeout()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 119
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 120
    iget-object v1, p0, Lc8/YM;->future:Lc8/LM;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lc8/YM;->future:Lc8/LM;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lc8/LM;->cancel(Z)Z

    .line 123
    :cond_0
    const-string/jumbo v1, "wait time out"

    invoke-direct {p0, v1}, Lc8/YM;->buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "ret":Z
    :catch_0
    move-exception v1

    const-string/jumbo v1, "thread interrupt"

    invoke-direct {p0, v1}, Lc8/YM;->buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v1

    throw v1

    .line 127
    .restart local v0    # "ret":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lc8/YM;->future:Lc8/LM;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lc8/YM;->future:Lc8/LM;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lc8/LM;->cancel(Z)Z

    .line 98
    :cond_0
    return-void
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lc8/YM;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 90
    iget-object v0, p0, Lc8/YM;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lc8/YM;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 56
    iget-object v0, p0, Lc8/YM;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Lc8/PM;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/YM;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lc8/YM;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 72
    iget-object v0, p0, Lc8/YM;->inputStream:Lc8/eN;

    return-object v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/YM;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lc8/YM;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 81
    iget v0, p0, Lc8/YM;->statusCode:I

    return v0
.end method

.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v0

    iput v0, p0, Lc8/YM;->statusCode:I

    .line 106
    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/YM;->desc:Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    iput-object v0, p0, Lc8/YM;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 109
    iget-object v0, p0, Lc8/YM;->inputStream:Lc8/eN;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lc8/YM;->inputStream:Lc8/eN;

    invoke-virtual {v0}, Lc8/eN;->writeEnd()V

    .line 112
    :cond_0
    iget-object v0, p0, Lc8/YM;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 113
    iget-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lc8/YM;->statusCode:I

    invoke-static {v0}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputStream"    # Lc8/PM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p1, Lc8/eN;

    .end local p1    # "inputStream":Lc8/PM;
    iput-object p1, p0, Lc8/YM;->inputStream:Lc8/eN;

    .line 148
    iget-object v0, p0, Lc8/YM;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 149
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput p1, p0, Lc8/YM;->statusCode:I

    .line 140
    iget v0, p0, Lc8/YM;->statusCode:I

    invoke-static {v0}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/YM;->desc:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lc8/YM;->header:Ljava/util/Map;

    .line 142
    iget-object v0, p0, Lc8/YM;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public setFuture(Lc8/LM;)V
    .locals 0
    .param p1, "future"    # Lc8/LM;

    .prologue
    .line 101
    iput-object p1, p0, Lc8/YM;->future:Lc8/LM;

    .line 102
    return-void
.end method
