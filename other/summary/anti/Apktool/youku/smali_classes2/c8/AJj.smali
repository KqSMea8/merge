.class public Lc8/AJj;
.super Ljava/lang/Object;
.source "MTopMotuLogger.java"

# interfaces
.implements Lc8/wJj;


# static fields
.field private static sHasRegister:Z


# instance fields
.field public api:Ljava/lang/String;

.field public backGround:Ljava/lang/String;

.field public cacheCostTime:J

.field public cacheHitType:I

.field public cacheResponseParseTime:J

.field public cacheSwitch:I

.field public clientTraceId:Ljava/lang/String;

.field public connType:Ljava/lang/String;

.field public dataSpeed:J

.field public domain:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public firstDataTime:J

.field public isSSL:Ljava/lang/String;

.field public jsonParseTime:J

.field public mBeforeRequestTS:J

.field public mCall:Lc8/rJj;

.field public mCost:J

.field public miniWuaTime:J

.field public mtopReqTime:J

.field public netSpeed:J

.field public networkExeTime:J

.field public oneWayTime_ANet:J

.field public pageName:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public rbReqTime:J

.field public recDataTime:J

.field public responseCode:Ljava/lang/String;

.field public retCode:Ljava/lang/String;

.field public retMsg:Ljava/lang/String;

.field public retryTime:I

.field public revSize:J

.field public serverRT:J

.field public serverTraceId:Ljava/lang/String;

.field public signTime:J

.field public toMainThTime:J

.field public totalTime:J

.field public waitCallbackTime:J

.field public waitExecuteTime:J

