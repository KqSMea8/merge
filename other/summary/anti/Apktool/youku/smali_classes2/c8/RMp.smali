.class public Lc8/RMp;
.super Ljava/lang/Object;
.source "TimeCalibrationAfterFilter.java"

# interfaces
.implements Lc8/JMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TimeCalibrationAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 14
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    const/4 v10, 0x1

    .line 35
    iget-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 36
    .local v2, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v3, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 38
    .local v3, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->timeCalibrated:Z

    if-nez v7, :cond_0

    .line 39
    iput-boolean v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->timeCalibrated:Z

    .line 40
    iput-boolean v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    .line 42
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v10, "x-systime"

    invoke-static {v7, v10}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "time":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 45
    .local v4, "server_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long v8, v4, v10

    .line 46
    .local v8, "time_offset":J
    const-string/jumbo v7, "t_offset"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v7, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v7}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v7

    iget-object v1, v7, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 48
    .local v1, "filterManager":Lc8/dNp;
    if-eqz v1, :cond_0

    .line 50
    new-instance v7, Lc8/WMp;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lc8/WMp;-><init>(Lc8/POp;)V

    invoke-virtual {v7}, Lc8/WMp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, p1}, Lc8/dNp;->start(Ljava/lang/String;Lc8/IMp;)V

    .line 51
    const-string/jumbo v7, "STOP"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "filterManager":Lc8/dNp;
    .end local v4    # "server_time":J
    .end local v6    # "time":Ljava/lang/String;
    .end local v8    # "time_offset":J
    :goto_0
    return-object v7

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mtopsdk.TimeCalibrationAfterFilter"

    iget-object v10, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v11, "parse x-systime from mtop response header error"

    invoke-static {v7, v10, v11, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v7, "CONTINUE"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "mtopsdk.TimeCalibrationAfterFilter"

    return-object v0
.end method
