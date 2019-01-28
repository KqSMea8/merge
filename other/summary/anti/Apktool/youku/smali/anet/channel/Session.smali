.class public abstract Lanet/channel/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XI;,
        Lanet/channel/Session$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lanet/channel/Session;",
        ">;"
    }
.end annotation


# instance fields
.field public autoReCreate:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private errorTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastAmdcRequestSend:J

.field protected mConnStrategy:Lanet/channel/strategy/IConnStrategy;

.field protected mConnTimeout:I

.field public mConnType:Lc8/BJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field public mEventCallBacks:Ljava/util/Map;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/FJ;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHost:Ljava/lang/String;

.field protected mIp:Ljava/lang/String;

.field private mIsConnTimeOut:Z

.field protected mPort:I

.field protected mProxyIp:Ljava/lang/String;

.field protected mProxyPort:I

.field protected mRealHost:Ljava/lang/String;

.field protected mRecvTimeOutRunnable:Ljava/lang/Runnable;

.field protected mReqTimeout:I

.field public final mSeq:Ljava/lang/String;

.field public final mSessionStat:Lanet/channel/statist/SessionStatistic;

.field protected mStatus:Lanet/channel/Session$Status;

.field private timeoutTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field public tryNextWhenFail:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/AJ;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lc8/AJ;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    .line 48
    iput-boolean v1, p0, Lanet/channel/Session;->mIsConnTimeOut:Z

    .line 58
    iput-object v2, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    .line 60
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    iput-object v0, p0, Lanet/channel/Session;->mStatus:Lanet/channel/Session$Status;

    .line 69
    iput-boolean v1, p0, Lanet/channel/Session;->autoReCreate:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 72
    iput-object v2, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/Session;->lastAmdcRequestSend:J

    .line 99
    iput-object p1, p0, Lanet/channel/Session;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p2}, Lc8/AJ;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mIp:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lc8/AJ;->getPort()I

    move-result v0

    iput v0, p0, Lanet/channel/Session;->mPort:I

    .line 102
    invoke-virtual {p2}, Lc8/AJ;->getConnType()Lc8/BJ;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mConnType:Lc8/BJ;

    .line 103
    invoke-virtual {p2}, Lc8/AJ;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lc8/AJ;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lanet/channel/Session;->mReqTimeout:I

    .line 106
    invoke-virtual {p2}, Lc8/AJ;->getConnectionTimeout()I

    move-result v0

    iput v0, p0, Lanet/channel/Session;->mConnTimeout:I

    .line 107
    iget-object v0, p2, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    iput-object v0, p0, Lanet/channel/Session;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    .line 108
    invoke-virtual {p2}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    .line 110
    new-instance v0, Lanet/channel/statist/SessionStatistic;

    invoke-direct {v0, p2}, Lanet/channel/statist/SessionStatistic;-><init>(Lc8/AJ;)V

    iput-object v0, p0, Lanet/channel/Session;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    .line 111
    iget-object v0, p0, Lanet/channel/Session;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v1, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileSize"    # I
    .param p3, "fileNum"    # I

    .prologue
    .line 136
    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {p0, v1, v2}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v0

    .line 137
    .local v0, "agent":Lc8/CXp;
    if-eqz v0, :cond_0

    invoke-static {}, Lc8/CXp;->checkLoadSucc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Lc8/CXp;->configLogFile(Ljava/lang/String;II)I

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string/jumbo v1, "agent null or configTnetALog load so fail!!!"

    const/4 v2, 0x0

    const-string/jumbo v3, "loadso"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lc8/CXp;->checkLoadSucc()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelTimeout()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lanet/channel/Session;->timeoutTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lanet/channel/Session;->timeoutTaskFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 331
    :cond_0
    return-void
.end method

.method public checkAvailable()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lanet/channel/Session;->ping(Z)V

    .line 127
    return-void
.end method

.method public abstract close()V
.end method

.method public close(Z)V
    .locals 0
    .param p1, "autoReCreate"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lanet/channel/Session;->autoReCreate:Z

    .line 158
    invoke-virtual {p0}, Lanet/channel/Session;->close()V

    .line 159
    return-void
.end method

