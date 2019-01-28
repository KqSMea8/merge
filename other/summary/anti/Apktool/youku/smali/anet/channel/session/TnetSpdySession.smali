.class public Lanet/channel/session/TnetSpdySession;
.super Lanet/channel/Session;
.source "TnetSpdySession.java"

# interfaces
.implements Lc8/yXp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xK;
    }
.end annotation


# instance fields
.field protected auth:Lc8/UI;

.field protected dataFrameCb:Lc8/SI;

.field public heartbeat:Lc8/NJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public iSecurity:Lc8/gK;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected mAgent:Lc8/CXp;

.field protected mAppkey:Ljava/lang/String;

.field public mConnectedTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public volatile mHasUnrevPing:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public mLastPingTime:J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected mSession:Lorg/android/spdy/SpdySession;

.field private requestTimeoutCount:I

.field protected tnetPublicKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/AJ;Lc8/RI;Lc8/cJ;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connInfo"    # Lc8/AJ;
    .param p3, "config"    # Lc8/RI;
    .param p4, "sessionInfo"    # Lc8/cJ;
    .param p5, "tnetPublicKey"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lc8/AJ;)V

    .line 70
    iput-boolean v3, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 74
    iput v3, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    .line 77
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    .line 78
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    .line 79
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->auth:Lc8/UI;

    .line 80
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    .line 91
    invoke-virtual {p3}, Lc8/RI;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 92
    invoke-virtual {p3}, Lc8/RI;->getSecurity()Lc8/gK;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    .line 93
    invoke-direct {p0}, Lanet/channel/session/TnetSpdySession;->initSpdyAgent()V

    .line 94
    if-ltz p5, :cond_1

    .line 95
    iput p5, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    .line 100
    :goto_0
    if-eqz p4, :cond_0

    .line 101
    iget-object v0, p4, Lc8/cJ;->dataFrameCb:Lc8/SI;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    .line 102
    iget-object v0, p4, Lc8/cJ;->auth:Lc8/UI;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lc8/UI;

    .line 103
    iget-boolean v0, p4, Lc8/cJ;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->isKL:J

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->autoReCreate:Z

    .line 106
    iget-object v0, p4, Lc8/cJ;->heartbeat:Lc8/NJ;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    .line 107
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lc8/MJ;->getHeartbeatFactory()Lc8/OJ;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/OJ;->createHeartbeat(Lanet/channel/Session;)Lc8/NJ;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    .line 112
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lc8/BJ;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    invoke-interface {v1}, Lc8/gK;->isSecOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc8/BJ;->getTnetPublicKey(Z)I

    move-result v0

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    goto :goto_0
.end method

