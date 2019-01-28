.class public Lc8/tK;
.super Lanet/channel/Session;
.source "HttpSession.java"


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/AJ;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lc8/AJ;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lc8/AJ;)V

    .line 38
    iget-object v0, p0, Lc8/tK;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lc8/tK;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/tK;->mHost:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lc8/BJ;->HTTPS:Lc8/BJ;

    :goto_0
    iput-object v0, p0, Lc8/tK;->mConnType:Lc8/BJ;

    .line 43
    :cond_0
    :goto_1
    return-void

    .line 39
    :cond_1
    sget-object v0, Lc8/BJ;->HTTP:Lc8/BJ;

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {}, Lc8/PI;->isHttpsSniEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tK;->mConnType:Lc8/BJ;

    sget-object v1, Lc8/BJ;->HTTPS:Lc8/BJ;

    invoke-virtual {v0, v1}, Lc8/BJ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lc8/dM;

    iget-object v1, p0, Lc8/tK;->mRealHost:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc8/dM;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/tK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1
.end method

.method static synthetic access$000(Lc8/tK;Lanet/channel/Session$Status;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lc8/tK;
    .param p1, "x1"    # Lanet/channel/Session$Status;
    .param p2, "x2"    # Lc8/EJ;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/tK;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    return-void
.end method

.method static synthetic access$100(Lc8/tK;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lc8/tK;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lc8/EJ;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/tK;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    return-void
.end method

.method static synthetic access$200(Lc8/tK;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lc8/tK;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lc8/EJ;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/tK;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    return-void
.end method

.method static synthetic access$300(Lc8/tK;Lc8/eK;I)V
    .locals 0
    .param p0, "x0"    # Lc8/tK;
    .param p1, "x1"    # Lc8/eK;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/tK;->handleResponseCode(Lc8/eK;I)V

    return-void
.end method

.method static synthetic access$400(Lc8/tK;Lc8/eK;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/tK;
    .param p1, "x1"    # Lc8/eK;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/tK;->handleResponseHeaders(Lc8/eK;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/tK;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 88
    return-void
.end method

.method public close(Z)V
    .locals 1
    .param p1, "autoReCreate"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/tK;->autoReCreate:Z

    .line 93
    invoke-virtual {p0}, Lc8/tK;->close()V

    .line 94
    return-void
.end method

.method public connect()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 53
    :try_start_0
    const-string/jumbo v3, "awcn.HttpSession"

    const-string/jumbo v4, "HttpSession connect"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/tK;->mHost:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v3, Lc8/cK;

    invoke-direct {v3}, Lc8/cK;-><init>()V

    iget-object v4, p0, Lc8/tK;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/cK;->setUrl(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    iget-object v4, p0, Lc8/tK;->mSeq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/cK;->setSeq(Ljava/lang/String;)Lc8/cK;

    move-result-object v3

    iget v4, p0, Lc8/tK;->mConnTimeout:I

    int-to-float v4, v4

    invoke-static {}, Lc8/eM;->getNetworkTimeFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lc8/cK;->setConnectTimeout(I)Lc8/cK;

    move-result-object v3

    iget v4, p0, Lc8/tK;->mReqTimeout:I

    int-to-float v4, v4

    invoke-static {}, Lc8/eM;->getNetworkTimeFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lc8/cK;->setReadTimeout(I)Lc8/cK;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/cK;->setRedirectEnable(Z)Lc8/cK;

    move-result-object v0

    .line 60
    .local v0, "builder":Lc8/cK;
    iget-object v3, p0, Lc8/tK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lc8/tK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v3}, Lc8/cK;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lc8/cK;

    .line 63
    :cond_0
    invoke-virtual {v0}, Lc8/cK;->build()Lc8/eK;

    move-result-object v2

    .line 64
    .local v2, "request":Lc8/eK;
    iget-object v3, p0, Lc8/tK;->mIp:Ljava/lang/String;

    iget v4, p0, Lc8/tK;->mPort:I

    invoke-virtual {v2, v3, v4}, Lc8/eK;->setDnsOptimize(Ljava/lang/String;I)V

    .line 65
    new-instance v3, Lc8/qK;

    invoke-direct {v3, p0, v2}, Lc8/qK;-><init>(Lc8/tK;Lc8/eK;)V

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "builder":Lc8/cK;
    .end local v2    # "request":Lc8/eK;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "awcn.HttpSession"

    const-string/jumbo v4, "HTTP connect fail."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v10, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lc8/tK;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(Lc8/eK;Lc8/VI;)Lc8/ZJ;
    .locals 12
    .param p1, "request"    # Lc8/eK;
    .param p2, "cb"    # Lc8/VI;

    .prologue
    const/16 v11, -0x65

    const/16 v10, -0x66

    .line 103
    sget-object v1, Lc8/aK;->NULL:Lc8/aK;

    .line 105
    .local v1, "ret":Lc8/ZJ;
    if-eqz p1, :cond_3

    iget-object v3, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    .line 106
    .local v3, "rs":Lanet/channel/statist/RequestStatistic;
    :goto_0
    iget-object v5, p0, Lc8/tK;->mConnType:Lc8/BJ;

    invoke-virtual {v3, v5}, Lanet/channel/statist/RequestStatistic;->setConnType(Lc8/BJ;)V

    .line 107
    iget-wide v6, v3, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lanet/channel/statist/RequestStatistic;->start:J

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 112
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    invoke-static {v10}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v10, v5, v3}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object v2, v1

    .line 172
    .end local v1    # "ret":Lc8/ZJ;
    .local v2, "ret":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 105
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "rs":Lanet/channel/statist/RequestStatistic;
    .restart local v1    # "ret":Lc8/ZJ;
    :cond_3
    new-instance v3, Lanet/channel/statist/RequestStatistic;

    iget-object v5, p0, Lc8/tK;->mRealHost:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .restart local v3    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lc8/eK;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lc8/tK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_5

    .line 119
    invoke-virtual {p1}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v5

    iget-object v6, p0, Lc8/tK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v5, v6}, Lc8/cK;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lc8/cK;

    move-result-object v5

    invoke-virtual {v5}, Lc8/cK;->build()Lc8/eK;

    move-result-object p1

    .line 121
    :cond_5
    iget-object v5, p0, Lc8/tK;->mIp:Ljava/lang/String;

    iget v6, p0, Lc8/tK;->mPort:I

    invoke-virtual {p1, v5, v6}, Lc8/eK;->setDnsOptimize(Ljava/lang/String;I)V

    .line 122
    iget-object v5, p0, Lc8/tK;->mConnType:Lc8/BJ;

    invoke-virtual {v5}, Lc8/BJ;->isSSL()Z

    move-result v5

    invoke-virtual {p1, v5}, Lc8/eK;->setUrlScheme(Z)V

    .line 123
    iget-object v5, p0, Lc8/tK;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v5, :cond_7

    .line 124
    iget-object v5, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v6, p0, Lc8/tK;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v6

    iput v6, v5, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 125
    iget-object v5, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v6, p0, Lc8/tK;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v6

    iput v6, v5, Lanet/channel/statist/RequestStatistic;->ipType:I

    .line 130
    :goto_2
    iget-object v5, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v6, p0, Lc8/tK;->unit:Ljava/lang/String;

    iput-object v6, v5, Lanet/channel/statist/RequestStatistic;->unit:Ljava/lang/String;

    .line 132
    move-object v0, p1

    .line 133
    .local v0, "req":Lc8/eK;
    new-instance v2, Lc8/aK;

    new-instance v5, Lc8/sK;

    invoke-direct {v5, p0, v0, p2, v3}, Lc8/sK;-><init>(Lc8/tK;Lc8/eK;Lc8/VI;Lanet/channel/statist/RequestStatistic;)V

    invoke-static {p1}, Lc8/ZL;->lookup(Lc8/eK;)I

    move-result v6

    invoke-static {v5, v6}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lc8/aK;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .end local v1    # "ret":Lc8/ZJ;
    .local v2, "ret":Lc8/ZJ;
    move-object v1, v2

    .end local v0    # "req":Lc8/eK;
    .end local v2    # "ret":Lc8/ZJ;
    .restart local v1    # "ret":Lc8/ZJ;
    :cond_6
    :goto_3
    move-object v2, v1

    .line 172
    .local v2, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 127
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_7
    iget-object v5, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v6, 0x1

    iput v6, v5, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 128
    iget-object v5, p1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v6, 0x1

    iput v6, v5, Lanet/channel/statist/RequestStatistic;->ipType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 167
    :catch_0
    move-exception v4

    .line 168
    .local v4, "t":Ljava/lang/Throwable;
    if-eqz p2, :cond_6

    .line 169
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lc8/PL;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v11, v5, v3}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_3
.end method
