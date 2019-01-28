.class public Lc8/lJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gJ;,
        Lc8/kJ;,
        Lc8/iJ;,
        Lc8/jJ;
    }
.end annotation


# instance fields
.field connStat:Lanet/channel/statist/SessionConnStat;

.field volatile connectingSession:Lanet/channel/Session;

.field volatile isConnecting:Z

.field volatile isToClose:Z

.field private locked:Ljava/lang/Object;

.field private mHost:Ljava/lang/String;

.field private mRealHost:Ljava/lang/String;

.field private sessionCenter:Lanet/channel/SessionCenter;

.field private sessionInfo:Lc8/cJ;

.field private sessionPool:Lc8/dJ;

.field private volatile timeoutTask:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "sessionCenter"    # Lanet/channel/SessionCenter;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lc8/lJ;->isConnecting:Z

    .line 57
    iput-boolean v0, p0, Lc8/lJ;->isToClose:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/lJ;->locked:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    iget-object v1, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/lJ;->mRealHost:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lc8/lJ;->sessionCenter:Lanet/channel/SessionCenter;

    .line 67
    iget-object v0, p2, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    iget-object v1, p0, Lc8/lJ;->mRealHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/YI;->getSessionInfo(Ljava/lang/String;)Lc8/cJ;

    move-result-object v0

    iput-object v0, p0, Lc8/lJ;->sessionInfo:Lc8/cJ;

    .line 68
    iget-object v0, p2, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    iput-object v0, p0, Lc8/lJ;->sessionPool:Lc8/dJ;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lc8/lJ;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/lJ;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lc8/lJ;->setConnecting(Z)V

    return-void
.end method

.method static synthetic access$100(Lc8/lJ;)Lc8/dJ;
    .locals 1
    .param p0, "x0"    # Lc8/lJ;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/lJ;->sessionPool:Lc8/dJ;

    return-object v0
.end method

.method static synthetic access$200(Lc8/lJ;)V
    .locals 0
    .param p0, "x0"    # Lc8/lJ;

    .prologue
    .line 46
    invoke-direct {p0}, Lc8/lJ;->finish()V

    return-void
.end method

