.class public Lcom/taobao/accs/net/SpdyConnection;
.super Lcom/taobao/accs/net/BaseConnection;
.source "SpdyConnection.java"

# interfaces
.implements Lc8/JXp;
.implements Lc8/yXp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/SpdyConnection$NetworkThread;
    }
.end annotation


# static fields
.field private static final ACCS_CONN_TIMEOUT:I = 0x1d4c0

.field private static final CONN_TIMEOUT:I = 0x9c40

.field private static final DEFAULT_RETRY_TIME:I = 0x1388

.field private static final HTTP_STATUS:Ljava/lang/String; = ":status"

.field private static final MAX_RETRY_TIMES:I = 0x4

.field protected static final MAX_TIMEOUT_DATA:I = 0x3

.field private static final REQ_TIMEOUT:I = 0x13880

.field private static final TAG:Ljava/lang/String; = "SilenceConn_"

.field private static final nanoToMs:J = 0xf4240L


# instance fields
.field private lastPingTime:J

.field private lastPingTimeNano:J

.field private mAgent:Lc8/CXp;

.field private mCanUserProxy:Z

.field private mConnLock:Ljava/lang/Object;

.field private mConnStartTime:J

.field private mConnStartTimeNano:J

.field protected mConnTimoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mFinalUrl:Ljava/lang/String;

.field private mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

.field protected mIp:Ljava/lang/String;

.field private mLastConnectFail:Z

.field private mMessageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

.field protected mPort:I

.field private mProxy:Ljava/lang/String;

.field protected mProxyIp:Ljava/lang/String;

.field protected mProxyPort:I

.field private mRunning:Z

.field private mSession:Lorg/android/spdy/SpdySession;

.field private mSessionId:Ljava/lang/String;

.field private mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

.field private mStatus:I

.field private mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

.field private mUrl:Ljava/lang/String;

.field private sessionConnectInterval:I

