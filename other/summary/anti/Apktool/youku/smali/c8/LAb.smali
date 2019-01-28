.class public Lc8/LAb;
.super Ljava/lang/Object;
.source "SelfMonitorHandle.java"

# interfaces
.implements Lc8/KAb;


# static fields
.field private static instance:Lc8/LAb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lc8/LAb;

    invoke-direct {v0}, Lc8/LAb;-><init>()V

    sput-object v0, Lc8/LAb;->instance:Lc8/LAb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/LAb;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/LAb;->instance:Lc8/LAb;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lc8/JAb;)V
    .locals 0
    .param p1, "event"    # Lc8/JAb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    :try_start_0
    sget-object v1, Lc8/ODb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    :try_start_1
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v1

    iget-object v1, v1, Lc8/gBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :goto_1
    :try_start_2
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v1

    iget-object v1, v1, Lc8/fBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    :goto_2
    :try_start_3
    sget-object v1, Lc8/qBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 48
    :goto_3
    :try_start_4
    sget-object v1, Lc8/UAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 53
    :goto_4
    :try_start_5
    sget-object v1, Lc8/TAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 58
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/ut/mini/core/UTLogTransferMain;->getInstance()Lcom/ut/mini/core/UTLogTransferMain;

    move-result-object v1

    iget-object v1, v1, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 63
    :goto_6
    :try_start_7
    sget-object v1, Lc8/Jzb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 68
    :goto_7
    :try_start_8
    sget-object v1, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 73
    :goto_8
    :try_start_9
    sget-object v1, Lc8/DAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lc8/KAb;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 77
    :goto_9
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 44
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 50
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public onEvent(Lc8/JAb;)V
    .locals 6
    .param p1, "event"    # Lc8/JAb;

    .prologue
    .line 85
    iget-object v0, p1, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, v1, :cond_1

    .line 86
    const-string/jumbo v0, "AppMonitor"

    iget-object v1, p1, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    iget-object v2, p1, Lc8/JAb;->arg:Ljava/lang/String;

    iget-object v3, p1, Lc8/JAb;->value:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lc8/LDb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p1, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, v1, :cond_0

    .line 88
    const-string/jumbo v0, "AppMonitor"

    iget-object v1, p1, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    iget-object v2, p1, Lc8/JAb;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object v3, p1, Lc8/JAb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v0, v1, v2, v3}, Lc8/NDb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method
