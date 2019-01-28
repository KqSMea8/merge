.class public Lc8/DAb;
.super Ljava/lang/Object;
.source "ConfigArrivedMonitor.java"

# interfaces
.implements Lc8/xzb;


# static fields
.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# instance fields
.field private mCurrentValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/DAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/DAb;->mCurrentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v0

    const-string/jumbo v1, "test_config_arrival_rate"

    invoke-virtual {v0, v1, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V

    .line 24
    return-void
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "key"

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    const-string/jumbo v2, "value"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v9, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v1, p0, Lc8/DAb;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "arrival_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v1, "app_start_time"

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/qAb;->getSessionTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lc8/DAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v2, Lc8/JAb;->CONFIG_ARRIVE:I

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 38
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "json"

    aput-object v2, v1, v6

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v9, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .end local v0    # "args":Ljava/util/Map;
    :cond_0
    iput-object p2, p0, Lc8/DAb;->mCurrentValue:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v0

    const-string/jumbo v1, "test_config_arrival_rate"

    invoke-virtual {v0, v1, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V

    .line 20
    return-void
.end method
