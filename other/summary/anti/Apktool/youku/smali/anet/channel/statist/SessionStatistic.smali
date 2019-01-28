.class public Lanet/channel/statist/SessionStatistic;
.super Lanet/channel/statist/StatObject;
.source "SessionStatistic.java"


# annotations
.annotation runtime Lc8/CK;
    module = "networkPrefer"
    monitorPoint = "session"
.end annotation


# static fields
.field public static maxRetryTime:I


# instance fields
.field public ackTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lc8/BK;
        max = 15000.0
    .end annotation
.end field

.field public cfRCount:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public closeReason:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public connectionTime:J
    .annotation runtime Lc8/BK;
        max = 15000.0
        name = "connTime"
    .end annotation
.end field

.field public conntype:Ljava/lang/String;
    .annotation runtime Lc8/AK;
        name = "protocolType"
    .end annotation
.end field

.field public errorCode:J
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public inceptCount:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public ipRefer:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public ipType:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isCommitted:Z

.field public isKL:J
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isProxy:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public isTunnel:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public lastPingInterval:I
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public liveTime:J
    .annotation runtime Lc8/BK;
        max = 86400.0
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public pRate:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public ppkgCount:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public recvSizeCount:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public requestCount:J
    .annotation runtime Lc8/BK;
        constantValue = 1.0
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public retryTimes:J
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public sdkv:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public sendSizeCount:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public sslCalTime:J
    .annotation runtime Lc8/BK;
        max = 15000.0
    .end annotation
.end field

.field public sslTime:J
    .annotation runtime Lc8/BK;
        max = 15000.0
    .end annotation
.end field

.field public stdRCount:J
    .annotation runtime Lc8/BK;
        constantValue = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/AJ;)V
    .locals 6
    .param p1, "info"    # Lc8/AJ;

    .prologue
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 20
    iput v2, p0, Lanet/channel/statist/SessionStatistic;->isProxy:I

    .line 26
    iput v2, p0, Lanet/channel/statist/SessionStatistic;->ipRefer:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 38
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 40
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 51
    iput-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    .line 56
    invoke-virtual {p1}, Lc8/AJ;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lc8/AJ;->getPort()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->port:I

    .line 58
    iget-object v0, p1, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p1, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipRefer:I

    .line 60
    iget-object v0, p1, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    .line 62
    :cond_0
    invoke-virtual {p1}, Lc8/AJ;->getHeartbeat()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->pRate:J

    .line 63
    invoke-virtual {p1}, Lc8/AJ;->getConnType()Lc8/BJ;

    move-result-object v0

    invoke-virtual {v0}, Lc8/BJ;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    .line 64
    iget v0, p1, Lc8/AJ;->retryTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 65
    iget v0, p1, Lc8/AJ;->maxRetryTime:I

    sput v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    .line 66
    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    iget v2, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-nez v2, :cond_2

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    sget v4, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa35

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa29

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 73
    :cond_0
    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string/jumbo v2, "SessionStat no need commit"

    const/4 v3, 0x0

    const-string/jumbo v4, "retry:"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    const-string/jumbo v6, "maxRetryTime"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    sget v6, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "errorCode"

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    iget-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-nez v2, :cond_1

    .line 81
    iput-boolean v1, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public getAlarmObject()Lc8/yK;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lc8/yK;

    invoke-direct {v0}, Lc8/yK;-><init>()V

    .line 87
    .local v0, "alarmObject":Lc8/yK;
    const-string/jumbo v1, "networkPrefer"

    iput-object v1, v0, Lc8/yK;->module:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "connect_succ_rate"

    iput-object v1, v0, Lc8/yK;->modulePoint:Ljava/lang/String;

    .line 89
    iget v1, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lc8/yK;->isSuccess:Z

    .line 90
    iget-boolean v1, v0, Lc8/yK;->isSuccess:Z

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    iput-object v1, v0, Lc8/yK;->arg:Ljava/lang/String;

    .line 95
    :goto_1
    return-object v0

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :cond_1
    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/yK;->errorCode:Ljava/lang/String;

    goto :goto_1
.end method