.field private testUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/BaseConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    .line 91
    iput-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    .line 93
    iput-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/accs/net/SpdyConnection;->sessionConnectInterval:I

    .line 107
    iput-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->testUrl:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    .line 135
    new-instance v0, Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/accs/net/HttpDnsProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    .line 160
    invoke-direct {p0}, Lcom/taobao/accs/net/SpdyConnection;->initClient()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/accs/net/SpdyConnection;Lcom/taobao/accs/data/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/SpdyConnection;->clearRepeatControlCommand(Lcom/taobao/accs/data/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/accs/net/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/taobao/accs/net/SpdyConnection;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/taobao/accs/net/SpdyConnection;J)J
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/taobao/accs/net/SpdyConnection;)Lorg/android/spdy/SpdySession;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/taobao/accs/net/SpdyConnection;J)J
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTimeNano:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/taobao/accs/net/SpdyConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/SpdyConnection;->setHeartbeat(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/accs/net/SpdyConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/accs/net/SpdyConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/taobao/accs/net/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/accs/net/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    return p1
.end method

.method static synthetic access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/net/HttpDnsProvider;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/net/SpdyConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/SpdyConnection;->connect(Ljava/lang/String;)V

    return-void
.end method

.method private auth()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 485
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    if-nez v1, :cond_0

    .line 486
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 519
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "deviceId":Ljava/lang/String;
    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "encodeDeviceId":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getAppkey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "appSign":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->buildAuthUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 496
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " auth URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iput-object v11, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    .line 499
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v1, v6}, Lcom/taobao/accs/net/SpdyConnection;->checkParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " auth param error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->onAuthFail(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    .end local v6    # "appSign":Ljava/lang/String;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v8    # "encodeDeviceId":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 515
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " auth exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v2, v10, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 516
    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->onAuthFail(I)V

    goto/16 :goto_0

    .line 505
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v6    # "appSign":Ljava/lang/String;
    .restart local v7    # "deviceId":Ljava/lang/String;
    .restart local v8    # "encodeDeviceId":Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lc8/GXp;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "GET"

    sget-object v3, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const v4, 0x13880

    const v5, 0x9c40

    invoke-direct/range {v0 .. v5}, Lc8/GXp;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 511
    .local v0, "req":Lc8/GXp;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/GXp;->setDomain(Ljava/lang/String;)V

    .line 512
    new-instance v9, Lc8/EXp;

    const/4 v1, 0x0

    check-cast v1, [B

    invoke-direct {v9, v1}, Lc8/EXp;-><init>([B)V

    .line 513
    .local v9, "provider":Lc8/EXp;
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v9, v2, p0}, Lorg/android/spdy/SpdySession;->submitRequest(Lc8/GXp;Lc8/EXp;Ljava/lang/Object;Lc8/JXp;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private checkParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "encodeDeviceId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSign"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v9, 0x1

    .line 524
    .local v9, "result":Z
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v10, v9

    .line 555
    .end local v9    # "result":Z
    .local v10, "result":I
    :goto_0
    return v10

    .line 528
    .end local v10    # "result":I
    .restart local v9    # "result":Z
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 531
    const/4 v9, 0x0

    .line 533
    const/4 v8, 0x1

    .line 534
    .local v8, "errorCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    const/4 v8, 0x1

    .line 541
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, v8}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 542
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 543
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v0, :cond_7

    const-string/jumbo v7, "service"

    .line 545
    .local v7, "connectType":Ljava/lang/String;
    :goto_2
    const/4 v11, 0x0

    .line 546
    .local v11, "retryTimes":I
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    iget v11, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 549
    :cond_3
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DISCONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    aput-object v13, v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 552
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrytimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "connectType":Ljava/lang/String;
    .end local v8    # "errorCode":I
    .end local v11    # "retryTimes":I
    :cond_4
    move v10, v9

    .line 555
    .restart local v10    # "result":I
    goto/16 :goto_0

    .line 536
    .end local v10    # "result":I
    .restart local v8    # "errorCode":I
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 537
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 538
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    const/4 v8, 0x3

    goto/16 :goto_1

    .line 543
    :cond_7
    const-string/jumbo v7, "inapp"

    goto/16 :goto_2
.end method

.method private clearRepeatControlCommand(Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 308
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 313
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 314
    .local v1, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 340
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearRepeatControlCommand message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 319
    :pswitch_0
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 326
    :pswitch_1
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 333
    :pswitch_2
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 335
    :cond_6
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 344
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    :cond_7
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v2, p1}, Lcom/taobao/accs/data/MessageHandler;->cancelControlMessage(Lcom/taobao/accs/data/Message;)V

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private connect(Ljava/lang/String;)V
    .locals 17
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    if-nez v3, :cond_2

    .line 358
    new-instance v3, Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/accs/net/HttpDnsProvider;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    .line 360
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/accs/net/HttpDnsProvider;->getAvailableStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 366
    .local v15, "strategys":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IConnStrategy;>;"
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 368
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lanet/channel/strategy/IConnStrategy;

    .line 369
    .local v13, "item":Lanet/channel/strategy/IConnStrategy;
    if-eqz v13, :cond_3

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connect strategys ip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 374
    .end local v13    # "item":Lanet/channel/strategy/IConnStrategy;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    if-eqz v3, :cond_5

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual {v3}, Lcom/taobao/accs/net/HttpDnsProvider;->updateStrategyPos()V

    .line 376
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    .line 378
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual {v3}, Lcom/taobao/accs/net/HttpDnsProvider;->getStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v14

    .line 379
    .local v14, "strategy":Lanet/channel/strategy/IConnStrategy;
    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    .line 380
    if-nez v14, :cond_8

    const/16 v3, 0x1bb

    :goto_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    .line 381
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "dns"

    const-string/jumbo v5, "httpdns"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " get ip from amdc succ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " originPos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mHttpDnsProvider:Lcom/taobao/accs/net/HttpDnsProvider;

    invoke-virtual {v5}, Lcom/taobao/accs/net/HttpDnsProvider;->getStrategyPos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "strategy":Lanet/channel/strategy/IConnStrategy;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/accs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mUrl:Ljava/lang/String;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connect URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mSessionId:Ljava/lang/String;

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v3, :cond_6

    .line 401
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v3, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 403
    :cond_6
    new-instance v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-direct {v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v3, :cond_c

    const-string/jumbo v3, "service"

    :goto_5
    invoke-virtual {v4, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setConnectType(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    if-eqz v3, :cond_0

    .line 411
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnStartTime:J

    .line 412
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnStartTimeNano:J

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyIp:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getProxyPort(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyPort:I

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTime:J

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onStartConnect()V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyIp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyPort:I

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z

    if-eqz v3, :cond_d

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connect with proxy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v2, Lc8/AXp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyPort:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/accs/net/SpdyConnection;->mSessionId:Ljava/lang/String;

    const/16 v10, 0x1082

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v10}, Lc8/AXp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lc8/yXp;I)V

    .line 425
    .local v2, "info":Lc8/AXp;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxyPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    .line 431
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getPublicKeyType()I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/AXp;->setPubKeySeqNum(I)V

    .line 433
    const v3, 0x9c40

    invoke-virtual {v2, v3}, Lc8/AXp;->setConnectionTimeoutMs(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    invoke-virtual {v3, v2}, Lc8/CXp;->createSession(Lc8/AXp;)Lorg/android/spdy/SpdySession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    .line 437
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v2    # "info":Lc8/AXp;
    :goto_7
    :try_start_2
    monitor-exit v16

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 447
    :catch_0
    move-exception v11

    .line 448
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 379
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "strategy":Lanet/channel/strategy/IConnStrategy;
    :cond_7
    invoke-interface {v14}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 380
    :cond_8
    invoke-interface {v14}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v3

    goto/16 :goto_3

    .line 384
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "strategy":Lanet/channel/strategy/IConnStrategy;
    :cond_9
    if-eqz p1, :cond_a

    .line 385
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    .line 390
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_b

    const/16 v3, 0x50

    :goto_9
    move-object/from16 v0, p0

    iput v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    .line 391
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "dns"

    const-string/jumbo v5, "localdns"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " get ip from amdc fail!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 387
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    goto :goto_8

    .line 390
    :cond_b
    const/16 v3, 0x1bb

    goto :goto_9

    .line 404
    :cond_c
    const-string/jumbo v3, "inapp"

    goto/16 :goto_5

    .line 427
    :cond_d
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connect normal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v2, Lc8/AXp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mPort:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/accs/net/SpdyConnection;->mSessionId:Ljava/lang/String;

    const/16 v10, 0x1082

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v10}, Lc8/AXp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lc8/yXp;I)V

    .line 429
    .restart local v2    # "info":Lc8/AXp;
    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 440
    .end local v2    # "info":Lc8/AXp;
    :catch_1
    move-exception v11

    .line 441
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 442
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v11

    .line 443
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7
.end method

.method private getPublicKeyType()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 455
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->isSecurityOff()Z

    move-result v1

    .line 457
    .local v1, "secoff":Z
    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-ne v3, v5, :cond_1

    .line 458
    if-eqz v1, :cond_0

    .line 459
    const/4 v0, 0x0

    .local v0, "result":I
    :goto_0
    move v2, v0

    .line 480
    .end local v0    # "result":I
    :goto_1
    return v2

    .line 461
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 467
    .end local v0    # "result":I
    :cond_1
    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getChannelPubKey()I

    move-result v2

    .line 468
    .local v2, "tnetPubKey":I
    if-lez v2, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "use custom pub key"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "pubKey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 473
    :cond_2
    if-eqz v1, :cond_3

    .line 474
    const/4 v0, 0x4

    .restart local v0    # "result":I
    goto :goto_0

    .line 476
    .end local v0    # "result":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private initClient()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 664
    const/4 v5, 0x1

    :try_start_0
    sput-boolean v5, Lc8/CXp;->enableDebug:Z

    .line 665
    iget-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    sget-object v6, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v7, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v5, v6, v7}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    .line 667
    invoke-static {}, Lc8/CXp;->checkLoadSucc()Z

    move-result v1

    .line 668
    .local v1, "load":Z
    if-eqz v1, :cond_3

    .line 669
    invoke-static {}, Lcom/taobao/accs/utl/LoadSoFailUtil;->loadSoSuccess()V

    .line 670
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->isSecurityOff()Z

    move-result v5

    if-nez v5, :cond_0

    .line 671
    iget-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    new-instance v6, Lcom/taobao/accs/net/SpdyConnection$3;

    invoke-direct {v6, p0}, Lcom/taobao/accs/net/SpdyConnection$3;-><init>(Lcom/taobao/accs/net/SpdyConnection;)V

    invoke-virtual {v5, v6}, Lc8/CXp;->setAccsSslCallback(Lc8/tXp;)V

    .line 679
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/taobao/accs/utl/OrangeAdapter;->isTnetLogOff(Z)Z

    move-result v4

    .line 680
    .local v4, "tlogOff":Z
    if-nez v4, :cond_1

    .line 681
    iget v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v5, :cond_2

    const-string/jumbo v0, "service"

    .line 682
    .local v0, "folder":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "into--[setTnetLogPath]"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iget-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config tnet log path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 686
    iget-object v5, p0, Lcom/taobao/accs/net/SpdyConnection;->mAgent:Lc8/CXp;

    const/high16 v6, 0x500000

    const/4 v7, 0x5

    invoke-virtual {v5, v2, v6, v7}, Lc8/CXp;->configLogFile(Ljava/lang/String;II)I

    .line 698
    .end local v0    # "folder":Ljava/lang/String;
    .end local v1    # "load":Z
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "tlogOff":Z
    :cond_1
    :goto_1
    return-void

    .line 681
    .restart local v1    # "load":Z
    .restart local v4    # "tlogOff":Z
    :cond_2
    const-string/jumbo v0, "inapp"

    goto :goto_0

    .line 691
    .end local v4    # "tlogOff":Z
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "loadSoFail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    invoke-static {}, Lcom/taobao/accs/utl/LoadSoFailUtil;->loadSoFail()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 695
    .end local v1    # "load":Z
    :catch_0
    move-exception v3

    .line 696
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "loadSoFail"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v3, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized notifyStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notifyStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/SpdyConnection;->getStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    if-ne p1, v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ignore notifyStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :goto_0
    monitor-exit p0

    return-void

    .line 589
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    .line 591
    packed-switch p1, :pswitch_data_0

    .line 651
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notifyStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/SpdyConnection;->getStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 593
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnTimoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnTimoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mSessionId:Ljava/lang/String;

    .line 597
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/net/SpdyConnection$2;

    invoke-direct {v2, p0, v0}, Lcom/taobao/accs/net/SpdyConnection$2;-><init>(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V

    const-wide/32 v4, 0x1d4c0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 615
    .end local v0    # "sessionId":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/net/HeartbeatManager;->resetLevel()V

    .line 616
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->setHeartbeat(Z)V

    .line 617
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnTimoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnTimoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 626
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 627
    :try_start_5
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 629
    :try_start_6
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    :goto_3
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 626
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    .line 637
    :pswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->setHeartbeat(Z)V

    .line 638
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/net/HeartbeatManager;->onNetworkFail()V

    .line 639
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 641
    :try_start_b
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 644
    :goto_4
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 645
    :try_start_d
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/taobao/accs/data/MessageHandler;->onNetworkFail(I)V

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/taobao/accs/net/SpdyConnection;->ping(ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 644
    :catchall_3
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private onAuthFail(I)V
    .locals 12
    .param p1, "errorcode"    # I

    .prologue
    const/4 v11, 0x1

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnToken:Ljava/lang/String;

    .line 1116
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 1118
    const/4 v8, 0x0

    .line 1119
    .local v8, "retryTimes":I
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    iget v8, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code not 200 is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 1123
    iput-boolean v11, p0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    .line 1124
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v0, :cond_1

    const-string/jumbo v7, "service"

    .line 1125
    .local v7, "connectType":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTED NO 200 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    aput-object v10, v6, v9

    iget-object v9, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    aput-object v9, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1126
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "auth"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1124
    .end local v7    # "connectType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "inapp"

    goto :goto_0
.end method

.method private declared-synchronized setHeartbeat(Z)V
    .locals 2
    .param p1, "needCancel"    # Z

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTime:J

    .line 564
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTimeNano:J

    .line 580
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/HeartbeatManager;->set()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "uniId"    # I

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bioPingRecvCallback uniId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    return-void
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 6
    .param p1, "customDataId"    # Ljava/lang/String;

    .prologue
    .line 1172
    const/4 v2, 0x0

    .line 1173
    .local v2, "result":Z
    iget-object v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1174
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 1176
    .local v1, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1180
    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1181
    const/4 v2, 0x1

    .line 1185
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    :cond_0
    monitor-exit v4

    .line 1187
    return v2

    .line 1174
    .restart local v1    # "msg":Lcom/taobao/accs/data/Message;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1185
    .end local v0    # "i":I
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public close()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " force close!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 285
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 289
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getChannelHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 655
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getChannelHost()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getChannelHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getChannelState()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    return v0
.end method

.method protected getMaxTimeOutData()I
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x3

    return v0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->SecurityGuardGetSslTicket2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SilenceConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initAwcn(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1223
    iget-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mAwcnInited:Z

    if-eqz v0, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/net/BaseConnection;->initAwcn(Landroid/content/Context;)V

    .line 1227
    invoke-static {v2}, Lc8/TI;->setBackground(Z)V

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mAwcnInited:Z

    .line 1229
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "init awcn success!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    return v0
.end method

.method protected isKeepAlive()Z
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNetWorkChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "netInfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1145
    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z

    .line 1146
    iput v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mTimeoutMsgNum:I

    .line 1147
    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1157
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 1159
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public ping(ZZ)V
    .locals 4
    .param p1, "force"    # Z
    .param p2, "dely"    # Z

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try ping, force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INAPP, skip"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    :goto_1
    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/taobao/accs/data/Message;->BuildPing(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/taobao/accs/net/SpdyConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sslMeta"    # [B

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/taobao/accs/utl/UtilityImpl;->SecurityGuardPutSslTicket2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sendMessage(Lcom/taobao/accs/data/Message;Z)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-boolean v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not running or msg null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3

    .line 183
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v3, "accs"

    invoke-direct {v2, v3}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const v3, 0x11178

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 241
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "send queue full count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/taobao/accs/net/SpdyConnection$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/taobao/accs/net/SpdyConnection$1;-><init>(Lcom/taobao/accs/net/SpdyConnection;Lcom/taobao/accs/data/Message;Z)V

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 224
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 227
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isControlFrame()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/taobao/accs/net/SpdyConnection;->cancel(Ljava/lang/String;)Z

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v2, v2, Lcom/taobao/accs/data/MessageHandler;->reqTasks:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 236
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 242
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :catch_1
    move-exception v1

    .line 243
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v3, -0x8

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "send error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Lcom/taobao/accs/net/BaseConnection;->shutdown()V

    .line 251
    iput-boolean v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    .line 252
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 253
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string/jumbo v1, "shut down"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "error"    # I

    .prologue
    .line 1215
    invoke-virtual {p0, p3}, Lcom/taobao/accs/net/SpdyConnection;->reSendAck(I)V

    .line 1216
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 14
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "node"    # I
    .param p4, "frameType"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    .prologue
    .line 1026
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/taobao/accs/net/SpdyConnection;->setHeartbeat(Z)V

    .line 1028
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " onFrame, type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    const-string/jumbo v7, ""

    .line 1032
    .local v7, "str":Ljava/lang/String;
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1033
    move-object/from16 v0, p7

    array-length v10, v0

    const/16 v11, 0x200

    if-ge v10, v11, :cond_1

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1035
    .local v8, "time":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v10, v0

    if-ge v3, v10, :cond_0

    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, p7, v3

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " log time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    .end local v3    # "i":I
    .end local v8    # "time":J
    :cond_1
    const/16 v10, 0xc8

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    .line 1045
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1046
    .local v4, "receiveTime":J
    iget-object v10, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/taobao/accs/data/MessageHandler;->onMessage([B)V

    .line 1047
    iget-object v10, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v10}, Lcom/taobao/accs/data/MessageHandler;->getReceiveMsgStat()Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;

    move-result-object v6

    .line 1048
    .local v6, "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    if-eqz v6, :cond_2

    .line 1049
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->receiveDate:Ljava/lang/String;

    .line 1050
    iget v10, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v10, :cond_3

    const-string/jumbo v10, "service"

    :goto_1
    iput-object v10, v6, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->messageType:Ljava/lang/String;

    .line 1051
    invoke-virtual {v6}, Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;->commitUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v4    # "receiveTime":J
    .end local v6    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "try handle msg"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->cancelPingTimeOut()V

    .line 1062
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "spdyCustomControlFrameRecvCallback"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    return-void

    .line 1050
    .restart local v4    # "receiveTime":J
    .restart local v6    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    :cond_3
    :try_start_1
    const-string/jumbo v10, "inapp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1053
    .end local v4    # "receiveTime":J
    .end local v6    # "stat":Lcom/taobao/accs/ut/statistics/ReceiveMsgStat;
    :catch_0
    move-exception v2

    .line 1054
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "onDataReceive "

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v2, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1055
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v10

    const v11, 0x101d1

    const-string/jumbo v12, "SERVICE_DATA_RECEIVE"

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1060
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " drop frame"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # J
    .param p5, "arg3"    # Lorg/android/spdy/SpdyByteArray;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyDataChunkRecvCB"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "length"    # I
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyDataRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "length"    # I
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyDataSendCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 14
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTime:J

    .line 1085
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/SpdyConnection;->lastPingTimeNano:J

    .line 1087
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/taobao/accs/utl/UtilityImpl;->getHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 1088
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, ":status"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1089
    .local v10, "httpStatusCode":I
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spdyOnStreamResponse httpStatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    const/16 v0, 0xc8

    if-ne v10, v0, :cond_3

    .line 1091
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 1092
    const-string/jumbo v0, "x-at"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1093
    .local v11, "serverToken":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iput-object v11, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnToken:Ljava/lang/String;

    .line 1098
    :cond_0
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v4, v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    sub-long/2addr v0, v4

    :goto_0
    iput-wide v0, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->auth_time:J

    .line 1099
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v0, :cond_2

    const-string/jumbo v7, "service"

    .line 1100
    .local v7, "connectType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTED 200 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "0"

    aput-object v13, v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "auth"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    .end local v7    # "connectType":Ljava/lang/String;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "httpStatusCode":I
    .end local v11    # "serverToken":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyOnStreamResponse"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    return-void

    .line 1098
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "httpStatusCode":I
    .restart local v11    # "serverToken":Ljava/lang/String;
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1099
    :cond_2
    :try_start_1
    const-string/jumbo v7, "inapp"

    goto :goto_1

    .line 1103
    .end local v11    # "serverToken":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v10}, Lcom/taobao/accs/net/SpdyConnection;->onAuthFail(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1106
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "httpStatusCode":I
    :catch_0
    move-exception v8

    .line 1107
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 1109
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Lorg/android/spdy/SpdySession;
    .param p2, "uniqueId"    # J
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spdyPingRecvCallback uniId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v0}, Lcom/taobao/accs/data/MessageHandler;->onRcvPing()V

    .line 1013
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/HeartbeatManager;->onHeartbeatSucc()V

    .line 1014
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/HeartbeatManager;->set()V

    .line 1015
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onPingCBReceive()V

    .line 1017
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyRequestRecvCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 16
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    .prologue
    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spdySessionCloseCallback, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    if-eqz p1, :cond_0

    .line 970
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_0
    :goto_0
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onCloseConnect()V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    .line 985
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getCloseReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tnet error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 986
    .local v9, "closeReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v2, v9}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 987
    if-eqz p3, :cond_2

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-object/from16 v0, p3

    iget v3, v0, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    .line 990
    :cond_2
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v2, v3}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v2}, Lcom/taobao/accs/data/MessageHandler;->getUnhandledMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/accs/data/Message;

    .line 993
    .local v13, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 994
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const-string/jumbo v3, "session close"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_1

    .line 972
    .end local v9    # "closeReason":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "message":Lcom/taobao/accs/data/Message;
    :catch_0
    move-exception v11

    .line 973
    .local v11, "exception":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session cleanUp has exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 999
    .end local v11    # "exception":Ljava/lang/Exception;
    .restart local v9    # "closeReason":Ljava/lang/String;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v2, :cond_5

    const-string/jumbo v10, "service"

    .line 1000
    .local v10, "connectType":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spdySessionCloseCallback, conKeepTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v4, v4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " connectType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DISCONNECT CLOSE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v6, v6, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    aput-object v15, v8, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    aput-object v15, v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1002
    return-void

    .line 999
    .end local v10    # "connectType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "inapp"

    goto :goto_2
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 12
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 944
    iget v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    iput v0, p0, Lcom/taobao/accs/net/SpdyConnection;->sessionConnectInterval:I

    .line 945
    iget v8, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    .line 947
    .local v8, "sslTime":I
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spdySessionConnectCB sessionConnectInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->sessionConnectInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sslTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reuse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    invoke-direct {p0}, Lcom/taobao/accs/net/SpdyConnection;->auth()V

    .line 955
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, v11}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRet(Z)V

    .line 956
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 957
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection;->sessionConnectInterval:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->tcp_time:J

    .line 958
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    int-to-long v2, v8

    iput-wide v2, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ssl_time:J

    .line 959
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v0, :cond_0

    const-string/jumbo v7, "service"

    .line 960
    .local v7, "connectType":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection;->sessionConnectInterval:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget v9, p2, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v10

    iget-object v9, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    aput-object v9, v6, v11

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    aput-object v10, v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 961
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "connect"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void

    .line 959
    .end local v7    # "connectType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "inapp"

    goto :goto_0
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 12
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "errorId"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    .line 919
    if-eqz p1, :cond_0

    .line 920
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 926
    .local v9, "retryTimes":I
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    iget v9, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spdySessionFailedError, retryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mCanUserProxy:Z

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mLastConnectFail:Z

    .line 932
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V

    .line 933
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 934
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 935
    iget v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-nez v0, :cond_2

    const-string/jumbo v7, "service"

    .line 936
    .local v7, "connectType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DISCONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    aput-object v11, v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 937
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrytimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-void

    .line 922
    .end local v7    # "connectType":Ljava/lang/String;
    .end local v9    # "retryTimes":I
    :catch_0
    move-exception v8

    .line 923
    .local v8, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session cleanUp has exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 935
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v9    # "retryTimes":I
    :cond_2
    const-string/jumbo v7, "inapp"

    goto/16 :goto_1
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 5
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "statusCode"    # I
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .param p6, "data"    # Lorg/android/spdy/SuperviseData;

    .prologue
    const/4 v4, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyStreamCloseCallback"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    if-eqz p4, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdyStreamCloseCallback"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "statusCode"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    invoke-direct {p0, p4}, Lcom/taobao/accs/net/SpdyConnection;->onAuthFail(I)V

    .line 1073
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mRunning:Z

    .line 166
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/SpdyConnection;->initAwcn(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;-><init>(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    .line 170
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->setPriority(I)V

    .line 171
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mThread:Lcom/taobao/accs/net/SpdyConnection$NetworkThread;

    invoke-virtual {v0}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->start()V

    .line 173
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/taobao/accs/net/SpdyConnection;->ping(ZZ)V

    .line 174
    return-void
.end method

.method public updateMonitorInfo()Lcom/taobao/accs/ut/statistics/MonitorStatistic;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    invoke-direct {v0}, Lcom/taobao/accs/ut/statistics/MonitorStatistic;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    iput v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->connType:I

    .line 296
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->messageNum:I

    .line 297
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->networkAvailable:Z

    .line 298
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mProxy:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->proxy:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatus:I

    iput v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->status:I

    .line 300
    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->tcpConnected:Z

    .line 301
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection;->isAlive()Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->threadIsalive:Z

    .line 302
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    if-nez v2, :cond_2

    :goto_1
    iput v1, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->unHandleMessageNum:I

    .line 303
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mFinalUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->url:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mMonitorInfo:Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    return-object v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection;->mStatistic:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getRet()Z

    move-result v0

    goto :goto_0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v1}, Lcom/taobao/accs/data/MessageHandler;->getUnhandledCount()I

    move-result v1

    goto :goto_1
.end method