.method public static synthetic access$000(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lc8/EJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    return-void
.end method

.method public static synthetic access$100(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lanet/channel/Session$Status;
    .param p2, "x2"    # Lc8/EJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    return-void
.end method

.method public static synthetic access$1000(Lanet/channel/session/TnetSpdySession;Lc8/eK;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lc8/eK;
    .param p2, "x2"    # Ljava/util/Map;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseHeaders(Lc8/eK;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$200(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lanet/channel/Session$Status;
    .param p2, "x2"    # Lc8/EJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    return-void
.end method

.method public static synthetic access$300(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$400(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lc8/EJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    return-void
.end method

.method public static synthetic access$502(Lanet/channel/session/TnetSpdySession;I)I
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return p1
.end method

.method public static synthetic access$504(Lanet/channel/session/TnetSpdySession;)I
    .locals 1
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return v0
.end method

.method public static synthetic access$600(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .locals 1
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object v0
.end method

.method public static synthetic access$800(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lc8/EJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    return-void
.end method

.method public static synthetic access$900(Lanet/channel/session/TnetSpdySession;Lc8/eK;I)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/session/TnetSpdySession;
    .param p1, "x1"    # Lc8/eK;
    .param p2, "x2"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseCode(Lc8/eK;I)V

    return-void
.end method

.method private initSpdyAgent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 445
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lc8/CXp;->enableDebug:Z

    .line 446
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    sget-object v2, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v3, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v2, v3}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lc8/CXp;

    .line 447
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    invoke-interface {v1}, Lc8/gK;->isSecOff()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lc8/CXp;

    new-instance v2, Lc8/wK;

    invoke-direct {v2, p0}, Lc8/wK;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v1, v2}, Lc8/CXp;->setAccsSslCallback(Lc8/tXp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "Init failed."

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDataFrameException(IIZLjava/lang/String;)V
    .locals 1
    .param p1, "dataId"    # I
    .param p2, "errorId"    # I
    .param p3, "needRetry"    # Z
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/SI;->onException(IIZLjava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lc8/UI;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lc8/UI;

    new-instance v1, Lc8/vK;

    invoke-direct {v1, p0}, Lc8/vK;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-interface {v0, p0, v1}, Lc8/UI;->auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v0, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 429
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 430
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v0}, Lc8/NJ;->start()V

    goto :goto_0
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "arg1"    # I

    .prologue
    .line 501
    return-void
.end method

.method public close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 300
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "force close!"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTING:Lanet/channel/Session$Status;

    invoke-virtual {p0, v0, v6}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 303
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v0}, Lc8/NJ;->stop()V

    .line 305
    iput-object v6, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    .line 309
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 257
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v2, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v1, v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lc8/CXp;

    if-eqz v1, :cond_0

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "sessionId":Ljava/lang/String;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "[connect]"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "connect "

    aput-object v7, v4, v5

    const/4 v5, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v7, "sessionId"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v7, "SpdyProtocol,"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lc8/BJ;

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v7, "proxyIp,"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v7, "proxyPort,"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    iget v7, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v0, Lc8/AXp;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    iget v2, p0, Lanet/channel/session/TnetSpdySession;->mPort:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    iget v5, p0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lc8/BJ;

    invoke-virtual {v7}, Lc8/BJ;->getTnetConType()I

    move-result v8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lc8/AXp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lc8/yXp;I)V

    .line 267
    .local v0, "info":Lc8/AXp;
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->mConnTimeout:I

    int-to-float v1, v1

    invoke-static {}, Lc8/eM;->getNetworkTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc8/AXp;->setConnectionTimeoutMs(I)V

    .line 268
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    invoke-virtual {v0, v1}, Lc8/AXp;->setPubKeySeqNum(I)V

    .line 269
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lc8/CXp;

    invoke-virtual {v1, v0}, Lc8/CXp;->createSession(Lc8/AXp;)Lorg/android/spdy/SpdySession;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    .line 271
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v1

    if-le v1, v10, :cond_2

    .line 272
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "get session ref count > 1!!!"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    new-instance v2, Lc8/CJ;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3}, Lc8/CJ;-><init>(Lanet/channel/entity/EventType;)V

    invoke-virtual {p0, v1, v2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 274
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->auth()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 289
    .end local v0    # "info":Lc8/AXp;
    .end local v6    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 290
    .local v9, "t":Ljava/lang/Throwable;
    sget-object v1, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v12}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 291
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "connect exception "

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v9, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 278
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v0    # "info":Lc8/AXp;
    .restart local v6    # "sessionId":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v1, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 283
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v10

    :goto_1
    iput v1, v2, Lanet/channel/statist/SessionStatistic;->isProxy:I

    .line 284
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v2, "false"

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v2

    iput-boolean v2, v1, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    .line 287
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    move v1, v11

    .line 283
    goto :goto_1
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lc8/uK;

    invoke-direct {v0, p0}, Lc8/uK;-><init>(Lanet/channel/session/TnetSpdySession;)V

    return-object v0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 10
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, "ticket":[B
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    const-string/jumbo v4, "awcn.TnetSpdySession"

    const-string/jumbo v5, "get sslticket host is null"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v9, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v2

    .line 607
    .end local v2    # "ticket":[B
    .local v3, "ticket":[B
    :goto_0
    return-object v3

    .line 602
    .end local v3    # "ticket":[B
    .restart local v2    # "ticket":[B
    :cond_0
    :try_start_0
    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "accs_ssl_key2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc8/gK;->getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 607
    .end local v2    # "ticket":[B
    .restart local v3    # "ticket":[B
    goto :goto_0

    .line 603
    .end local v3    # "ticket":[B
    .restart local v2    # "ticket":[B
    :catch_0
    move-exception v1

    .line 604
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "awcn.TnetSpdySession"

    const-string/jumbo v5, "getSSLMeta"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v9, v1, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDisconnect()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 320
    return-void
.end method

.method public ping(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/16 v9, -0x450

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 350
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "ping"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "host"

    aput-object v6, v5, v8

    iget-object v6, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "thread"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_0
    if-eqz p1, :cond_3

    .line 356
    :try_start_0
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v2, :cond_4

    .line 357
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v3, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v3, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v2, v3, :cond_3

    .line 358
    :cond_1
    sget-object v2, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    .line 359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 360
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v2, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 361
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 362
    const/4 v2, 0x1

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    const-string/jumbo v2, "awcn.TnetSpdySession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " submit ping ms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->setPingTimeout()V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 369
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v2}, Lc8/NJ;->reSchedule()V

    .line 394
    :cond_3
    :goto_0
    return-void

    .line 375
    :cond_4
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz v2, :cond_5

    .line 376
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v3, "session null"

    iput-object v3, v2, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 378
    :cond_5
    const-string/jumbo v2, "awcn.TnetSpdySession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " session null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->close()V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lorg/android/spdy/SpdyErrorException;
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v2

    if-eq v2, v9, :cond_6

    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v2

    const/16 v3, -0x44f

    if-ne v2, v3, :cond_7

    .line 385
    :cond_6
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "Send request on closed session!!!"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    new-instance v1, Lc8/DJ;

    sget-object v2, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string/jumbo v3, "Session is closed!"

    invoke-direct {v1, v2, v8, v9, v3}, Lc8/DJ;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 388
    .local v1, "event":Lc8/DJ;
    sget-object v2, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v2, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 390
    .end local v1    # "event":Lc8/DJ;
    :cond_7
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "ping"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    .end local v0    # "e":Lorg/android/spdy/SpdyErrorException;
    :catch_1
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "ping"

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 9
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 612
    const/4 v1, -0x1

    .line 613
    .local v1, "ret":I
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    .line 622
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 618
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lc8/gK;

    iget-object v6, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accs_ssl_key2_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p2}, Lc8/gK;->saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    :goto_1
    move v2, v1

    .line 622
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 618
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "awcn.TnetSpdySession"

    const-string/jumbo v6, "putSSLMeta"

    const/4 v7, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public request(Lc8/eK;Lc8/VI;)Lc8/ZJ;
    .locals 23
    .param p1, "request"    # Lc8/eK;
    .param p2, "cb"    # Lc8/VI;

    .prologue
    .line 117
    sget-object v19, Lc8/fK;->NULL:Lc8/fK;

    .line 119
    .local v19, "ret":Lc8/ZJ;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v21, v0

    .line 120
    .local v21, "rs":Lanet/channel/statist/RequestStatistic;
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mConnType:Lc8/BJ;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lanet/channel/statist/RequestStatistic;->setConnType(Lc8/BJ;)V

    .line 121
    move-object/from16 v0, v21

    iget-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v21

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lanet/channel/session/TnetSpdySession;->mPort:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v6

    move-object/from16 v0, v21

    iput v6, v0, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 126
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v6

    move-object/from16 v0, v21

    iput v6, v0, Lanet/channel/statist/RequestStatistic;->ipType:I

    .line 127
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->unit:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v6, v0, Lanet/channel/statist/RequestStatistic;->unit:Ljava/lang/String;

    .line 132
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 133
    :cond_1
    if-eqz p2, :cond_2

    .line 134
    const/16 v6, -0x66

    const/16 v7, -0x66

    invoke-static {v7}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v7, v1}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object/from16 v20, v19

    .line 205
    .end local v19    # "ret":Lc8/ZJ;
    .local v20, "ret":Ljava/lang/Object;
    :goto_1
    return-object v20

    .line 119
    .end local v20    # "ret":Ljava/lang/Object;
    .end local v21    # "rs":Lanet/channel/statist/RequestStatistic;
    .restart local v19    # "ret":Lc8/ZJ;
    :cond_3
    new-instance v21, Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v7}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .restart local v21    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v7, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v7, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v6, v7, :cond_e

    .line 141
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mConnType:Lc8/BJ;

    invoke-virtual {v6}, Lc8/BJ;->isSSL()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lc8/eK;->setUrlScheme(Z)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getUrl()Ljava/net/URL;

    move-result-object v5

    .line 143
    .local v5, "realURL":Ljava/net/URL;
    const/4 v6, 0x2

    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 144
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request URL"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request Method"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "request headers"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    if-gtz v6, :cond_a

    .line 151
    :cond_7
    new-instance v4, Lc8/GXp;

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getReadTimeout()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getConnectTimeout()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lc8/GXp;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 162
    .local v4, "req":Lc8/GXp;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v16

    .line 163
    .local v16, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "Host"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lc8/GXp;->addHeaders(Ljava/util/Map;)V

    .line 165
    const-string/jumbo v6, ":host"

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/GXp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getBodyBytes()[B

    move-result-object v18

    .line 173
    .local v18, "requestBody":[B
    new-instance v17, Lc8/EXp;

    invoke-direct/range {v17 .. v18}, Lc8/EXp;-><init>([B)V

    .line 175
    .local v17, "provider":Lc8/EXp;
    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 176
    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p1

    iget-object v7, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v7, Lanet/channel/statist/RequestStatistic;->sendStart:J

    move-object/from16 v0, p1

    iget-object v7, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v7, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 177
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    new-instance v7, Lc8/xK;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lc8/xK;-><init>(Lanet/channel/session/TnetSpdySession;Lc8/eK;Lc8/VI;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v6, v4, v0, v1, v7}, Lorg/android/spdy/SpdySession;->submitRequest(Lc8/GXp;Lc8/EXp;Ljava/lang/Object;Lc8/JXp;)I

    move-result v22

    .line 178
    .local v22, "streamId":I
    const/4 v6, 0x1

    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 179
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, ""

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "streamId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_8
    new-instance v20, Lc8/fK;

    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v6, v1, v7}, Lc8/fK;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v19    # "ret":Lc8/ZJ;
    .local v20, "ret":Lc8/ZJ;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v8, v6, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v8, v6, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v6, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 186
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v6, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget-object v6, v0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v6}, Lc8/NJ;->reSchedule()V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_9
    move-object/from16 v19, v20

    .end local v4    # "req":Lc8/GXp;
    .end local v5    # "realURL":Ljava/net/URL;
    .end local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "provider":Lc8/EXp;
    .end local v18    # "requestBody":[B
    .end local v20    # "ret":Lc8/ZJ;
    .end local v22    # "streamId":I
    .restart local v19    # "ret":Lc8/ZJ;
    :goto_4
    move-object/from16 v20, v19

    .line 205
    .local v20, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 155
    .end local v20    # "ret":Ljava/lang/Object;
    .restart local v5    # "realURL":Ljava/net/URL;
    :cond_a
    :try_start_2
    new-instance v4, Lc8/GXp;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getReadTimeout()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getConnectTimeout()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct/range {v4 .. v14}, Lc8/GXp;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V

    .restart local v4    # "req":Lc8/GXp;
    goto/16 :goto_2

    .line 167
    .restart local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    new-instance v16, Ljava/util/HashMap;

    .end local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 168
    .restart local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, ":host"

    const-string/jumbo v7, "Host"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lc8/GXp;->addHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 192
    .end local v4    # "req":Lc8/GXp;
    .end local v5    # "realURL":Ljava/net/URL;
    .end local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 193
    .local v15, "e":Lorg/android/spdy/SpdyErrorException;
    :goto_5
    invoke-virtual {v15}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v7, -0x450

    if-eq v6, v7, :cond_c

    invoke-virtual {v15}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v7, -0x44f

    if-ne v6, v7, :cond_d

    .line 195
    :cond_c
    const-string/jumbo v6, "awcn.TnetSpdySession"

    const-string/jumbo v7, "Send request on closed session!!!"

    move-object/from16 v0, p0

    iget-object v8, v0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    sget-object v6, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    new-instance v7, Lc8/DJ;

    sget-object v8, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const/4 v9, 0x0

    const/16 v10, -0x450

    const-string/jumbo v11, "Session is closed!"

    invoke-direct {v7, v8, v9, v10, v11}, Lc8/DJ;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 199
    :cond_d
    const/16 v6, -0x12c

    const/16 v7, -0x12c

    invoke-virtual {v15}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/PL;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v7, v1}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto/16 :goto_4

    .line 190
    .end local v15    # "e":Lorg/android/spdy/SpdyErrorException;
    :cond_e
    const/16 v6, -0x12d

    const/16 v7, -0x12d

    :try_start_3
    invoke-static {v7}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v8}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_3
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 203
    :catch_1
    move-exception v6

    :goto_6
    const/16 v6, -0x65

    const/16 v7, -0x65

    invoke-static {v7}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v7, v1}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto/16 :goto_4

    .end local v19    # "ret":Lc8/ZJ;
    .restart local v4    # "req":Lc8/GXp;
    .restart local v5    # "realURL":Ljava/net/URL;
    .restart local v16    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "provider":Lc8/EXp;
    .restart local v18    # "requestBody":[B
    .local v20, "ret":Lc8/ZJ;
    .restart local v22    # "streamId":I
    :catch_2
    move-exception v6

    move-object/from16 v19, v20

    .end local v20    # "ret":Lc8/ZJ;
    .restart local v19    # "ret":Lc8/ZJ;
    goto :goto_6

    .line 192
    .end local v19    # "ret":Lc8/ZJ;
    .restart local v20    # "ret":Lc8/ZJ;
    :catch_3
    move-exception v15

    move-object/from16 v19, v20

    .end local v20    # "ret":Lc8/ZJ;
    .restart local v19    # "ret":Lc8/ZJ;
    goto :goto_5