.method static synthetic access$300(Lc8/lJ;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/lJ;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/lJ;Landroid/content/Context;Lc8/AJ;Lc8/kJ;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/lJ;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lc8/AJ;
    .param p3, "x3"    # Lc8/kJ;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/lJ;->createSession(Landroid/content/Context;Lc8/AJ;Lc8/kJ;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lc8/lJ;)Lanet/channel/SessionCenter;
    .locals 1
    .param p0, "x0"    # Lc8/lJ;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/lJ;->sessionCenter:Lanet/channel/SessionCenter;

    return-object v0
.end method

.method static synthetic access$700(Lc8/lJ;Lanet/channel/Session;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/lJ;
    .param p1, "x1"    # Lanet/channel/Session;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lc8/lJ;->sendConnectInfoBroadCastToAccs(Lanet/channel/Session;ILjava/lang/String;)V

    return-void
.end method

.method private createSession(Landroid/content/Context;Lc8/AJ;Lc8/kJ;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lc8/AJ;
    .param p3, "connCb"    # Lc8/kJ;
    .param p4, "seq"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p2}, Lc8/AJ;->getConnType()Lc8/BJ;

    move-result-object v7

    .line 369
    .local v7, "type":Lc8/BJ;
    if-eqz p1, :cond_0

    invoke-virtual {v7}, Lc8/BJ;->isHttpType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lanet/channel/session/TnetSpdySession;

    iget-object v1, p0, Lc8/lJ;->sessionCenter:Lanet/channel/SessionCenter;

    iget-object v3, v1, Lanet/channel/SessionCenter;->config:Lc8/RI;

    iget-object v4, p0, Lc8/lJ;->sessionInfo:Lc8/cJ;

    iget-object v1, p0, Lc8/lJ;->sessionCenter:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    iget-object v2, p0, Lc8/lJ;->mRealHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/YI;->getPublicKey(Ljava/lang/String;)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lc8/AJ;Lc8/RI;Lc8/cJ;I)V

    iput-object v0, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    .line 377
    :goto_0
    const-string/jumbo v0, "awcn.SessionRequest"

    const-string/jumbo v1, "create connection..."

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lc8/AJ;->getConnType()Lc8/BJ;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "IP"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lc8/AJ;->getIp()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Port"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p2}, Lc8/AJ;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "heartbeat"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p2}, Lc8/AJ;->getHeartbeat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "session"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    aput-object v4, v2, v3

    invoke-static {v0, v1, p4, v2}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v2, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lc8/lJ;->registerEvent(Lanet/channel/Session;Lc8/kJ;JLjava/lang/String;)V

    .line 379
    iget-object v0, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->connect()V

    .line 380
    iget-object v0, p0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    iget v1, v0, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    .line 381
    iget-object v0, p0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->startConnect:J

    .line 382
    return-void

    .line 375
    :cond_0
    new-instance v0, Lc8/tK;

    invoke-direct {v0, p1, p2}, Lc8/tK;-><init>(Landroid/content/Context;Lc8/AJ;)V

    iput-object v0, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    goto/16 :goto_0
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/lJ;->setConnecting(Z)V

    .line 512
    iget-object v1, p0, Lc8/lJ;->locked:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lc8/lJ;->locked:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 514
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAvailStrategy(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p2, "seq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/entity/ConnType$TypeLevel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 313
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 315
    .local v4, "strategies":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v1

    .line 316
    .local v1, "httpUrl":Lc8/XL;
    if-nez v1, :cond_0

    .line 317
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 344
    .end local v1    # "httpUrl":Lc8/XL;
    :goto_0
    return-object v7

    .line 321
    .restart local v1    # "httpUrl":Lc8/XL;
    :cond_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v7

    invoke-virtual {v1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lc8/MK;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 323
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 324
    const-string/jumbo v7, "https"

    invoke-virtual {v1}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 325
    .local v2, "isSsl":Z
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 326
    .local v3, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IConnStrategy;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 327
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/IConnStrategy;

    .line 328
    .local v5, "strategy":Lanet/channel/strategy/IConnStrategy;
    invoke-interface {v5}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    invoke-static {v7}, Lc8/BJ;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lc8/BJ;

    move-result-object v0

    .line 329
    .local v0, "connType":Lc8/BJ;
    invoke-virtual {v0}, Lc8/BJ;->isSSL()Z

    move-result v7

    if-ne v7, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lc8/BJ;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v7

    if-eq v7, p1, :cond_1

    .line 331
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 340
    .end local v0    # "connType":Lc8/BJ;
    .end local v1    # "httpUrl":Lc8/XL;
    .end local v2    # "isSsl":Z
    .end local v3    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/strategy/IConnStrategy;>;"
    .end local v5    # "strategy":Lanet/channel/strategy/IConnStrategy;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "awcn.SessionRequest"

    const-string/jumbo v8, ""

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, p2, v6, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    move-object v7, v4

    .line 344
    goto :goto_0

    .line 336
    .restart local v1    # "httpUrl":Lc8/XL;
    :cond_4
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    const-string/jumbo v7, "awcn.SessionRequest"

    const-string/jumbo v8, "[getAvailStrategy]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "strategies"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v7, v8, p2, v9}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getConnInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2, "seq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/AJ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "connStrategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 364
    :cond_0
    return-object v1

    .line 351
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "connInfos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/entity/ConnInfo;>;"
    const/4 v3, 0x0

    .line 353
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 354
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/IConnStrategy;

    .line 355
    .local v6, "strategy":Lanet/channel/strategy/IConnStrategy;
    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getRetryTimes()I

    move-result v5

    .line 356
    .local v5, "maxRetry":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v4, v5, :cond_2

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 358
    new-instance v0, Lc8/AJ;

    invoke-virtual {p0}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8, v6}, Lc8/AJ;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    .line 359
    .local v0, "connInfo":Lc8/AJ;
    iput v4, v0, Lc8/AJ;->retryTime:I

    .line 360
    iput v5, v0, Lc8/AJ;->maxRetryTime:I

    .line 361
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "connInfo":Lc8/AJ;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private registerEvent(Lanet/channel/Session;Lc8/kJ;JLjava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "connCb"    # Lc8/kJ;
    .param p3, "start"    # J
    .param p5, "seq"    # Ljava/lang/String;

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 438
    :goto_0
    return-void

    .line 388
    :cond_0
    sget-object v0, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    new-instance v1, Lc8/eJ;

    invoke-direct {v1, p0, p2, p3, p4}, Lc8/eJ;-><init>(Lc8/lJ;Lc8/kJ;J)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->registerEventcb(ILc8/FJ;)V

    .line 423
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v1}, Lanet/channel/entity/EventType;->getType()I

    move-result v1

    or-int/2addr v0, v1

    new-instance v1, Lc8/fJ;

    invoke-direct {v1, p0, p1}, Lc8/fJ;-><init>(Lc8/lJ;Lanet/channel/Session;)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->registerEventcb(ILc8/FJ;)V

    goto :goto_0
.end method

.method private sendConnectInfoBroadCastToAccs(Lanet/channel/Session;ILjava/lang/String;)V
    .locals 8
    .param p1, "s"    # Lanet/channel/Session;
    .param p2, "errorCode"    # I
    .param p3, "errorDetail"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 519
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v4, p0, Lc8/lJ;->sessionInfo:Lc8/cJ;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/lJ;->sessionInfo:Lc8/cJ;

    iget-boolean v4, v4, Lc8/cJ;->isAccs:Z

    if-eqz v4, :cond_0

    .line 528
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string/jumbo v4, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string/jumbo v4, "command"

    const/16 v5, 0x67

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    const-string/jumbo v4, "host"

    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v4, "is_center_host"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    invoke-virtual {p1}, Lanet/channel/Session;->isAvailable()Z

    move-result v0

    .line 536
    .local v0, "available":Z
    if-nez v0, :cond_2

    .line 537
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string/jumbo v4, "errorDetail"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    :cond_2
    const-string/jumbo v4, "connect_avail"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    const-string/jumbo v4, "type_inapp"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v0    # "available":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 544
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "sendConnectInfoBroadCastToAccs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setConnecting(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-boolean p1, p0, Lc8/lJ;->isConnecting:Z

    .line 77
    if-nez p1, :cond_1

    .line 78
    iget-object v0, p0, Lc8/lJ;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/lJ;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 80
    iput-object v2, p0, Lc8/lJ;->timeoutTask:Ljava/util/concurrent/Future;

    .line 82
    :cond_0
    iput-object v2, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public await(J)V
    .locals 11
    .param p1, "timeoutMs"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 480
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "[await]"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "timeoutMs"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 499
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v5, p0, Lc8/lJ;->locked:Ljava/lang/Object;

    monitor-enter v5

    .line 486
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, p1

    .line 487
    .local v2, "timeout":J
    :goto_1
    iget-boolean v4, p0, Lc8/lJ;->isConnecting:Z

    if-eqz v4, :cond_1

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 489
    .local v0, "cur":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 492
    iget-object v4, p0, Lc8/lJ;->locked:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 499
    .end local v0    # "cur":J
    .end local v2    # "timeout":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 496
    .restart local v2    # "timeout":J
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lc8/lJ;->isConnecting:Z

    if-eqz v4, :cond_2

    .line 497
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 499
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected closeSessions(Z)V
    .locals 10
    .param p1, "autoCreate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 442
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "closeSessions"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "host"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "autoCreate"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    if-nez p1, :cond_0

    iget-object v3, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    iput-boolean v9, v3, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 446
    iget-object v3, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v3, v9}, Lanet/channel/Session;->close(Z)V

    .line 448
    :cond_0
    iget-object v3, p0, Lc8/lJ;->sessionPool:Lc8/dJ;

    invoke-virtual {v3, p0}, Lc8/dJ;->getSessions(Lc8/lJ;)Ljava/util/List;

    move-result-object v2

    .line 449
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v2, :cond_2

    .line 450
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    .line 452
    .local v1, "session":Lanet/channel/Session;
    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v1, p1}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    .line 457
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "session":Lanet/channel/Session;
    :cond_2
    return-void
