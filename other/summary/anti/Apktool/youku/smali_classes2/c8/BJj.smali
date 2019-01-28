.class public Lc8/BJj;
.super Ljava/lang/Object;
.source "MotuLogger.java"

# interfaces
.implements Lc8/wJj;


# static fields
.field private static sHasRegister:Z


# instance fields
.field public connectionType:Ljava/lang/String;

.field public dataSpeed:J

.field public firstDataTime:J

.field public isSSL:Ljava/lang/String;

.field private mBeforeRequestTS:J

.field private mCall:Lc8/rJj;

.field private mConnType:Ljava/lang/String;

.field private mCost:J

.field private mErrorCode:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mHttpCode:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mRetryTime:I

.field public netSpeed:J

.field public oneWayTime_ANet:J

.field public recDataTime:J

.field public revSize:J

.field public serverRT:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lc8/BJj;->sHasRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnType(Lc8/rJj;)Ljava/lang/String;
    .locals 1
    .param p1, "call"    # Lc8/rJj;

    .prologue
    .line 62
    instance-of v0, p1, Lc8/CJj;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->NETWORKSDK:Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, ""

    .line 94
    :goto_0
    return-object v1

    .line 89
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 94
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, ""

    .line 80
    :goto_0
    return-object v1

    .line 75
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 80
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getRetryTime(Lc8/eJj;)I
    .locals 2
    .param p1, "response"    # Lc8/eJj;

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lc8/BJj;->mCall:Lc8/rJj;

    instance-of v1, v1, Lc8/CJj;

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {p1}, Lc8/eJj;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lc8/eJj;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    iget v0, v0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lc8/BJj;->mCall:Lc8/rJj;

    instance-of v1, v1, Lc8/MJj;

    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lc8/BJj;->mCall:Lc8/rJj;

    check-cast v0, Lc8/MJj;

    invoke-virtual {v0}, Lc8/MJj;->getRetryTime()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public afterCall(Lc8/eJj;)V
    .locals 6
    .param p1, "response"    # Lc8/eJj;

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/BJj;->mBeforeRequestTS:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc8/BJj;->mCost:J

    .line 100
    invoke-virtual {p1}, Lc8/eJj;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->mHttpCode:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->mErrorCode:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lc8/BJj;->getRetryTime(Lc8/eJj;)I

    move-result v1

    iput v1, p0, Lc8/BJj;->mRetryTime:I

    .line 103
    invoke-virtual {p1}, Lc8/eJj;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    .line 104
    .local v0, "statisticData":Lanetwork/channel/statist/StatisticData;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, v0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    iput-object v1, p0, Lc8/BJj;->connectionType:Ljava/lang/String;

    .line 106
    iget-boolean v1, v0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->isSSL:Ljava/lang/String;

    .line 107
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    iput-wide v2, p0, Lc8/BJj;->firstDataTime:J

    .line 108
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    iput-wide v2, p0, Lc8/BJj;->recDataTime:J

    .line 109
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    iput-wide v2, p0, Lc8/BJj;->oneWayTime_ANet:J

    .line 110
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    iput-wide v2, p0, Lc8/BJj;->serverRT:J

    .line 111
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    iput-wide v2, p0, Lc8/BJj;->revSize:J

    .line 112
    iget-wide v2, v0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    iput-wide v2, p0, Lc8/BJj;->dataSpeed:J

    .line 114
    :cond_0
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v1

    invoke-virtual {v1}, Lc8/UJ;->getNetSpeedValue()D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, p0, Lc8/BJj;->netSpeed:J

    .line 115
    invoke-virtual {p0}, Lc8/BJj;->uploadLog()V

    .line 116
    return-void
.end method

.method public beforeCall(Lc8/rJj;)V
    .locals 4
    .param p1, "call"    # Lc8/rJj;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/BJj;->mCall:Lc8/rJj;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/BJj;->mBeforeRequestTS:J

    .line 55
    invoke-virtual {p1}, Lc8/rJj;->getYkRequest()Lc8/dJj;

    move-result-object v1

    invoke-virtual {v1}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/BJj;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->mHost:Ljava/lang/String;

    .line 57
    invoke-direct {p0, v0}, Lc8/BJj;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->mPath:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lc8/BJj;->getConnType(Lc8/rJj;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/BJj;->mConnType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public uploadLog()V
    .locals 8

    .prologue
    .line 136
    sget-boolean v4, Lc8/BJj;->sHasRegister:Z

    if-nez v4, :cond_0

    .line 137
    const/4 v4, 0x1

    sput-boolean v4, Lc8/BJj;->sHasRegister:Z

    .line 138
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "host"

    .line 139
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "path"

    .line 140
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "connType"

    .line 141
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "httpCode"

    .line 142
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "errorCode"

    .line 143
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "connectionType"

    .line 144
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "isSSL"

    .line 145
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 147
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "cost"

    .line 148
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "retryTime"

    .line 149
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "oneWayTime_ANet"

    .line 150
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "firstDataTime"

    .line 151
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "recDataTime"

    .line 152
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "serverRT"

    .line 153
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "dataSpeed"

    .line 154
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "revSize"

    .line 155
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "netSpeed"

    .line 156
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 157
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "network_api"

    const-string/jumbo v5, "api_request"

    invoke-static {v4, v5, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 160
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 161
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "host"

    iget-object v5, p0, Lc8/BJj;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 162
    const-string/jumbo v4, "path"

    iget-object v5, p0, Lc8/BJj;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 163
    const-string/jumbo v4, "connType"

    iget-object v5, p0, Lc8/BJj;->mConnType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 164
    const-string/jumbo v4, "httpCode"

    iget-object v5, p0, Lc8/BJj;->mHttpCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 165
    const-string/jumbo v4, "errorCode"

    iget-object v5, p0, Lc8/BJj;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 166
    const-string/jumbo v4, "connectionType"

    iget-object v5, p0, Lc8/BJj;->connectionType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 167
    const-string/jumbo v4, "isSSL"

    iget-object v5, p0, Lc8/BJj;->isSSL:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 170
    .local v3, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "cost"

    iget-wide v6, p0, Lc8/BJj;->mCost:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 171
    const-string/jumbo v4, "retryTime"

    iget v5, p0, Lc8/BJj;->mRetryTime:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 172
    const-string/jumbo v4, "oneWayTime_ANet"

    iget-wide v6, p0, Lc8/BJj;->oneWayTime_ANet:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 173
    const-string/jumbo v4, "firstDataTime"

    iget-wide v6, p0, Lc8/BJj;->firstDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 174
    const-string/jumbo v4, "recDataTime"

    iget-wide v6, p0, Lc8/BJj;->recDataTime:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 175
    const-string/jumbo v4, "serverRT"

    iget-wide v6, p0, Lc8/BJj;->serverRT:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 176
    const-string/jumbo v4, "dataSpeed"

    iget-wide v6, p0, Lc8/BJj;->dataSpeed:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 177
    const-string/jumbo v4, "revSize"

    iget-wide v6, p0, Lc8/BJj;->revSize:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 178
    const-string/jumbo v4, "netSpeed"

    iget-wide v6, p0, Lc8/BJj;->netSpeed:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 180
    const-string/jumbo v4, "network_api"

    const-string/jumbo v5, "api_request"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 181
    return-void
.end method