.field public wuaTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lc8/AJj;->sHasRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseMTopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 6
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 91
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/AJj;->retCode:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/AJj;->retMsg:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v0

    .line 96
    .local v0, "mtopStatistics":Lc8/pPp;
    if-eqz v0, :cond_1

    .line 98
    iget-object v3, v0, Lc8/pPp;->domain:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->domain:Ljava/lang/String;

    .line 99
    iget v3, v0, Lc8/pPp;->cacheSwitch:I

    iput v3, p0, Lc8/AJj;->cacheSwitch:I

    .line 100
    iget v3, v0, Lc8/pPp;->cacheHitType:I

    iput v3, p0, Lc8/AJj;->cacheHitType:I

    .line 101
    iget-object v3, v0, Lc8/pPp;->clientTraceId:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->clientTraceId:Ljava/lang/String;

    .line 102
    iget-object v3, v0, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->serverTraceId:Ljava/lang/String;

    .line 103
    iget-object v3, v0, Lc8/pPp;->pageName:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->pageName:Ljava/lang/String;

    .line 104
    iget-object v3, v0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->pageUrl:Ljava/lang/String;

    .line 105
    iget-boolean v3, v0, Lc8/pPp;->backGround:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/AJj;->backGround:Ljava/lang/String;

    .line 107
    iget-wide v4, v0, Lc8/pPp;->totalTime:J

    iput-wide v4, p0, Lc8/AJj;->totalTime:J

    .line 108
    iget-wide v4, v0, Lc8/pPp;->netTotalTime:J

    iput-wide v4, p0, Lc8/AJj;->networkExeTime:J

    .line 109
    iget-wide v4, v0, Lc8/pPp;->cacheCostTime:J

    iput-wide v4, p0, Lc8/AJj;->cacheCostTime:J

    .line 110
    iget-wide v4, v0, Lc8/pPp;->cacheResponseParseTime:J

    iput-wide v4, p0, Lc8/AJj;->cacheResponseParseTime:J

    .line 111
    iget-wide v4, v0, Lc8/pPp;->waitExecuteTime:J

    iput-wide v4, p0, Lc8/AJj;->waitExecuteTime:J

    .line 113
    iget-wide v4, v0, Lc8/pPp;->waitCallbackTime:J

    iput-wide v4, p0, Lc8/AJj;->waitCallbackTime:J

    .line 114
    iget-wide v4, v0, Lc8/pPp;->computeSignTime:J

    iput-wide v4, p0, Lc8/AJj;->signTime:J

    .line 115
    iget-wide v4, v0, Lc8/pPp;->computeWuaTime:J

    iput-wide v4, p0, Lc8/AJj;->wuaTime:J

    .line 116
    iget-wide v4, v0, Lc8/pPp;->computeMiniWuaTime:J

    iput-wide v4, p0, Lc8/AJj;->miniWuaTime:J

    .line 118
    invoke-virtual {v0}, Lc8/pPp;->getNetworkStats()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v1

    .line 120
    .local v1, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    if-eqz v1, :cond_0

    .line 121
    iget-object v3, v1, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    iput-object v3, p0, Lc8/AJj;->connType:Ljava/lang/String;

    .line 122
    iget-boolean v3, v1, Lmtopsdk/network/domain/NetworkStats;->isSSL:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/AJj;->isSSL:Ljava/lang/String;

    .line 123
    iget v3, v1, Lmtopsdk/network/domain/NetworkStats;->retryTimes:I

    iput v3, p0, Lc8/AJj;->retryTime:I

    .line 124
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->firstDataTime:J

    iput-wide v4, p0, Lc8/AJj;->firstDataTime:J

    .line 125
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->recDataTime:J

    iput-wide v4, p0, Lc8/AJj;->recDataTime:J

    .line 126
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    iput-wide v4, p0, Lc8/AJj;->oneWayTime_ANet:J

    .line 127
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    iput-wide v4, p0, Lc8/AJj;->serverRT:J

    .line 128
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    iput-wide v4, p0, Lc8/AJj;->revSize:J

    .line 129
    iget-wide v4, v1, Lmtopsdk/network/domain/NetworkStats;->dataSpeed:J

    iput-wide v4, p0, Lc8/AJj;->dataSpeed:J

    .line 132
    :cond_0
    invoke-virtual {v0}, Lc8/pPp;->getRbStatData()Lc8/oPp;

    move-result-object v2

    .line 134
    .local v2, "rbStatData":Lc8/oPp;
    if-eqz v2, :cond_1

    .line 135
    iget-wide v4, v2, Lc8/oPp;->rbReqTime:J

    iput-wide v4, p0, Lc8/AJj;->rbReqTime:J

    .line 136
    iget-wide v4, v2, Lc8/oPp;->toMainThTime:J

    iput-wide v4, p0, Lc8/AJj;->toMainThTime:J

    .line 137
    iget-wide v4, v2, Lc8/oPp;->jsonParseTime:J

    iput-wide v4, p0, Lc8/AJj;->jsonParseTime:J

    .line 138
    iget-wide v4, v2, Lc8/oPp;->mtopReqTime:J

    iput-wide v4, p0, Lc8/AJj;->mtopReqTime:J

    .line 141
    .end local v1    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    .end local v2    # "rbStatData":Lc8/oPp;
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterCall(Lc8/eJj;)V
    .locals 4
    .param p1, "response"    # Lc8/eJj;

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/AJj;->mBeforeRequestTS:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/AJj;->mCost:J

    .line 83
    invoke-virtual {p1}, Lc8/eJj;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/AJj;->responseCode:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/AJj;->errorCode:Ljava/lang/String;

    .line 85
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UJ;->getNetSpeedValue()D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lc8/AJj;->netSpeed:J

    .line 86
    invoke-virtual {p1}, Lc8/eJj;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/AJj;->parseMTopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 87
    invoke-virtual {p0}, Lc8/AJj;->uploadLog()V

    .line 88
    return-void
.end method