.end method

.method public getConnectingType()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    .line 504
    .local v0, "s":Lanet/channel/Session;
    if-eqz v0, :cond_0

    .line 505
    iget-object v1, v0, Lanet/channel/Session;->mConnType:Lc8/BJ;

    invoke-virtual {v1}, Lc8/BJ;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v1

    .line 507
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method protected reCreateSession(Ljava/lang/String;)V
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 460
    const-string/jumbo v0, "awcn.SessionRequest"

    const-string/jumbo v1, "reCreateSession"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "host"

    aput-object v4, v2, v3

    iget-object v3, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, p1, v2}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0, v5}, Lc8/lJ;->closeSessions(Z)V

    .line 462
    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "seq"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lanet/channel/NoNetworkException;,
            Lanet/channel/NoAvailStrategyException;
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/lJ;->sessionPool:Lc8/dJ;

    invoke-virtual {v4, p0, p2}, Lc8/dJ;->getSession(Lc8/lJ;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v2

    .line 121
    .local v2, "session":Lanet/channel/Session;
    if-eqz v2, :cond_0

    .line 122
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "Available Session exist!!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, p3, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    const/4 v4, 0x0

    invoke-static {v4}, Lc8/bM;->createSequenceNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 128
    :cond_1
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "SessionRequest start"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p2, v6, v7

    invoke-static {v4, v5, p3, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-boolean v4, p0, Lc8/lJ;->isConnecting:Z

    if-eqz v4, :cond_2

    .line 130
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "session is connecting, return"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, p3, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v2    # "session":Lanet/channel/Session;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 133
    .restart local v2    # "session":Lanet/channel/Session;
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v4}, Lc8/lJ;->setConnecting(Z)V

    .line 134
    new-instance v4, Lc8/jJ;

    invoke-direct {v4, p0, p3}, Lc8/jJ;-><init>(Lc8/lJ;Ljava/lang/String;)V

    const-wide/16 v6, 0x2d

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v6, v7, v5}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lc8/lJ;->timeoutTask:Ljava/util/concurrent/Future;

    .line 135
    new-instance v4, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v4}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v4, p0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    .line 136
    iget-object v4, p0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lanet/channel/statist/SessionConnStat;->start:J

    .line 138
    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 139
    const/4 v4, 0x1

    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "network is not available, can\'t create session"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "NetworkStatusHelper.isConnected()"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, p3, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_3
    invoke-direct {p0}, Lc8/lJ;->finish()V

    .line 143
    new-instance v4, Lanet/channel/NoNetworkException;

    invoke-direct {v4, p0}, Lanet/channel/NoNetworkException;-><init>(Lc8/lJ;)V

    throw v4

    .line 145
    :cond_4
    invoke-direct {p0, p2, p3}, Lc8/lJ;->getAvailStrategy(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "strategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "no avalible strategy, can\'t create session"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/lJ;->mHost:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p2, v6, v7

    invoke-static {v4, v5, p3, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Lc8/lJ;->finish()V

    .line 150
    new-instance v4, Lanet/channel/NoAvailStrategyException;

    invoke-direct {v4, p0}, Lanet/channel/NoAvailStrategyException;-><init>(Lc8/lJ;)V

    throw v4

    .line 153
    :cond_5
    invoke-direct {p0, v3, p3}, Lc8/lJ;->getConnInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 156
    .local v1, "connInfoList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/entity/ConnInfo;>;"
    const/4 v4, 0x0

    :try_start_3
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/AJ;

    .line 157
    .local v0, "connInfo":Lc8/AJ;
    new-instance v4, Lc8/iJ;

    invoke-direct {v4, p0, p1, v1, v0}, Lc8/iJ;-><init>(Lc8/lJ;Landroid/content/Context;Ljava/util/List;Lc8/AJ;)V

    invoke-virtual {v0}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v0, v4, v5}, Lc8/lJ;->createSession(Landroid/content/Context;Lc8/AJ;Lc8/kJ;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 159
    .end local v0    # "connInfo":Lc8/AJ;
    :catch_0
    move-exception v4

    :try_start_4
    invoke-direct {p0}, Lc8/lJ;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
