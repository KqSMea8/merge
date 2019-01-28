.class public Lc8/cGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/fGb;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lc8/cGb;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/cGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/cGb;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/cGb;->f:Z

    invoke-virtual {p0}, Lc8/cGb;->init()V

    return-void
.end method

.method private a()V
    .locals 4

    const-string/jumbo v0, "BCTradeSDK"

    const-string/jumbo v1, "init"

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string/jumbo v0, "BCTradeSDK"

    const-string/jumbo v1, "showH5"

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string/jumbo v0, "BCTradeSDK"

    const-string/jumbo v1, "showNative"

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowNative;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string/jumbo v0, "BCTradeSDK"

    const-string/jumbo v1, "urlLoad"

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/cGb;
    .locals 2

    const-class v1, Lc8/cGb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/cGb;->e:Lc8/cGb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/cGb;

    invoke-direct {v0}, Lc8/cGb;-><init>()V

    sput-object v0, Lc8/cGb;->e:Lc8/cGb;

    :cond_0
    sget-object v0, Lc8/cGb;->e:Lc8/cGb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "getArg : appkey/sdkversion/channel is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AlibcUserTracker"

    const-string/jumbo v1, "getArg"

    const-string/jumbo v2, "appkey/sdkversion/channel is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lc8/dGb;

    invoke-direct {v0}, Lc8/dGb;-><init>()V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/dGb;->appKey:Ljava/lang/String;

    sget-object v1, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    iput-object v1, v0, Lc8/dGb;->sdkVersion:Ljava/lang/String;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getChannel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/dGb;->channel:Ljava/lang/String;

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultUserTrackerId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lc8/vFb;->getUtdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lc8/hGb;->startInitTimeRecord()V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/cGb;->c:Ljava/lang/String;

    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    iput-object v0, p0, Lc8/cGb;->b:Landroid/content/Context;

    invoke-direct {p0}, Lc8/cGb;->a()V

    invoke-static {}, Lc8/hGb;->endInitTimeRecord()V

    return-void
.end method

.method public isThirdVersion()Z
    .locals 1

    iget-boolean v0, p0, Lc8/cGb;->f:Z

    return v0
.end method

.method public registerPerformancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerPerformancePoint"

    const-string/jumbo v2, "module/monitorPoint/measureSet/dimensionSet is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 8

    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object v1, p6

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    const-string/jumbo v2, "aliTradesdk"

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    const-string/jumbo v2, "aliTradesdk"

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 4

    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8c03\u7528ut\u6253\u70b9\uff0c\u4f20\u5165\u53c2\u6570\u4fe1\u606f\u4e3a\uff1alabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " prop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v0, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setDurationOnEvent(J)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-virtual {v0, p4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-virtual {v0, p5}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lc8/cGb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8c03\u7528ut\u6253\u70b9\uff0c\u7ecf\u8fc7UTHitBuilders\u6784\u9020\u540e\u53c2\u6570\u4e3a\uff1amap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    const-string/jumbo v2, "aliTradesdk"

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-wide/16 v2, 0x3c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-wide/16 v2, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const-wide/16 v2, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendInitHit4DAU()V
    .locals 4

    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v1, "80001"

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "model"

    const-string/jumbo v3, "trade"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "version"

    sget-object v3, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    const-string/jumbo v2, "19"

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPerfomancePoint"

    const-string/jumbo v2, "module/monitorPoint/measureValueSet/dimensionValueSet is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPerfomancePoint:module/monitorPoint/measureValueSet/dimensionValueSet is null!"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method

.method public sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilityFailure"

    const-string/jumbo v2, "module/monitorPoint/errorCode/errorMsg is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lc8/cGb;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3, p4}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lc8/cGb;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendUseabilitySuccess"

    const-string/jumbo v2, "module/monitorPoint is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lc8/cGb;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSampling()V
    .locals 1

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getAppMonitorSampling()I

    move-result v0

    invoke-static {v0}, Lc8/LVb;->setSampling(I)V

    invoke-static {v0}, Lc8/KVb;->setSampling(I)V

    return-void
.end method

.method public updateUserTrackerProperties(Ljava/util/Map;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "user_nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "user_nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTAnalytics;->userRegister(Ljava/lang/String;)V

    const-string/jumbo v1, "user_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "user_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    const-string/jumbo v0, "app_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/cGb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lc8/cGb;->d:Ljava/lang/String;

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