.method public beforeCall(Lc8/rJj;)V
    .locals 2
    .param p1, "call"    # Lc8/rJj;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/AJj;->mCall:Lc8/rJj;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/AJj;->mBeforeRequestTS:J

    .line 76
    invoke-virtual {p1}, Lc8/rJj;->getYkRequest()Lc8/dJj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/dJj;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/AJj;->api:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MTopMotuLogger{mCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->mCall:Lc8/rJj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBeforeRequestTS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->mBeforeRequestTS:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", api=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->responseCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientTraceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->clientTraceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverTraceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->serverTraceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backGround=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->backGround:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->connType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSSL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AJj;->isSSL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->mCost:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/AJj;->retryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->totalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", waitExecuteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->waitExecuteTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", waitCallbackTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->waitCallbackTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheHitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/AJj;->cacheHitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheCostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->cacheCostTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/AJj;->cacheSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->cacheResponseParseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", networkExeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->networkExeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->signTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", wuaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->wuaTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", miniWuaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->miniWuaTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", oneWayTime_ANet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->oneWayTime_ANet:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", firstDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->firstDataTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->recDataTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverRT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->serverRT:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->dataSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->revSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rbReqTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->rbReqTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toMainThTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->toMainThTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", jsonParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->jsonParseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mtopReqTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/AJj;->mtopReqTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadLog()V
    .locals 8

    .prologue
    .line 144
    sget-boolean v4, Lc8/AJj;->sHasRegister:Z

    if-nez v4, :cond_0

    .line 145
    const/4 v4, 0x1

    sput-boolean v4, Lc8/AJj;->sHasRegister:Z

    .line 146
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "api"

    .line 147
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "domain"

    .line 148
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "retCode"

    .line 149
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "retMsg"

    .line 150
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "errorCode"

    .line 151
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "responseCode"

    .line 152
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "clientTraceId"

    .line 153
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "serverTraceId"

    .line 154
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "pageUrl"

    .line 155
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "pageName"

    .line 156
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "backGround"

    .line 157
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "connType"

    .line 158
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "isSSL"

    .line 159
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "cacheHitType"

    .line 160
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "cacheSwitch"

    .line 161
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 163
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "cost"

    .line 164
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "retryTime"

    .line 165
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "totalTime"

    .line 166
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "waitExecuteTime"

    .line 167
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "waitCallbackTime"

    .line 168
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "cacheCostTime"

    .line 169
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "cacheResponseParseTime"

    .line 170
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "networkExeTime"

    .line 171
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "signTime"

    .line 172
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "wuaTime"

    .line 173
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "miniWuaTime"

    .line 174
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "oneWayTime_ANet"

    .line 175
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "firstDataTime"

    .line 176
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "recDataTime"

    .line 177
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "serverRT"

    .line 178
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "dataSpeed"

    .line 179
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "revSize"

    .line 180
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "rbReqTime"

    .line 181
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "toMainThTime"

    .line 182
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "jsonParseTime"

    .line 183
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "mtopReqTime"

    .line 184
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "netSpeed"

    .line 185
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 186
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "mtop_api"

    const-string/jumbo v5, "api_request"

    invoke-static {v4, v5, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 189
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 190
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "api"

    iget-object v5, p0, Lc8/AJj;->api:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 191
    const-string/jumbo v4, "domain"

    iget-object v5, p0, Lc8/AJj;->domain:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 192
    const-string/jumbo v4, "retCode"

    iget-object v5, p0, Lc8/AJj;->retCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 193
    const-string/jumbo v4, "retMsg"

    iget-object v5, p0, Lc8/AJj;->retMsg:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 194
    const-string/jumbo v4, "errorCode"

    iget-object v5, p0, Lc8/AJj;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 195
    const-string/jumbo v4, "responseCode"

    iget-object v5, p0, Lc8/AJj;->responseCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 196
    const-string/jumbo v4, "clientTraceId"

    iget-object v5, p0, Lc8/AJj;->clientTraceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 197
    const-string/jumbo v4, "serverTraceId"

    iget-object v5, p0, Lc8/AJj;->serverTraceId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 198
    const-string/jumbo v4, "pageUrl"

    iget-object v5, p0, Lc8/AJj;->pageUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 199
    const-string/jumbo v4, "pageName"

    iget-object v5, p0, Lc8/AJj;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 200
    const-string/jumbo v4, "backGround"

    iget-object v5, p0, Lc8/AJj;->backGround:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 201
    const-string/jumbo v4, "connType"

    iget-object v5, p0, Lc8/AJj;->connType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 202
    const-string/jumbo v4, "isSSL"

    iget-object v5, p0, Lc8/AJj;->isSSL:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 203
    const-string/jumbo v4, "cacheHitType"

    iget v5, p0, Lc8/AJj;->cacheHitType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 204
    const-string/jumbo v4, "cacheSwitch"

    iget v5, p0, Lc8/AJj;->cacheSwitch:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 206
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 207
    .local v3, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "cost"

    iget-wide v6, p0, Lc8/AJj;->mCost:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 208
    const-string/jumbo v4, "retryTime"

    iget v5, p0, Lc8/AJj;->retryTime:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 209
    const-string/jumbo v4, "totalTime"

    iget-wide v6, p0, Lc8/AJj;->totalTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 210
    const-string/jumbo v4, "waitExecuteTime"

    iget-wide v6, p0, Lc8/AJj;->waitExecuteTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 211
    const-string/jumbo v4, "waitCallbackTime"

    iget-wide v6, p0, Lc8/AJj;->waitCallbackTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 212
    const-string/jumbo v4, "cacheCostTime"

    iget-wide v6, p0, Lc8/AJj;->cacheCostTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 213
    const-string/jumbo v4, "cacheResponseParseTime"

    iget-wide v6, p0, Lc8/AJj;->cacheResponseParseTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 214
    const-string/jumbo v4, "networkExeTime"

    iget-wide v6, p0, Lc8/AJj;->networkExeTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 215
    const-string/jumbo v4, "signTime"

    iget-wide v6, p0, Lc8/AJj;->signTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 216
    const-string/jumbo v4, "wuaTime"

    iget-wide v6, p0, Lc8/AJj;->wuaTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 217
    const-string/jumbo v4, "miniWuaTime"

    iget-wide v6, p0, Lc8/AJj;->miniWuaTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 218
    const-string/jumbo v4, "oneWayTime_ANet"

    iget-wide v6, p0, Lc8/AJj;->oneWayTime_ANet:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 219
    const-string/jumbo v4, "firstDataTime"

    iget-wide v6, p0, Lc8/AJj;->firstDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 220
    const-string/jumbo v4, "recDataTime"

    iget-wide v6, p0, Lc8/AJj;->recDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 221
    const-string/jumbo v4, "serverRT"

    iget-wide v6, p0, Lc8/AJj;->serverRT:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 222
    const-string/jumbo v4, "dataSpeed"

    iget-wide v6, p0, Lc8/AJj;->dataSpeed:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 223
    const-string/jumbo v4, "revSize"

    iget-wide v6, p0, Lc8/AJj;->revSize:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 224
    const-string/jumbo v4, "rbReqTime"

    iget-wide v6, p0, Lc8/AJj;->rbReqTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 225
    const-string/jumbo v4, "toMainThTime"

    iget-wide v6, p0, Lc8/AJj;->toMainThTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 226
    const-string/jumbo v4, "jsonParseTime"

    iget-wide v6, p0, Lc8/AJj;->jsonParseTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 227
    const-string/jumbo v4, "mtopReqTime"

    iget-wide v6, p0, Lc8/AJj;->mtopReqTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 228
    const-string/jumbo v4, "netSpeed"

    iget-wide v6, p0, Lc8/AJj;->netSpeed:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 230
    const-string/jumbo v4, "mtop_api"

    const-string/jumbo v5, "api_request"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 232
    invoke-virtual {p0}, Lc8/AJj;->toString()Ljava/lang/String;

    .line 233
    return-void
.end method
