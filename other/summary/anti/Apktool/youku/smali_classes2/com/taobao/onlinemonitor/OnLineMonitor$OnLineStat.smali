.class public Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLineStat"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

.field public batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

.field public cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

.field public deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

.field public iOStat:Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

.field public isActivityLoading:Z

.field public isActivityTouched:Z

.field public isFirstInstall:Z

.field public isFlingMode:Z

.field public isFullInBackGround:Z

.field public isInBackGround:Z

.field public isSystemIdle:Z

.field public isTouchMode:Z

.field public mHomeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

.field public performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

.field public preparePidTime:I

.field public recommendPoolCoreSize:S

.field public recommendPoolMaxSize:S

.field public trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5831
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    .line 5844
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->iOStat:Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;

    .line 5845
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    .line 5846
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    .line 5847
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    .line 5848
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->trafficStatsInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;

    .line 5849
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    .line 5850
    new-instance v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    return-void
.end method
