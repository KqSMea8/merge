.class public Lanet/channel/statist/SessionConnStat;
.super Lanet/channel/statist/StatObject;
.source "SessionConnStat.java"


# annotations
.annotation runtime Lc8/CK;
    module = "networkPrefer"
    monitorPoint = "conn_stat"
.end annotation


# instance fields
.field public accuracy:F
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lc8/BK;
        max = 60000.0
    .end annotation
.end field

.field public bssid:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public errorCode:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public errorTrace:Ljava/lang/StringBuilder;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lc8/AK;
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

.field public volatile isCommited:Z

.field public isProxy:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public mnc:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public protocolType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public retryTimes:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public roaming:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile start:J

.field public volatile startConnect:J

.field public totalTime:J
    .annotation runtime Lc8/BK;
        max = 60000.0
    .end annotation
.end field

.field public unit:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide v2, 0x40f5f90000000000L    # 90000.0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 17
    iput v1, p0, Lanet/channel/statist/SessionConnStat;->ipRefer:I

    .line 18
    iput v0, p0, Lanet/channel/statist/SessionConnStat;->ipType:I

    .line 25
    iput-wide v2, p0, Lanet/channel/statist/SessionConnStat;->lng:D

    .line 26
    iput-wide v2, p0, Lanet/channel/statist/SessionConnStat;->lat:D

    .line 27
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lanet/channel/statist/SessionConnStat;->accuracy:F

    .line 29
    iput v1, p0, Lanet/channel/statist/SessionConnStat;->isProxy:I

    .line 35
    iput-wide v4, p0, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 36
    iput-wide v4, p0, Lanet/channel/statist/SessionConnStat;->authTime:J

    .line 38
    iput-boolean v1, p0, Lanet/channel/statist/SessionConnStat;->isCommited:Z

    .line 39
    iput-wide v4, p0, Lanet/channel/statist/SessionConnStat;->start:J

    .line 40
    iput-wide v4, p0, Lanet/channel/statist/SessionConnStat;->startConnect:J

    .line 43
    invoke-static {}, Lc8/FK;->getNetworkSubType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/statist/SessionConnStat;->netType:Ljava/lang/String;

    .line 44
    invoke-static {}, Lc8/FK;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/statist/SessionConnStat;->bssid:Ljava/lang/String;

    .line 45
    invoke-static {}, Lc8/FK;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v0, p0, Lanet/channel/statist/SessionConnStat;->roaming:I

    .line 46
    invoke-static {}, Lc8/FK;->getSimOp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionConnStat;->mnc:Ljava/lang/String;

    .line 47
    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public appendErrorTrace(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lanet/channel/statist/SessionConnStat;->errorTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanet/channel/statist/SessionConnStat;->errorTrace:Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    iget-object v0, p0, Lanet/channel/statist/SessionConnStat;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lanet/channel/statist/SessionConnStat;->errorTrace:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    iget-object v0, p0, Lanet/channel/statist/SessionConnStat;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/statist/SessionConnStat;->startConnect:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method

.method public beforeCommit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-boolean v1, p0, Lanet/channel/statist/SessionConnStat;->isCommited:Z

    if-eqz v1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    iput-boolean v0, p0, Lanet/channel/statist/SessionConnStat;->isCommited:Z

    goto :goto_0
.end method

.method public syncValueFromSession(Lanet/channel/Session;)V
    .locals 4
    .param p1, "session"    # Lanet/channel/Session;

    .prologue
    .line 50
    iget-object v0, p1, Lanet/channel/Session;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    .line 51
    .local v0, "ss":Lanet/channel/statist/SessionStatistic;
    iget-object v1, v0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    iput-object v1, p0, Lanet/channel/statist/SessionConnStat;->ip:Ljava/lang/String;

    .line 52
    iget v1, v0, Lanet/channel/statist/SessionStatistic;->port:I

    iput v1, p0, Lanet/channel/statist/SessionConnStat;->port:I

    .line 53
    iget v1, v0, Lanet/channel/statist/SessionStatistic;->ipRefer:I

    iput v1, p0, Lanet/channel/statist/SessionConnStat;->ipRefer:I

    .line 54
    iget v1, v0, Lanet/channel/statist/SessionStatistic;->ipType:I

    iput v1, p0, Lanet/channel/statist/SessionConnStat;->ipType:I

    .line 55
    iget-object v1, v0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    iput-object v1, p0, Lanet/channel/statist/SessionConnStat;->protocolType:Ljava/lang/String;

    .line 56
    iget-object v1, v0, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    iput-object v1, p0, Lanet/channel/statist/SessionConnStat;->host:Ljava/lang/String;

    .line 57
    iget v1, v0, Lanet/channel/statist/SessionStatistic;->isProxy:I

    iput v1, p0, Lanet/channel/statist/SessionConnStat;->isProxy:I

    .line 58
    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->authTime:J

    iput-wide v2, p0, Lanet/channel/statist/SessionConnStat;->authTime:J

    .line 59
    invoke-virtual {p1}, Lanet/channel/Session;->getUnit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/statist/SessionConnStat;->unit:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lanet/channel/statist/SessionConnStat;->unit:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lanet/channel/statist/SessionConnStat;->ipRefer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    const-string/jumbo v1, "LocalDNS"

    iput-object v1, p0, Lanet/channel/statist/SessionConnStat;->unit:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method
