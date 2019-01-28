.class public Lanet/channel/statist/RequestStatistic;
.super Lanet/channel/statist/StatObject;
.source "RequestStatistic.java"


# annotations
.annotation runtime Lc8/CK;
    module = "networkPrefer"
    monitorPoint = "network"
    sampleRate = 0x3e8
.end annotation


# instance fields
.field public accuracy:F
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile bizId:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile bssid:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile cacheTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile connWaitTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile contentEncoding:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile degraded:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile errorTrace:Ljava/lang/StringBuilder;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile firstDataTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile host:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile ip:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile ipRefer:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile ipType:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile isBg:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile isDNS:Z
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile isProxy:Z
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile isSSL:Z
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

.field public volatile msg:Ljava/lang/String;
    .annotation runtime Lc8/AK;
        name = "errorMsg"
    .end annotation
.end field

.field public volatile netType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile oneWayTime:J
    .annotation runtime Lc8/BK;
        max = 60000.0
    .end annotation
.end field

.field public volatile port:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile processTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile protocolType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile proxyType:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile recDataSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile recDataTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile reqBodyDeflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile reqBodyInflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile reqHeadDeflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile reqHeadInflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile requestStart:J

.field public volatile ret:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile retryTimes:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public roaming:I
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile rspBodyDeflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile rspBodyInflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile rspHeadDeflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile rspHeadInflateSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile rspStart:J

.field public volatile sendBeforeTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile sendDataSize:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile sendDataTime:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile sendEnd:J

.field public volatile sendStart:J

.field public volatile serverRT:J
    .annotation runtime Lc8/BK;
    .end annotation
.end field

.field public volatile spdyRequestSend:Z

.field public volatile start:J

.field public volatile statusCode:I
    .annotation runtime Lc8/AK;
        name = "errorCode"
    .end annotation
.end field

.field public unit:Ljava/lang/String;
    .annotation runtime Lc8/AK;
    .end annotation
.end field

.field public volatile url:Ljava/lang/String;
    .annotation runtime Lc8/AK;
        name = "URL"
    .end annotation
.end field

.field public volatile waitingTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "bizId"    # Ljava/lang/String;

    .prologue
    const-wide v6, 0x40f5f90000000000L    # 90000.0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 70
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 14
    iput v2, p0, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 15
    iput v1, p0, Lanet/channel/statist/RequestStatistic;->ipType:I

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->bssid:Ljava/lang/String;

    .line 21
    iput-boolean v2, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    .line 25
    iput v2, p0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 28
    iput v2, p0, Lanet/channel/statist/RequestStatistic;->degraded:I

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    .line 32
    iput-wide v6, p0, Lanet/channel/statist/RequestStatistic;->lng:D

    .line 33
    iput-wide v6, p0, Lanet/channel/statist/RequestStatistic;->lat:D

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lanet/channel/statist/RequestStatistic;->accuracy:F

    .line 35
    iput v2, p0, Lanet/channel/statist/RequestStatistic;->roaming:I

    .line 36
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->mnc:Ljava/lang/String;

    .line 39
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->reqHeadInflateSize:J

    .line 40
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 41
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->reqHeadDeflateSize:J

    .line 42
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 44
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    .line 45
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 46
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->rspHeadInflateSize:J

    .line 47
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    .line 49
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->connWaitTime:J

    .line 50
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 51
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 52
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 53
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 54
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 55
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 56
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    .line 57
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 58
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 59
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 60
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    .line 62
    iput-boolean v2, p0, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    .line 63
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 64
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->requestStart:J

    .line 65
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 66
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    .line 67
    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 71
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    .line 72
    invoke-static {}, Lc8/FK;->getProxyType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isProxy:Z

    .line 74
    invoke-static {}, Lc8/FK;->getNetworkSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 75
    invoke-static {}, Lc8/FK;->getWifiBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->bssid:Ljava/lang/String;

    .line 76
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "bg"

    :goto_1
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    .line 77
    invoke-static {}, Lc8/FK;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput v1, p0, Lanet/channel/statist/RequestStatistic;->roaming:I

    .line 78
    invoke-static {}, Lc8/FK;->getSimOp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->mnc:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lanet/channel/statist/RequestStatistic;->bizId:Ljava/lang/String;

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v0, "fg"

    goto :goto_1

    :cond_2
    move v1, v2

    .line 77
    goto :goto_2
.end method


# virtual methods
.method public appendErrorTrace(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    iget-object v0, p0, Lanet/channel/statist/RequestStatistic;->errorTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/statist/RequestStatistic;->requestStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    return-void
.end method

.method public setConnType(Lc8/BJ;)V
    .locals 1
    .param p1, "connType"    # Lc8/BJ;

    .prologue
    .line 83
    invoke-virtual {p1}, Lc8/BJ;->isSSL()Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    .line 84
    invoke-virtual {p1}, Lc8/BJ;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setIPAndPort(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 88
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 89
    iput p2, p0, Lanet/channel/statist/RequestStatistic;->port:I

    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    .line 93
    :cond_0
    return-void
.end method