.end method

.method public sendCustomFrame(I[BI)V
    .locals 12
    .param p1, "dataId"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # I

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 215
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "sendCustomFrame"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_4

    .line 221
    if-eqz p2, :cond_2

    array-length v0, p2

    const/16 v1, 0x4000

    if-le v0, v1, :cond_2

    .line 222
    const/16 v0, -0x12f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Lorg/android/spdy/SpdyErrorException;
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "sendCustomFrame error"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 239
    const/16 v0, -0x12c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SpdyErrorException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v9, v1}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v6    # "e":Lorg/android/spdy/SpdyErrorException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    const/4 v3, 0x0

    if-nez p2, :cond_3

    move v4, v7

    :goto_1
    move v1, p1

    move v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 226
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 227
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 229
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v0}, Lc8/NJ;->reSchedule()V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 240
    :catch_1
    move-exception v6

    .line 241
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "sendCustomFrame error"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 242
    const/16 v0, -0x65

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v9, v1}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    array-length v4, p2

    goto :goto_1

    .line 234
    :cond_4
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "sendCustomFrame"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendCustomFrame con invalid mStatus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lanet/channel/session/TnetSpdySession;->mStatus:Lanet/channel/Session$Status;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const/16 v0, -0x12d

    const/4 v1, 0x1

    const-string/jumbo v2, "session invalid"

    invoke-direct {p0, p1, v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "error"    # I

    .prologue
    const/4 v6, 0x1

    .line 588
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "spdyCustomControlFrameFailCallback"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    const-string/jumbo v0, "tnet error"

    invoke-direct {p0, p3, p4, v6, v0}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    .line 590
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 11
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    .prologue
    .line 506
    const-string/jumbo v5, "awcn.TnetSpdySession"

    const-string/jumbo v6, "[spdyCustomControlFrameRecvCallback]"

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "len"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "frameCb"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    const/4 v5, 0x1

    invoke-static {v5}, Lc8/KL;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    const-string/jumbo v4, ""

    .line 509
    .local v4, "str":Ljava/lang/String;
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ge v0, v5, :cond_1

    .line 510
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p7, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const-string/jumbo v5, "awcn.TnetSpdySession"

    const/4 v6, 0x0

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "str"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v7, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    .end local v3    # "i":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    if-eqz v5, :cond_2

    .line 518
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lc8/SI;

    move-object/from16 v0, p7

    invoke-interface {v5, p0, v0, p3, p4}, Lc8/SI;->onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V

    .line 524
    :goto_1
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v6, v5, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    .line 525
    return-void

    .line 520
    :cond_2
    const-string/jumbo v5, "awcn.TnetSpdySession"

    const-string/jumbo v6, "AccsFrameCb is null"

    iget-object v7, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    const/16 v5, -0x69

    const/4 v6, 0x0

    const-string/jumbo v7, "rt"

    invoke-direct {v2, v5, v6, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v2, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v5

    invoke-interface {v5, v2}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_1
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "unique_id"    # J
    .param p4, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 489
    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "ping receive"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Host"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string/jumbo v4, "id"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_1
    iput-boolean v6, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 496
    sget-object v0, Lanet/channel/entity/EventType;->PIND_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V

    goto :goto_0
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 11
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 552
    const-string/jumbo v3, "awcn.TnetSpdySession"

    const-string/jumbo v4, "spdySessionCloseCallback"

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, " errorCode:"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v3}, Lc8/NJ;->stop()V

    .line 555
    iput-object v10, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    .line 559
    :cond_0
    if-eqz p1, :cond_1

    .line 560
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_1
    :goto_0
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v3, v3, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tnet close error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "errorDetail":Ljava/lang/String;
    :goto_1
    new-instance v2, Lc8/DJ;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3, v9, p4, v1}, Lc8/DJ;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 569
    .local v2, "event":Lc8/DJ;
    sget-object v3, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v3, v2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 571
    if-eqz p3, :cond_2

    .line 572
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v4, p3, Lorg/android/spdy/SuperviseConnectInfo;->reused_counter:I

    int-to-long v4, v4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 573
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v4, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v4, v4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 576
    :cond_2
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v3, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 577
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long v4, p4

    iput-wide v4, v3, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 580
    :cond_3
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lanet/channel/statist/SessionStatistic;->lastPingInterval:I

    .line 581
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v3, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 582
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v4}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lc8/yK;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 583
    return-void

    .line 562
    .end local v1    # "errorDetail":Ljava/lang/String;
    .end local v2    # "event":Lc8/DJ;
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.TnetSpdySession"

    const-string/jumbo v4, "[spdySessionCloseCallback]session clean up failed!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v10, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v4, v4, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v4, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 7
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "data"    # Lorg/android/spdy/SuperviseConnectInfo;

    .prologue
    .line 472
    new-instance v0, Lc8/CJ;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v0, v1}, Lc8/CJ;-><init>(Lanet/channel/entity/EventType;)V

    .line 473
    .local v0, "event":Lc8/CJ;
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lc8/CJ;->mConnectedTime:J

    .line 474
    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v1

    iput-wide v2, v0, Lc8/CJ;->mSSLTime:J

    .line 476
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->connectionTime:J

    .line 477
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslTime:J

    .line 478
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->doHandshakeTime:I

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sslCalTime:J

    .line 479
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lc8/FK;->getNetworkSubType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 481
    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 482
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->auth()V

    .line 484
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdySessionConnectCB connect"

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "connectTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "sslTime:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "error"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 532
    if-eqz p1, :cond_0

    .line 533
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    sget-object v1, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    new-instance v2, Lc8/EJ;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    const-string/jumbo v4, "tnet connect fail"

    invoke-direct {v2, v3, p2, v4}, Lc8/EJ;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 540
    const-string/jumbo v1, "awcn.TnetSpdySession"

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, " errorId:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v7, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p2

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 542
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iput v6, v1, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 543
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lc8/FK;->getNetworkSubType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 544
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {v1, v2}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 545
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {v2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lc8/yK;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 546
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "[spdySessionFailedError]session clean up failed!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v0, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