.method public compareTo(Lanet/channel/Session;)I
    .locals 2
    .param p1, "session"    # Lanet/channel/Session;

    .prologue
    .line 90
    iget-object v0, p0, Lanet/channel/Session;->mConnType:Lc8/BJ;

    iget-object v1, p1, Lanet/channel/Session;->mConnType:Lc8/BJ;

    invoke-static {v0, v1}, Lc8/BJ;->compare(Lc8/BJ;Lc8/BJ;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lanet/channel/Session;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lanet/channel/Session;->compareTo(Lanet/channel/Session;)I

    move-result v0

    return v0
.end method

.method public connect()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public getConnStrategy()Lanet/channel/strategy/IConnStrategy;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lanet/channel/Session;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object v0
.end method

.method public getConnType()Lc8/BJ;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lanet/channel/Session;->mConnType:Lc8/BJ;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lanet/channel/Session;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lanet/channel/Session;->mPort:I

    return v0
.end method

.method public getRealHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getRecvTimeOutRunnable()Ljava/lang/Runnable;
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    return-object v0
.end method

.method protected handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 1
    .param p1, "eventType"    # Lanet/channel/entity/EventType;
    .param p2, "event"    # Lc8/EJ;

    .prologue
    .line 240
    new-instance v0, Lc8/WI;

    invoke-direct {v0, p0, p1, p2}, Lc8/WI;-><init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lc8/EJ;)V

    invoke-static {v0}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 264
    return-void
.end method

.method protected handleResponseCode(Lc8/eK;I)V
    .locals 8
    .param p1, "request"    # Lc8/eK;
    .param p2, "statusCode"    # I

    .prologue
    .line 341
    invoke-virtual {p1}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "x-pv"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/16 v4, 0x1f4

    if-lt p2, v4, :cond_0

    const/16 v4, 0x258

    if-ge p2, v4, :cond_0

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    if-nez v4, :cond_2

    .line 349
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    .line 352
    :cond_2
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 353
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 355
    :cond_3
    :try_start_1
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 356
    .local v0, "first":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 357
    .local v2, "now":J
    sub-long v4, v2, v0

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 358
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v4

    invoke-virtual {p1}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc8/MK;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 361
    :cond_4
    iget-object v4, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected handleResponseHeaders(Lc8/eK;Ljava/util/Map;)V
    .locals 8
    .param p1, "request"    # Lc8/eK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eK;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v3

    invoke-virtual {p1}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/MK;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "x-switch-unit"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    const-string/jumbo v3, "x-switch-unit"

    invoke-static {p2, v3}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "unit":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const/4 v2, 0x0

    .line 376
    :cond_0
    iget-object v3, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    invoke-static {v3, v2}, Lc8/cM;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    .local v0, "now":J
    iget-wide v4, p0, Lanet/channel/Session;->lastAmdcRequestSend:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 379
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v3

    invoke-virtual {p1}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/MK;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 380
    iput-wide v0, p0, Lanet/channel/Session;->lastAmdcRequestSend:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v0    # "now":J
    .end local v2    # "unit":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public abstract isAvailable()Z
.end method

.method protected declared-synchronized notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V
    .locals 6
    .param p1, "status"    # Lanet/channel/Session$Status;
    .param p2, "event"    # Lc8/EJ;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "awcn.Session"

    const-string/jumbo v1, "notifyStatus"

    iget-object v2, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lanet/channel/Session$Status;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lanet/channel/Session;->mStatus:Lanet/channel/Session$Status;

    invoke-virtual {p1, v0}, Lanet/channel/Session$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string/jumbo v0, "awcn.Session"

    const-string/jumbo v1, "ignore notifyStatus"

    iget-object v2, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    iput-object p1, p0, Lanet/channel/Session;->mStatus:Lanet/channel/Session$Status;

    .line 276
    sget-object v0, Lc8/XI;->$SwitchMap$anet$channel$Session$Status:[I

    iget-object v1, p0, Lanet/channel/Session;->mStatus:Lanet/channel/Session$Status;

    invoke-virtual {v1}, Lanet/channel/Session$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_1
    sget-object v0, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 290
    :pswitch_2
    :try_start_2
    sget-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {p0}, Lanet/channel/Session;->onDisconnect()V

    .line 295
    iget-boolean v0, p0, Lanet/channel/Session;->mIsConnTimeOut:Z

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    goto :goto_0

    .line 302
    :pswitch_4
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/MK;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    .line 303
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    goto :goto_0

    .line 306
    :pswitch_5
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDisconnect()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public ping(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public registerEventcb(ILc8/FJ;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "callback"    # Lc8/FJ;

    .prologue
    .line 187
    iget-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    return-void
.end method

.method public abstract request(Lc8/eK;Lc8/VI;)Lc8/ZJ;
.end method

.method public sendCustomFrame(I[BI)V
    .locals 0
    .param p1, "dataId"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # I

    .prologue
    .line 123
    return-void
.end method

.method protected setPingTimeout()V
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lanet/channel/Session;->getRecvTimeOutRunnable()Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    .line 317
    :cond_0
    invoke-virtual {p0}, Lanet/channel/Session;->cancelTimeout()V

    .line 318
    const-wide/32 v0, 0x9c40

    .line 319
    .local v0, "delay":J
    iget-object v2, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v0, v1, v3}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/Session;->timeoutTaskFuture:Ljava/util/concurrent/Future;

    .line 322
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session@["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/Session;->mConnType:Lc8/BJ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
