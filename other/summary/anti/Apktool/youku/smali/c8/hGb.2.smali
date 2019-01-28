.class public Lc8/hGb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lc8/hGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/hGb;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "_Page_Native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "Page_Native"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "_Page_H5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "Page_H5"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Taoke_Trace_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Taoke_Trace"

    goto :goto_0
.end method

.method public static endInitTimeRecord()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lc8/hGb;->b:J

    sub-long/2addr v0, v2

    sput-wide v0, Lc8/hGb;->b:J

    return-void
.end method

.method public static getUTInitTime()J
    .locals 2

    sget-wide v0, Lc8/hGb;->b:J

    return-wide v0
.end method

.method public static sendPerfomancePoint(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;)V
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPerfomancePoint"

    const-string/jumbo v2, "pagePerformancePoint is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPerfomancePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->checkData()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPerfomancePoint: time is too large"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    const-string/jumbo v1, "BCTradeSDK"

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->getMonitorPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/cGb;->sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method

.method public static sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilityFailure"

    const-string/jumbo v2, "label/errMsg is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lc8/eGb;->getUsabilityMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/gGb;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilityFailure"

    const-string/jumbo v2, "usabilityErrorMsg is null !"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lc8/hGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v2

    const-string/jumbo v3, "BCTradeSDK"

    invoke-virtual {v0}, Lc8/gGb;->getErrorCodeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc8/gGb;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v4, v0}, Lc8/cGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilityFailure"

    const-string/jumbo v2, "monitorPoint/errCode is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lc8/hGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v1

    const-string/jumbo v2, "BCTradeSDK"

    if-nez p1, :cond_2

    const-string/jumbo p1, ""

    :cond_2
    invoke-virtual {v1, v2, v0, p2, p1}, Lc8/cGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendUseabilitySuccess(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lc8/hGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilityFailure"

    const-string/jumbo v2, "label/errMsg is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lc8/hGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v1

    const-string/jumbo v2, "BCTradeSDK"

    invoke-virtual {v1, v2, v0}, Lc8/cGb;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startInitTimeRecord()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc8/hGb;->b:J

    return-void
.end method
