.class public Lc8/Mef;
.super Ljava/lang/Object;
.source "TaobaoOnlineStatistics.java"

# interfaces
.implements Lc8/psf;


# static fields
.field public static final MAX_TIME:I = 0x7530

.field public static sTestAppMonitorLog:Z

.field public static sUseMotuWatch:Z

.field public static sUseWatchAtlasBundle:Z


# instance fields
.field public TAG:Ljava/lang/String;

.field mAnrReg:Z

.field mBlockOrCloseGuard:Z

.field mCommitResourceReg:Z

.field mFieldThread:Ljava/lang/reflect/Field;

.field mFieldWorkers:Ljava/lang/reflect/Field;

.field mGotoSleepReg:Z

.field mIsHotBootCommit:Z

.field mMemoryLeackRegisted:Z

.field mOnMemoryProblemReg:Z

.field mSmoothRegisted:Z

.field mStringBuilderForLog:Ljava/lang/StringBuilder;

.field mThreadPoolRegisted:Z

.field mWhiteScreenRegisted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Mef;->sUseWatchAtlasBundle:Z

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Mef;->sTestAppMonitorLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "OnLineMonitor"

    iput-object v0, p0, Lc8/Mef;->TAG:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lc8/Mef;->mSmoothRegisted:Z

    .line 40
    iput-boolean v1, p0, Lc8/Mef;->mMemoryLeackRegisted:Z

    .line 41
    iput-boolean v1, p0, Lc8/Mef;->mBlockOrCloseGuard:Z

    .line 42
    iput-boolean v1, p0, Lc8/Mef;->mAnrReg:Z

    .line 43
    iput-boolean v1, p0, Lc8/Mef;->mIsHotBootCommit:Z

    .line 44
    iput-boolean v1, p0, Lc8/Mef;->mThreadPoolRegisted:Z

    .line 45
    iput-boolean v1, p0, Lc8/Mef;->mWhiteScreenRegisted:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    .line 55
    :try_start_0
    sget-boolean v0, Lc8/Mef;->sUseWatchAtlasBundle:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lc8/Ief;->startBundleWatch()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "info"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .prologue
    const/high16 v9, 0x44800000    # 1024.0f

    const/high16 v8, 0x42c80000    # 100.0f

    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    const-string/jumbo v3, ""

    .line 247
    :goto_0
    return-object v3

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v3, "model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",brand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileBrand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",CpuModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",CpuBrand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",GpuModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",GpuBrand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuBrand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",GpuFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",CpuArch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuArch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",IsRoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-boolean v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isRooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ScreenWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ScreenHeght="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenHeght:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",Density="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",DeviceTotalAvailMem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",DeviceAvailMemPercent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",DeviceRemainMem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",DeviceRemainMemPercent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    mul-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",MemoryThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->memoryThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",MaxJavaAvailMem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->maxCanUseJavaMemory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",RemainAvailMemory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",JavaUsedMemPercent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalJavaPercent:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",TotalMemoryPercent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalMemoryPercent:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryGraphics="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryGraphics:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryStack:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryCode:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summarySystem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summarySystem:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryJavaHeap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryJavaHeap:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryNativeHeap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryNativeHeap:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryPrivateOther="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryPrivateOther:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryTotalpss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryTotalpss:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",summaryTotalswap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->summaryTotalswap:I

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",databaseMemory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->databaseMemory:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    div-float/2addr v4, v9

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",totalUss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalUss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",MemoryAlert="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-boolean v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->memoryAlert:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherSo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherSo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherApk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherApk:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherJar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherJar:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherTtf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherTtf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherDex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherDex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherOat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherOat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherArt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherArt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherMap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OtherAshmem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherAshmem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",finalizerSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->finalizerSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",majorFault="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->majorFault:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",blockingGCCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->blockingGCCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",blockingGCTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalBlockingGCTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pidWaitSum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pidWaitMax="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitMax:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pidWaitCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidWaitCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",InnerStoreSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeTotalSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",InnerStoreFreeSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeTotalSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    if-lez v3, :cond_3

    .line 235
    const-string/jumbo v3, ",CpuFreqList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    if-ge v1, v3, :cond_3

    .line 237
    iget-object v3, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 238
    iget-object v3, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 239
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p3, "info"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .prologue
    .line 305
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Mef;->mSmoothRegisted:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 309
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "activityName"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "CpuCore"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "APILevel"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "IsLowMemroy"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "MemoryLevel"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "onCreate"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "firstCreate"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "isHotLauncher"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v20

    const-string/jumbo v21, "Info"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v7

    .line 313
    .local v7, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "StayTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "JankTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "IdleTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "FrameTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "JankCount"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "FrameCount"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "DeviceMem"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountOne"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountTwo"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountThree"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountFour"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountFive"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountSix"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountSeven"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountEight"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountNine"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountTen"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountEleven"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "BadCountTwelve"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "loadTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "EnterIdleTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "CpuMaxFreq"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "DeviceAvailMem"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "TotalUsedMem"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "RemainMem"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "NativeHeapSize"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "JavaHeapSize"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "SysCpuPercent"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "PidCpuPercent"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "SysLoadAvg"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "RuntimeThread"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "RunningThread"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "ActivityScore"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "DeviceScore"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "SysScore"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "PidScore"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "RunningProgress"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "RunningService"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "StartActivityTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "LoadSmUsedTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "LoadSmCount"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "LoadBadSmCount"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "LoadBadSmUsedTime"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "OpenFileCount"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "TotalTx"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v20

    const-string/jumbo v21, "TotalRx"

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    .line 337
    .local v15, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Mef;->mSmoothRegisted:Z

    .line 338
    const-string/jumbo v20, "system"

    const-string/jumbo v21, "activityload"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v15, v7, v2}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 340
    .end local v7    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v15    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lc8/Mef;->onCommitResource(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 341
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v8

    .line 342
    .local v8, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v16

    .line 344
    .local v16, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v20, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 345
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget v21, v21, v22

    add-int v4, v20, v21

    .line 347
    .local v4, "count11":I
    const/4 v5, 0x0

    .line 348
    .local v5, "count12":I
    const/16 v12, 0xf

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 349
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    add-int v5, v5, v20

    .line 348
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 351
    :cond_3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v21, v0

    div-int v11, v20, v21

    .line 353
    .local v11, "fps":I
    const/16 v20, 0x3c

    move/from16 v0, v20

    if-le v11, v0, :cond_4

    .line 354
    const/16 v11, 0x3c

    .line 356
    :cond_4
    const/high16 v20, 0x42c80000    # 100.0f

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x64

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x4184cccd    # 16.6f

    div-float v22, v22, v23

    div-float v21, v21, v22

    sub-float v14, v20, v21

    .line 357
    .local v14, "lost":F
    const/16 v18, 0x0

    .line 359
    .local v18, "stuckRate":F
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0x5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0xa

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x14

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x28

    add-int v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x50

    add-int v20, v20, v21

    mul-int/lit16 v0, v4, 0x96

    move/from16 v21, v0

    add-int v20, v20, v21

    mul-int/lit16 v0, v5, 0xc8

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 364
    .local v19, "tempSize":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3e800000    # 0.25f

    mul-float v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3e99999a    # 0.3f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const v21, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    add-float v20, v20, v19

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v19

    div-float v18, v20, v21

    .line 366
    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v20, v20, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    rsub-int/lit8 v20, v20, 0x64

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 370
    .end local v19    # "tempSize":F
    :goto_2
    sget-boolean v20, Lc8/msf;->sPerformanceLog:Z

    if-eqz v20, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", StayTime\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  FrameTime\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  FrameCount\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", >16.6msTime\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmUsedTime:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  >16.6msCount\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  FPS\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  LostFrames\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    div-int/lit8 v21, v21, 0x64

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "%,  SM\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    div-int/lit8 v21, v21, 0x64

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6
    sget-boolean v20, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v20, :cond_8

    .line 384
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v20, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    :goto_3
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 386
    const-string/jumbo v20, "badCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v12, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3a

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 388
    :cond_7
    const-string/jumbo v20, "badCount"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3a

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "badCount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3a

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const-string/jumbo v20, "StayTime"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 393
    const-string/jumbo v20, "JankTime"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 394
    const-string/jumbo v20, "IdleTime"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->stayTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 395
    const-string/jumbo v20, "JankCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalBadSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 396
    const-string/jumbo v20, "FrameCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 397
    const-string/jumbo v20, "FrameTime"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityTotalSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 398
    const-string/jumbo v20, "BadCountOne"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 399
    const-string/jumbo v20, "BadCountTwo"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 400
    const-string/jumbo v20, "BadCountThree"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 401
    const-string/jumbo v20, "BadCountFour"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 402
    const-string/jumbo v20, "BadCountFive"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 403
    const-string/jumbo v20, "BadCountSix"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 404
    const-string/jumbo v20, "BadCountSeven"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 405
    const-string/jumbo v20, "BadCountEight"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 406
    const-string/jumbo v20, "BadCountNine"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 407
    const-string/jumbo v20, "BadCountTen"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 408
    const-string/jumbo v20, "BadCountEleven"

    int-to-double v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 409
    const-string/jumbo v20, "BadCountTwelve"

    int-to-double v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 410
    const-string/jumbo v20, "LoadSmUsedTime"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 411
    const-string/jumbo v20, "LoadSmCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 412
    const-string/jumbo v20, "LoadBadSmCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 413
    const-string/jumbo v20, "LoadBadSmUsedTime"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmUsedTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 414
    const-string/jumbo v20, "TotalTx"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalTx:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 415
    const-string/jumbo v20, "TotalRx"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalRx:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 419
    .end local v4    # "count11":I
    .end local v5    # "count12":I
    .end local v11    # "fps":I
    .end local v12    # "i":I
    .end local v14    # "lost":F
    .end local v18    # "stuckRate":F
    :cond_9
    move-object/from16 v0, p3

    iget v13, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    .line 420
    .local v13, "loadTime":I
    move-object/from16 v0, p3

    iget v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    .line 421
    .local v10, "entertime":I
    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v20, v0

    if-ltz v20, :cond_a

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v20, v0

    const/16 v21, 0x7530

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 422
    :cond_a
    const/4 v13, 0x0

    .line 424
    :cond_b
    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v20, v0

    if-ltz v20, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    move/from16 v20, v0

    const/16 v21, 0x7530

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 425
    :cond_c
    const/4 v10, 0x0

    .line 427
    :cond_d
    sget-boolean v20, Lc8/msf;->sPerformanceLog:Z

    if-eqz v20, :cond_e

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  LoadingTime : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ms , onCreate : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isColdOpen:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", FirstOpen : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isFistTimeOpen:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mStringBuilderForLog:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_e
    const-string/jumbo v20, "loadTime"

    int-to-double v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 437
    const-string/jumbo v20, "EnterIdleTime"

    int-to-double v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 438
    const-string/jumbo v20, "DeviceMem"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 440
    const-string/jumbo v20, "BlockingGCCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 441
    const-string/jumbo v20, "GcCount"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->gcCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 442
    const-string/jumbo v20, "CpuMaxFreq"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 443
    const-string/jumbo v20, "DeviceAvailMem"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 444
    const-string/jumbo v20, "RemainMem"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 445
    const-string/jumbo v20, "TotalUsedMem"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memMax:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 446
    const-string/jumbo v20, "NativeHeapSize"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->nativeMax:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 447
    const-string/jumbo v20, "JavaHeapSize"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->javaMax:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 448
    const-string/jumbo v20, "SysCpuPercent"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 449
    const-string/jumbo v20, "PidCpuPercent"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 450
    const-string/jumbo v20, "SysLoadAvg"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidPerCpuLoadAvg:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 451
    const-string/jumbo v20, "RuntimeThread"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 452
    const-string/jumbo v20, "RunningThread"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 453
    const-string/jumbo v20, "DeviceScore"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 454
    const-string/jumbo v20, "SysScore"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 455
    const-string/jumbo v20, "PidScore"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 456
    const-string/jumbo v20, "RunningProgress"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 457
    const-string/jumbo v20, "RunningService"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 458
    const-string/jumbo v20, "ActivityScore"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityScore:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 459
    const-string/jumbo v20, "StartActivityTime"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->startActivityTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 460
    const-string/jumbo v20, "OpenFileCount"

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->openFile:S

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 463
    const-string/jumbo v20, "activityName"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 464
    const-string/jumbo v20, "CpuCore"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 465
    const-string/jumbo v20, "APILevel"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 466
    const-string/jumbo v21, "IsLowMemroy"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    const-string/jumbo v20, "true"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 467
    const-string/jumbo v20, "MemoryLevel"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 468
    const-string/jumbo v21, "onCreate"

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isColdOpen:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    const-string/jumbo v20, "true"

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 469
    const-string/jumbo v21, "firstCreate"

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isFistTimeOpen:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    const-string/jumbo v20, "true"

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 470
    const-string/jumbo v21, "isHotLauncher"

    invoke-static {}, Lc8/osf;->isCodeBoot()Z

    move-result v20

    if-nez v20, :cond_15

    const-string/jumbo v20, "true"

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 473
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v20, "Info"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 475
    sget-boolean v20, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v20, :cond_f

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onActivityPaused Info ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_f
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v20, :cond_0

    .line 489
    .end local v6    # "deviceInfo":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    sget-boolean v20, Lc8/osf;->sIsDebug:Z

    if-eqz v20, :cond_11

    :cond_10
    sget-boolean v20, Lc8/Mef;->sTestAppMonitorLog:Z

    if-eqz v20, :cond_0

    .line 493
    :cond_11
    const-string/jumbo v20, "system"

    const-string/jumbo v21, "activityload"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-static {v0, v1, v8, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 466
    :cond_12
    const-string/jumbo v20, "false"

    goto/16 :goto_4

    .line 468
    :cond_13
    const-string/jumbo v20, "false"

    goto/16 :goto_5

    .line 469
    :cond_14
    const-string/jumbo v20, "false"

    goto/16 :goto_6

    .line 470
    :cond_15
    const-string/jumbo v20, "false"

    goto/16 :goto_7

    .line 484
    :catch_0
    move-exception v9

    .line 485
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "entertime":I
    .end local v13    # "loadTime":I
    .restart local v4    # "count11":I
    .restart local v5    # "count12":I
    .restart local v11    # "fps":I
    .restart local v12    # "i":I
    .restart local v14    # "lost":F
    .restart local v18    # "stuckRate":F
    :catch_1
    move-exception v20

    goto/16 :goto_2
.end method

.method public onAnr(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/Map;)V
    .locals 20
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p3, "mapThreadStackTraceElement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/Mef;->mAnrReg:Z

    if-nez v15, :cond_0

    .line 939
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "fileName"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "stack"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "activityname"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "CpuCore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "APILevel"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "IsLowMemroy"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "MemoryLevel"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "Info"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 941
    .local v3, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "CpuMaxFreq"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "TotalUsedMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SysCpuPercent"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "PidCpuPercent"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SysLoadAvg"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RuntimeThread"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RunningThread"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SysScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "PidScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RunningProgress"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RunningService"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    .line 952
    .local v9, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "anr"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 953
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/Mef;->mAnrReg:Z

    .line 956
    .end local v3    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v9    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v15, 0x1f4

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 957
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 958
    .local v14, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 959
    .local v6, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v6, :cond_1

    .line 960
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    .line 961
    .local v13, "thread":Ljava/lang/Thread;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/StackTraceElement;

    .line 962
    .local v12, "stackTraceElements":[Ljava/lang/StackTraceElement;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    cmp-long v15, v16, v18

    if-nez v15, :cond_1

    .line 966
    if-eqz v12, :cond_2

    .line 967
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v12

    if-ge v7, v15, :cond_2

    const/16 v15, 0xa

    if-ge v7, v15, :cond_2

    .line 968
    aget-object v15, v12, v7

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 974
    .end local v6    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v7    # "i":I
    .end local v12    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v13    # "thread":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 1020
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :cond_3
    :goto_1
    return-void

    .line 979
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v4

    .line 980
    .local v4, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v10

    .line 983
    .local v10, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v15, "CpuMaxFreq"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 984
    const-string/jumbo v15, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 985
    const-string/jumbo v15, "SysCpuPercent"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 986
    const-string/jumbo v15, "PidCpuPercent"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 987
    const-string/jumbo v15, "SysLoadAvg"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidPerCpuLoadAvg:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 988
    const-string/jumbo v15, "RuntimeThread"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 989
    const-string/jumbo v15, "RunningThread"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 990
    const-string/jumbo v15, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 991
    const-string/jumbo v15, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 992
    const-string/jumbo v15, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 993
    const-string/jumbo v15, "RunningProgress"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 994
    const-string/jumbo v15, "RunningService"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 997
    const-string/jumbo v15, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 998
    const-string/jumbo v15, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 999
    const-string/jumbo v16, "IsLowMemroy"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-boolean v15, v15, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    if-eqz v15, :cond_6

    const-string/jumbo v15, "true"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1000
    const-string/jumbo v15, "MemoryLevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1001
    const-string/jumbo v15, "stack"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1002
    const-string/jumbo v15, "fileName"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1003
    const-string/jumbo v15, "activityname"

    move-object/from16 v0, p2

    invoke-virtual {v4, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :try_start_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v15, "Info"

    invoke-virtual {v4, v15, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1007
    sget-boolean v15, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v15, :cond_5

    .line 1008
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onAnr Info ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    .end local v2    # "deviceInfo":Ljava/lang/String;
    :cond_5
    :goto_3
    :try_start_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-boolean v15, v15, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    if-nez v15, :cond_3

    .line 1016
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "anr"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4, v10}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_1

    .line 1020
    .end local v4    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 999
    .restart local v4    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    :cond_6
    const-string/jumbo v15, "false"

    goto/16 :goto_2

    .line 1010
    :catch_1
    move-exception v5

    .line 1011
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "type"    # I
    .param p3, "typeString"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "threadName"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "size"    # I

    .prologue
    .line 275
    iget-boolean v4, p0, Lc8/Mef;->mBlockOrCloseGuard:Z

    if-nez v4, :cond_0

    .line 276
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "activityName"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "threadName"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "typeString"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "stacks"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 278
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "size"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 279
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "system"

    const-string/jumbo v5, "BlockOrCloseGuard"

    invoke-static {v4, v5, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 281
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/Mef;->mBlockOrCloseGuard:Z

    .line 284
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 285
    .local v1, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 286
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "typeString"

    invoke-virtual {v1, v4, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 287
    const-string/jumbo v4, "activityName"

    invoke-virtual {v1, v4, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 288
    const-string/jumbo v4, "threadName"

    invoke-virtual {v1, v4, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 289
    const-string/jumbo v4, "stacks"

    invoke-virtual {v1, v4, p6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 290
    const-string/jumbo v4, "type"

    int-to-double v6, p2

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 291
    const-string/jumbo v4, "size"

    int-to-double v6, p7

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 293
    const-string/jumbo v4, "system"

    const-string/jumbo v5, "BlockOrCloseGuard"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 295
    return-void
.end method

.method public onBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;JJZLjava/lang/String;)V
    .locals 8
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "bootTime"    # J
    .param p4, "bootTotaltime"    # J
    .param p6, "isColdBoot"    # Z
    .param p7, "extraType"    # Ljava/lang/String;

    .prologue
    .line 72
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_0

    const-wide/16 v6, 0x7530

    cmp-long v5, p2, v6

    if-gtz v5, :cond_0

    .line 73
    if-nez p6, :cond_1

    iget-boolean v5, p0, Lc8/Mef;->mIsHotBootCommit:Z

    if-eqz v5, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "isFirstInstall"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "CpuCore"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "APILevel"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "IsLowMemory"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "MemoryLevel"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    const-string/jumbo v6, "BootType"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 80
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    sget-boolean v5, Lc8/Lef;->sIsInTaobao:Z

    if-eqz v5, :cond_2

    .line 81
    const-string/jumbo v5, "Info"

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 84
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "BootTotalTime"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "loadTime"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "BlockingGCCount"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "CpuMaxFreq"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "DeviceMem"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "DeviceAvailMem"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "TotalUsedMem"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "RemainMem"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "NativeHeapSize"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "JavaHeapSize"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "SysCpuPercent"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "PidCpuPercent"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "IOWaitTime"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "SysLoadAvg"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "RuntimeThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "RunningThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "DeviceScore"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "SysScore"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "PidScore"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "RunningProgress"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "RunningService"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "PidPrepareTime"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string/jumbo v6, "AdvTime"

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 95
    .local v3, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v5, "system"

    const-string/jumbo v6, "LaunchAll"

    invoke-static {v5, v6, v3, v1}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 97
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    .line 98
    .local v2, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    .line 111
    .local v4, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v5, "BootTotalTime"

    long-to-double v6, p4

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 113
    const-string/jumbo v5, "loadTime"

    long-to-double v6, p2

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 115
    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v5, :cond_3

    .line 116
    const-string/jumbo v5, "BlockingGCCount"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->blockGc:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 117
    const-string/jumbo v5, "IOWaitTime"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitSumAvg:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 118
    const-string/jumbo v5, "IOWaitCount"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->pidIoWaitCount:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 121
    :cond_3
    const-string/jumbo v5, "CpuMaxFreq"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 122
    const-string/jumbo v5, "DeviceAvailMem"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 123
    const-string/jumbo v5, "TotalUsedMem"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 124
    const-string/jumbo v5, "RemainMem"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 125
    const-string/jumbo v5, "NativeHeapSize"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 126
    const-string/jumbo v5, "JavaHeapSize"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 127
    const-string/jumbo v5, "SysCpuPercent"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 128
    const-string/jumbo v5, "PidCpuPercent"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 129
    const-string/jumbo v5, "SysLoadAvg"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->systemLoadAvg:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 130
    const-string/jumbo v5, "RuntimeThread"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 131
    const-string/jumbo v5, "RunningThread"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 132
    const-string/jumbo v5, "DeviceScore"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 133
    const-string/jumbo v5, "SysScore"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 134
    const-string/jumbo v5, "PidScore"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 135
    const-string/jumbo v5, "RunningProgress"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 136
    const-string/jumbo v5, "RunningService"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 137
    const-string/jumbo v5, "DeviceMem"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 138
    const-string/jumbo v5, "PidPrepareTime"

    iget v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->preparePidTime:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 139
    const-string/jumbo v5, "AdvTime"

    sget v6, Lc8/osf;->sAdvertisementTime:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 141
    const-string/jumbo v6, "isFirstInstall"

    iget-boolean v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "true"

    :goto_1
    invoke-virtual {v2, v6, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 142
    const-string/jumbo v5, "CpuCore"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 144
    const-string/jumbo v5, "APILevel"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 145
    const-string/jumbo v6, "IsLowMemory"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-boolean v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "true"

    :goto_2
    invoke-virtual {v2, v6, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 146
    const-string/jumbo v5, "MemoryLevel"

    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v6, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 147
    if-eqz p6, :cond_a

    .line 148
    const-string/jumbo v5, "BootType"

    invoke-virtual {v2, v5, p7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 156
    :goto_3
    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-virtual {p0, p1, v5}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v5, "Info"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 158
    sget-boolean v5, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v5, :cond_4

    .line 159
    iget-object v5, p0, Lc8/Mef;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DeviceInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/Mef;->mIsHotBootCommit:Z

    .line 166
    sget-boolean v5, Lc8/msf;->sPerformanceLog:Z

    if-eqz v5, :cond_5

    .line 167
    iget-object v5, p0, Lc8/Mef;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BootFirstTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", BootTotalTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", FirstInstall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", BootType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", CodeBoot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", AdvTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lc8/osf;->sAdvertisementTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5
    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-boolean v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lc8/osf;->sIsDebug:Z

    if-eqz v5, :cond_7

    :cond_6
    sget-boolean v5, Lc8/Mef;->sTestAppMonitorLog:Z

    if-eqz v5, :cond_0

    .line 172
    :cond_7
    const-string/jumbo v5, "system"

    const-string/jumbo v6, "LaunchAll"

    invoke-static {v5, v6, v2, v4}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "false"

    goto/16 :goto_1

    .line 145
    :cond_9
    const-string/jumbo v5, "false"

    goto/16 :goto_2

    .line 150
    :cond_a
    const-string/jumbo v5, "BootType"

    const-string/jumbo v6, "HotBoot"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto/16 :goto_3
.end method

.method public onBootPerformance(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/List;ZLjava/lang/String;J)V
    .locals 15
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p3, "isColdBoot"    # Z
    .param p4, "extraType"    # Ljava/lang/String;
    .param p5, "bootJiffyTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p2, "bootResourceUsedInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFirstInstall:Z

    if-eqz v9, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-boolean v9, v9, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    if-nez v9, :cond_0

    .line 1281
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string/jumbo v10, "MemoryLevel"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string/jumbo v10, "BootType"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string/jumbo v10, "InBootStep"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string/jumbo v10, "TaskName"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    .line 1287
    .local v2, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "DeviceMem"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "DeviceAvailMem"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "TotalUsedMem"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "RemainMem"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "NativeHeapSize"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "JavaHeapSize"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "SysCpuPercent"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PidCpuPercent"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "SysLoadAvg"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "ThreadCount"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "DeviceScore"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "SysScore"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PidScore"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "RunningProgress"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "RunningService"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PercentInBoot"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PercentInPid"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PercentInSystem"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "PercentInDevice"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "TaskUsedTime"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "TaskCpuTime"

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    .line 1302
    .local v5, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v9, "system"

    const-string/jumbo v10, "BootPerformance"

    invoke-static {v9, v10, v5, v2}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 1304
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 1305
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .line 1306
    .local v8, "resourceUsedInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 1307
    .local v3, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v6

    .line 1309
    .local v6, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v9, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1310
    const-string/jumbo v9, "SysScore"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1311
    const-string/jumbo v9, "PidScore"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1312
    const-string/jumbo v9, "ThreadCount"

    iget v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1314
    const-string/jumbo v9, "DeviceMem"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1315
    const-string/jumbo v9, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1316
    const-string/jumbo v9, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1317
    const-string/jumbo v9, "RemainMem"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1318
    const-string/jumbo v9, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1319
    const-string/jumbo v9, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    int-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1320
    const-string/jumbo v9, "SysLoadAvg"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->systemLoadAvg:F

    float-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1322
    const-string/jumbo v9, "TaskUsedTime"

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedTime:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1323
    const-string/jumbo v9, "TaskCpuTime"

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->debugUsedCpuTime:J

    long-to-double v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1324
    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-lez v9, :cond_4

    .line 1325
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    long-to-float v9, v10

    move-wide/from16 v0, p5

    long-to-float v10, v0

    div-float v7, v9, v10

    .line 1326
    .local v7, "percent":F
    const-string/jumbo v9, "PercentInBoot"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1327
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 1328
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    long-to-float v9, v10

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    long-to-float v10, v10

    div-float v7, v9, v10

    .line 1329
    const-string/jumbo v9, "PercentInSystem"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1331
    :cond_2
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 1332
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    long-to-float v9, v10

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    long-to-float v10, v10

    div-float v7, v9, v10

    .line 1333
    const-string/jumbo v9, "PercentInPid"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1335
    :cond_3
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 1336
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadJiffyTime:J

    long-to-float v9, v10

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    long-to-float v10, v10

    div-float v7, v9, v10

    .line 1337
    const-string/jumbo v9, "PercentInDevice"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1338
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    long-to-float v9, v10

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    long-to-float v10, v10

    div-float v7, v9, v10

    .line 1339
    const-string/jumbo v9, "PidCpuPercent"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1340
    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    long-to-float v9, v10

    iget-wide v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    long-to-float v10, v10

    div-float v7, v9, v10

    .line 1341
    const-string/jumbo v9, "SysCpuPercent"

    float-to-double v10, v7

    invoke-virtual {v6, v9, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1347
    .end local v7    # "percent":F
    :cond_4
    const-string/jumbo v9, "MemoryLevel"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v10, v10, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1348
    const-string/jumbo v9, "TaskName"

    iget-object v10, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1349
    const-string/jumbo v10, "InBootStep"

    iget-boolean v9, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->isInBootStep:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "true"

    :goto_2
    invoke-virtual {v3, v10, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1350
    if-eqz p3, :cond_6

    .line 1351
    const-string/jumbo v9, "BootType"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1358
    :goto_3
    const-string/jumbo v9, "system"

    const-string/jumbo v10, "BootPerformance"

    invoke-static {v9, v10, v3, v6}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1304
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1349
    :cond_5
    const-string/jumbo v9, "false"

    goto :goto_2

    .line 1353
    :cond_6
    const-string/jumbo v9, "BootType"

    const-string/jumbo v10, "HotBoot"

    invoke-virtual {v3, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1365
    .end local v2    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v3    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v4    # "i":I
    .end local v5    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v6    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v8    # "resourceUsedInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public onCommitResource(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V
    .locals 18
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "info"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .prologue
    .line 497
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->statisticsDiscard:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v15, v15, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/Mef;->mCommitResourceReg:Z

    if-nez v15, :cond_2

    .line 501
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "APILevel"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "activityName"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "Info"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 502
    .local v6, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceTotalAvailMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceAvailMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "TotalUsedMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RemainMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "NativeHeapSize"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "JavaHeapSize"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SysScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "PidScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "BitmapCount"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap565Count"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap8888Count"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "BitmapByte"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap1M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap2M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap4M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap6M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap8M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap10M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap12M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap15M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Bitmap20M"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SizeScreen"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Size2Screen"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SizeHashScreen"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "Size14Screen"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v13

    .line 526
    .local v13, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "BitmapStatic"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13, v6}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 528
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "APILevel"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "activityName"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "Info"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v15

    const-string/jumbo v16, "ClassName"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 529
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceTotalAvailMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceAvailMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "TotalUsedMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "RemainMem"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "NativeHeapSize"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "JavaHeapSize"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "DeviceScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "SysScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "PidScore"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    const-string/jumbo v16, "ClassCount"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v13

    .line 538
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "CleanerStatic"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13, v6}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 539
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/Mef;->mCommitResourceReg:Z

    .line 543
    .end local v6    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v13    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    iget v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    if-lez v15, :cond_6

    .line 544
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v7

    .line 545
    .local v7, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v14

    .line 546
    .local v14, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v15, "DeviceMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 547
    const-string/jumbo v15, "DeviceTotalAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 548
    const-string/jumbo v15, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 549
    const-string/jumbo v15, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 550
    const-string/jumbo v15, "RemainMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 551
    const-string/jumbo v15, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 552
    const-string/jumbo v15, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 553
    const-string/jumbo v15, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 554
    const-string/jumbo v15, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 555
    const-string/jumbo v15, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 557
    const-string/jumbo v15, "BitmapCount"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 558
    const-string/jumbo v15, "Bitmap565Count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap565Count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 559
    const-string/jumbo v15, "Bitmap8888Count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8888Count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 560
    const-string/jumbo v15, "BitmapByte"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapByteCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 561
    const-string/jumbo v15, "Bitmap1M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap1M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 562
    const-string/jumbo v15, "Bitmap2M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap2M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 563
    const-string/jumbo v15, "Bitmap4M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap4M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 564
    const-string/jumbo v15, "Bitmap6M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 565
    const-string/jumbo v15, "Bitmap8M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 566
    const-string/jumbo v15, "Bitmap10M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap10M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 567
    const-string/jumbo v15, "Bitmap12M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap12M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 568
    const-string/jumbo v15, "Bitmap15M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap15M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 569
    const-string/jumbo v15, "Bitmap20M"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap20M:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 570
    const-string/jumbo v15, "SizeScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeScreen:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 571
    const-string/jumbo v15, "Size2Screen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize2Screen:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 572
    const-string/jumbo v15, "SizeHashScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 573
    const-string/jumbo v15, "Size14Screen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSize14Screen:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 575
    const-string/jumbo v15, "activityName"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 576
    const-string/jumbo v15, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 577
    const-string/jumbo v15, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 578
    const/4 v2, 0x0

    .line 579
    .local v2, "bitmapJavaPercent":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v15, v15, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->maxCanUseJavaMemory:I

    if-lez v15, :cond_3

    .line 580
    move-object/from16 v0, p2

    iget v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapByteCount:I

    mul-int/lit8 v15, v15, 0x64

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->maxCanUseJavaMemory:I

    move/from16 v16, v0

    div-int v15, v15, v16

    div-int/lit16 v2, v15, 0x400

    .line 582
    :cond_3
    sget-boolean v15, Lc8/osf;->sIsDebug:Z

    if-eqz v15, :cond_5

    move-object/from16 v0, p2

    iget v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    if-gtz v15, :cond_4

    move-object/from16 v0, p2

    iget v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p2

    iget v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    if-gtz v15, :cond_4

    const/16 v15, 0x19

    if-lt v2, v15, :cond_5

    .line 583
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bitmap Check \uff0cactivityName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",bitmapCount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",bitmapJavaPercent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",Bitmap6M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap6M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Bitmap8M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap8M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Bitmap10M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap10M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Bitmap12M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap12M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Bitmap15M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap15M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Bitmap20M="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmap20M:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bitmapSizeHashScreen="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeHashScreen:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bitmapSizeScreen="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->bitmapSizeScreen:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v15, "Info"

    invoke-virtual {v7, v15, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    .end local v5    # "deviceInfo":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "BitmapStatic"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7, v14}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 598
    .end local v2    # "bitmapJavaPercent":I
    .end local v7    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v14    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_6
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    if-eqz v15, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 599
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->cleanerObjectMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 601
    .local v4, "cleanerSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 602
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 603
    .local v11, "integer":Ljava/lang/Integer;
    if-eqz v11, :cond_7

    .line 604
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 605
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 606
    .local v3, "classCount":I
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v7

    .line 607
    .restart local v7    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v14

    .line 608
    .restart local v14    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v15, "DeviceMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 609
    const-string/jumbo v15, "DeviceTotalAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 610
    const-string/jumbo v15, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 611
    const-string/jumbo v15, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 612
    const-string/jumbo v15, "RemainMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 613
    const-string/jumbo v15, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 614
    const-string/jumbo v15, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 615
    const-string/jumbo v15, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 616
    const-string/jumbo v15, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 617
    const-string/jumbo v15, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 618
    const-string/jumbo v15, "ClassCount"

    int-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 626
    const-string/jumbo v15, "ClassName"

    invoke-virtual {v7, v15, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 627
    const-string/jumbo v15, "activityName"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 628
    const-string/jumbo v15, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 629
    const-string/jumbo v15, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 631
    const-string/jumbo v15, "system"

    const-string/jumbo v16, "CleanerStatic"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7, v14}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 632
    sget-boolean v15, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v15, :cond_7

    .line 633
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Clearner activityName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", ClassName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",ClassCount="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 644
    .end local v3    # "classCount":I
    .end local v4    # "cleanerSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "integer":Ljava/lang/Integer;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v15

    goto/16 :goto_0

    .line 591
    .restart local v2    # "bitmapJavaPercent":I
    .restart local v7    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v14    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_1
    move-exception v8

    .line 592
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public onCreatePerformanceReport(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OutputData;)V
    .locals 0
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "outputData"    # Lcom/taobao/onlinemonitor/OutputData;

    .prologue
    .line 1370
    return-void
.end method

.method public onGotoSleep(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 28
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "threadInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .local p3, "mapBgInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "threadIoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Mef;->mGotoSleepReg:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 652
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "CpuCore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "APILevel"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "CpuUser"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "Info"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v8

    .line 653
    .local v8, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "DeviceTotalAvailMem"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "DeviceMem"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "CpuMaxFreq"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "DeviceAvailMem"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "TotalUsedMem"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "RemainMem"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "NativeHeapSize"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "JavaHeapSize"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "DeviceScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "SysScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "PidScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "MaxCpuSys"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "MaxCpuDev"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "CpuSys"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "CpuDev"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "IsThread"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v16

    .line 664
    .local v16, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v21, "system"

    const-string/jumbo v22, "OnGotoSleep"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 666
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "Thread"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v21

    const-string/jumbo v22, "Info"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v8

    .line 667
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "DeviceScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "SysScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "PidScore"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "RWTimes"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "RTimes"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "WTimes"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "NetTimes"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "nice"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "ioWaitCount"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v21

    const-string/jumbo v22, "ioWaitTime"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v16

    .line 678
    const-string/jumbo v21, "system"

    const-string/jumbo v22, "ThreadIoTimes"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 679
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Mef;->mGotoSleepReg:Z

    .line 682
    .end local v8    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v16    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    if-eqz p4, :cond_2

    .line 684
    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 685
    .local v19, "threadIoInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 686
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .line 687
    .local v18, "threadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    if-eqz v18, :cond_1

    .line 688
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 689
    .local v9, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v17

    .line 690
    .local v17, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v21, "RWTimes"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readWriteTimes:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 691
    const-string/jumbo v21, "RTimes"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->readTimes:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 692
    const-string/jumbo v21, "WTimes"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->writeTimes:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 693
    const-string/jumbo v21, "NetTimes"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->netTimes:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 694
    const-string/jumbo v21, "nice"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->nice:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 695
    const-string/jumbo v21, "ioWaitCount"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->ioWaitCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 696
    const-string/jumbo v21, "ioWaitTime"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->ioWaitTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 697
    const-string/jumbo v21, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 698
    const-string/jumbo v21, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 699
    const-string/jumbo v21, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 701
    const-string/jumbo v21, "Thread"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 702
    const-string/jumbo v21, "system"

    const-string/jumbo v22, "ThreadIoTimes"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v9, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v9    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v18    # "threadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    .end local v19    # "threadIoInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    :catch_0
    move-exception v21

    .line 713
    :cond_2
    if-eqz p3, :cond_8

    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v21

    if-lez v21, :cond_8

    .line 714
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 715
    .restart local v9    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v17

    .line 716
    .restart local v17    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v21, "CpuMaxFreq"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 717
    const-string/jumbo v21, "DeviceMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 718
    const-string/jumbo v21, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 719
    const-string/jumbo v21, "DeviceTotalAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 720
    const-string/jumbo v21, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 721
    const-string/jumbo v21, "RemainMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 722
    const-string/jumbo v21, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 723
    const-string/jumbo v21, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 724
    const-string/jumbo v21, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 725
    const-string/jumbo v21, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 726
    const-string/jumbo v21, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 727
    const-string/jumbo v21, "IsThread"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 728
    const/4 v15, 0x0

    .local v15, "maxPercentInPid":I
    const/4 v14, 0x0

    .local v14, "maxPercentInDevice":I
    const/4 v5, 0x0

    .local v5, "cpuPercentPid":I
    const/4 v4, 0x0

    .line 729
    .local v4, "cpuPercentDevice":I
    const-string/jumbo v21, "MaxCpuSysRun"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 730
    const-string/jumbo v21, "MaxCpuSysRun"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 731
    .local v13, "integer":Ljava/lang/Integer;
    if-eqz v13, :cond_3

    .line 732
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 733
    const-string/jumbo v21, "MaxCpuSys"

    int-to-double v0, v15

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 736
    .end local v13    # "integer":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v21, "MaxCpuSysTotal"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 737
    const-string/jumbo v21, "MaxCpuSysTotal"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 738
    .restart local v13    # "integer":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 739
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 740
    const-string/jumbo v21, "MaxCpuDev"

    int-to-double v0, v14

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 743
    .end local v13    # "integer":Ljava/lang/Integer;
    :cond_4
    const-string/jumbo v21, "CpuSysRun"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 744
    const-string/jumbo v21, "CpuSysRun"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 745
    .restart local v13    # "integer":Ljava/lang/Integer;
    if-eqz v13, :cond_5

    .line 746
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 747
    const-string/jumbo v21, "CpuSys"

    int-to-double v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 750
    .end local v13    # "integer":Ljava/lang/Integer;
    :cond_5
    const-string/jumbo v21, "CpuSysTotal"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 751
    const-string/jumbo v21, "CpuSysTotal"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 752
    .restart local v13    # "integer":Ljava/lang/Integer;
    if-eqz v13, :cond_6

    .line 753
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 754
    const-string/jumbo v21, "CpuDev"

    int-to-double v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 757
    .end local v13    # "integer":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v21, "CpuUser"

    const-string/jumbo v22, "MyApp"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 758
    const-string/jumbo v21, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 759
    const-string/jumbo v21, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 760
    sget-boolean v21, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v21, :cond_7

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Name=MyApp, MaxCpuSys="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",MaxCpuDev="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", CpuSys="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",CpuDev="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_7
    const-string/jumbo v21, "system"

    const-string/jumbo v22, "OnGotoSleep"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v9, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 773
    .end local v4    # "cpuPercentDevice":I
    .end local v5    # "cpuPercentPid":I
    .end local v9    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v14    # "maxPercentInDevice":I
    .end local v15    # "maxPercentInPid":I
    .end local v17    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_8
    if-eqz p2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v21

    if-lez v21, :cond_b

    .line 775
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    .line 777
    .local v20, "threadSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 778
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 779
    .local v18, "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v18, :cond_9

    .line 780
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mUtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mStime:J

    move-wide/from16 v24, v0

    add-long v6, v22, v24

    .line 781
    .local v6, "cpuTime":J
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_9

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_9

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstTotalTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_9

    .line 782
    move-object/from16 v0, v18

    iget-short v15, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInPid:S

    .line 783
    .restart local v15    # "maxPercentInPid":I
    move-object/from16 v0, v18

    iget-short v14, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxPercentInDevice:S

    .line 784
    .restart local v14    # "maxPercentInDevice":I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstTotalTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_c

    const-wide/16 v22, 0x64

    mul-long v22, v22, v6

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidLastTotalTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mPidFirstTotalTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 785
    .restart local v5    # "cpuPercentPid":I
    :goto_2
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceLastTotalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceFirstTotalTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_d

    const-wide/16 v22, 0x64

    mul-long v22, v22, v6

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceLastTotalTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mDeviceFirstTotalTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 787
    .restart local v4    # "cpuPercentDevice":I
    :goto_3
    const/16 v21, 0x1e

    move/from16 v0, v21

    if-gt v15, v0, :cond_a

    const/16 v21, 0xa

    move/from16 v0, v21

    if-gt v14, v0, :cond_a

    if-gtz v5, :cond_a

    if-lez v4, :cond_9

    .line 788
    :cond_a
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 789
    .restart local v9    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v17

    .line 790
    .restart local v17    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v21, "DeviceMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 791
    const-string/jumbo v21, "DeviceTotalAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 792
    const-string/jumbo v21, "CpuMaxFreq"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 793
    const-string/jumbo v21, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 794
    const-string/jumbo v21, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 795
    const-string/jumbo v21, "RemainMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 796
    const-string/jumbo v21, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 797
    const-string/jumbo v21, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 798
    const-string/jumbo v21, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 799
    const-string/jumbo v21, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 800
    const-string/jumbo v21, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 801
    const-string/jumbo v21, "IsThread"

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 802
    const-string/jumbo v21, "MaxCpuSys"

    int-to-double v0, v15

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 803
    const-string/jumbo v21, "MaxCpuDev"

    int-to-double v0, v14

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 804
    const-string/jumbo v21, "CpuSys"

    int-to-double v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 805
    const-string/jumbo v21, "CpuDev"

    int-to-double v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 813
    const-string/jumbo v21, "CpuUser"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 814
    const-string/jumbo v21, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 815
    const-string/jumbo v21, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 816
    const-string/jumbo v21, "system"

    const-string/jumbo v22, "OnGotoSleep"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v9, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 817
    sget-boolean v21, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v21, :cond_9

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", MaxCpuSys="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",MaxCpuDev="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", CpuSys="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",CpuDev="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 830
    .end local v4    # "cpuPercentDevice":I
    .end local v5    # "cpuPercentPid":I
    .end local v6    # "cpuTime":J
    .end local v9    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "maxPercentInDevice":I
    .end local v15    # "maxPercentInPid":I
    .end local v17    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v18    # "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v20    # "threadSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    :catch_1
    move-exception v21

    :cond_b
    return-void

    .line 784
    .restart local v6    # "cpuTime":J
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "maxPercentInDevice":I
    .restart local v15    # "maxPercentInPid":I
    .restart local v18    # "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    .restart local v20    # "threadSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 785
    .restart local v5    # "cpuPercentPid":I
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public onMemoryLeak(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "leaksize"    # J
    .param p4, "leakPath"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-boolean v3, p0, Lc8/Mef;->mMemoryLeackRegisted:Z

    if-nez v3, :cond_0

    .line 258
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    const-string/jumbo v4, "activityName"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    const-string/jumbo v4, "chain"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 259
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    const-string/jumbo v4, "leakSize"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 260
    const-string/jumbo v3, "system"

    const-string/jumbo v4, "activityLeak"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 262
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/Mef;->mMemoryLeackRegisted:Z

    .line 264
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 265
    .local v1, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 266
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "leakSize"

    long-to-double v4, p2

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 267
    const-string/jumbo v3, "activityName"

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 268
    const-string/jumbo v3, "chain"

    invoke-virtual {v1, v3, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 269
    const-string/jumbo v3, "system"

    const-string/jumbo v4, "activityLeak"

    invoke-static {v3, v4, v1, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 271
    return-void
.end method

.method public onMemoryProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "memoryType"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "activityStacks"    # Ljava/lang/String;
    .param p5, "threads"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-boolean v6, p0, Lc8/Mef;->mOnMemoryProblemReg:Z

    if-nez v6, :cond_0

    .line 835
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "APILevel"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "ActivityName"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "Info"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "MemoryLevel"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "Activitys"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "Threads"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    const-string/jumbo v7, "MemoryType"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 838
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "DeviceMem"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "TotalUsedMem"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "DeviceScore"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "SysScore"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "PidScore"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "RuntimeThread"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "RunningThread"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherSo"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherJar"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherApk"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherTtf"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherDex"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherOat"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherArt"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherMap"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    const-string/jumbo v7, "OtherAshmem"

    invoke-virtual {v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 848
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v6, "system"

    const-string/jumbo v7, "OnMemoryProblem"

    invoke-static {v6, v7, v4, v1}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 849
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/Mef;->mOnMemoryProblemReg:Z

    .line 852
    .end local v1    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v4    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    .line 853
    .local v2, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 854
    .local v5, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v6, "DeviceMem"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalMemory:J

    long-to-double v8, v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 855
    const-string/jumbo v6, "DeviceTotalAvailMem"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    long-to-double v8, v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 856
    const-string/jumbo v6, "TotalUsedMem"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    long-to-double v8, v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 857
    const-string/jumbo v6, "DeviceScore"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 858
    const-string/jumbo v6, "SysScore"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 859
    const-string/jumbo v6, "PidScore"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 860
    const-string/jumbo v6, "RuntimeThread"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 861
    const-string/jumbo v6, "RunningThread"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 862
    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v6, :cond_1

    .line 863
    const-string/jumbo v6, "OtherSo"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherSo:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 864
    const-string/jumbo v6, "OtherJar"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherJar:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 865
    const-string/jumbo v6, "OtherApk"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherApk:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 866
    const-string/jumbo v6, "OtherTtf"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherTtf:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 867
    const-string/jumbo v6, "OtherDex"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherDex:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 868
    const-string/jumbo v6, "OtherOat"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherOat:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 869
    const-string/jumbo v6, "OtherArt"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherArt:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 870
    const-string/jumbo v6, "OtherMap"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherMap:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 871
    const-string/jumbo v6, "OtherAshmem"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->memOtherAshmem:I

    int-to-double v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 874
    :cond_1
    const-string/jumbo v6, "ActivityName"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 875
    const-string/jumbo v6, "MemoryType"

    invoke-virtual {v2, v6, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 876
    const-string/jumbo v6, "APILevel"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 877
    const-string/jumbo v6, "MemoryLevel"

    iget-object v7, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 878
    const-string/jumbo v6, "Activitys"

    invoke-virtual {v2, v6, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 879
    if-eqz p5, :cond_2

    .line 880
    const-string/jumbo v6, "Threads"

    invoke-virtual {v2, v6, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 884
    :cond_2
    :try_start_0
    iget-object v6, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-virtual {p0, p1, v6}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v6, "Info"

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "system"

    const-string/jumbo v7, "OnMemoryProblem"

    invoke-static {v6, v7, v2, v5}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 891
    return-void

    .line 887
    :catch_0
    move-exception v3

    .line 888
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onThreadPoolProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V
    .locals 38
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p4, "poolName"    # Ljava/lang/String;

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Mef;->mThreadPoolRegisted:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    .line 1037
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "activityName"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "CpuCore"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "APILevel"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "IsLowMemroy"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "MemoryLevel"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "Info"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "QueueThread"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "PoolThread"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v35

    const-string/jumbo v36, "PoolThreadDetail"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v7

    .line 1039
    .local v7, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "QueueSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "CoreSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "MaxSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "ActiveCount"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "CompletedCount"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "ThreadSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "DeviceMem"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "CpuMaxFreq"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "DeviceAvailMem"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "DeviceTotalAvailMem"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "TotalUsedMem"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "RemainMem"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "NativeHeapSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "JavaHeapSize"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "SysCpuPercent"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "PidCpuPercent"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "SysLoadAvg"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "RuntimeThread"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "RunningThread"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "DeviceScore"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "SysScore"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "PidScore"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "RunningProgress"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v35

    const-string/jumbo v36, "RunningService"

    invoke-virtual/range {v35 .. v36}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v19

    .line 1053
    .local v19, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Mef;->mThreadPoolRegisted:Z

    .line 1054
    const-string/jumbo v35, "system"

    const-string/jumbo v36, "ThreadPoolProblem"

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v7, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 1057
    .end local v7    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v19    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v8

    .line 1058
    .local v8, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v20

    .line 1059
    .local v20, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v35

    if-eqz v35, :cond_9

    .line 1060
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v23

    .line 1061
    .local v23, "queueSize":I
    const-string/jumbo v35, "QueueSize"

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1062
    if-lez v23, :cond_e

    .line 1063
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1064
    .local v24, "queueThread":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    const/16 v35, 0x12c

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    .local v29, "stringBuilderThreads":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1066
    .local v18, "mapForThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_9

    .line 1067
    const-string/jumbo v35, "["

    const-string/jumbo v36, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 1068
    const-string/jumbo v35, "]"

    const-string/jumbo v36, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 1069
    const-string/jumbo v35, " "

    const-string/jumbo v36, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 1070
    new-instance v34, Ljava/util/StringTokenizer;

    const-string/jumbo v35, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .local v34, "token":Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 1073
    invoke-virtual/range {v34 .. v34}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v31

    .line 1074
    .local v31, "tempToken":Ljava/lang/String;
    if-eqz v31, :cond_3

    .line 1075
    const/16 v35, 0x40

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 1076
    .local v17, "indexAt":I
    if-lez v17, :cond_3

    .line 1077
    const/16 v35, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1079
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1080
    .local v25, "sizeInt":Ljava/lang/Integer;
    if-nez v25, :cond_4

    .line 1081
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1202
    .end local v8    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v17    # "indexAt":I
    .end local v18    # "mapForThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v23    # "queueSize":I
    .end local v24    # "queueThread":Ljava/lang/String;
    .end local v25    # "sizeInt":Ljava/lang/Integer;
    .end local v29    # "stringBuilderThreads":Ljava/lang/StringBuilder;
    .end local v31    # "tempToken":Ljava/lang/String;
    .end local v34    # "token":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v35

    goto/16 :goto_0

    .line 1083
    .restart local v8    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v17    # "indexAt":I
    .restart local v18    # "mapForThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v23    # "queueSize":I
    .restart local v24    # "queueThread":Ljava/lang/String;
    .restart local v25    # "sizeInt":Ljava/lang/Integer;
    .restart local v29    # "stringBuilderThreads":Ljava/lang/StringBuilder;
    .restart local v31    # "tempToken":Ljava/lang/String;
    .restart local v34    # "token":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v35

    add-int/lit8 v26, v35, 0x1

    .line 1084
    .local v26, "sizeint":I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1089
    .end local v17    # "indexAt":I
    .end local v25    # "sizeInt":Ljava/lang/Integer;
    .end local v26    # "sizeint":I
    .end local v31    # "tempToken":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v35

    if-lez v35, :cond_8

    .line 1090
    const/16 v16, 0x0

    .line 1091
    .local v16, "index":I
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1092
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 1093
    .local v21, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v21, :cond_6

    .line 1094
    if-lez v16, :cond_7

    .line 1095
    const/16 v35, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3d

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1103
    .end local v10    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "index":I
    .end local v21    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v35, "QueueThread"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1110
    .end local v18    # "mapForThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "queueSize":I
    .end local v24    # "queueThread":Ljava/lang/String;
    .end local v29    # "stringBuilderThreads":Ljava/lang/StringBuilder;
    .end local v34    # "token":Ljava/util/StringTokenizer;
    :cond_9
    :goto_3
    const-string/jumbo v35, "CoreSize"

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v36

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1111
    const-string/jumbo v35, "MaxSize"

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v36

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1112
    const-string/jumbo v35, "ActiveCount"

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v36

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1113
    const-string/jumbo v35, "CompletedCount"

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1114
    const-string/jumbo v35, "ThreadSize"

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1116
    const-string/jumbo v35, "CpuMaxFreq"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1117
    const-string/jumbo v35, "DeviceTotalAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1118
    const-string/jumbo v35, "DeviceAvailMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1119
    const-string/jumbo v35, "TotalUsedMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1120
    const-string/jumbo v35, "RemainMem"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1121
    const-string/jumbo v35, "NativeHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1122
    const-string/jumbo v35, "JavaHeapSize"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1123
    const-string/jumbo v35, "SysCpuPercent"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1124
    const-string/jumbo v35, "PidCpuPercent"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1125
    const-string/jumbo v35, "SysLoadAvg"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidPerCpuLoadAvg:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1126
    const-string/jumbo v35, "RuntimeThread"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1127
    const-string/jumbo v35, "RunningThread"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1128
    const-string/jumbo v35, "DeviceScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1129
    const-string/jumbo v35, "SysScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1130
    const-string/jumbo v35, "PidScore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1131
    const-string/jumbo v35, "RunningProgress"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1132
    const-string/jumbo v35, "RunningService"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1136
    const-string/jumbo v35, "CpuCore"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1137
    const-string/jumbo v35, "activityName"

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1138
    const-string/jumbo v35, "APILevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1139
    const-string/jumbo v36, "IsLowMemroy"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    move/from16 v35, v0

    if-eqz v35, :cond_f

    const-string/jumbo v35, "true"

    :goto_4
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1140
    const-string/jumbo v35, "MemoryLevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->activityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lc8/Mef;->appendDeviceInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 1143
    .local v6, "deviceInfo":Ljava/lang/String;
    const-string/jumbo v35, "Info"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1144
    sget-boolean v35, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v35, :cond_a

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "onThreadPoolProblem Info ="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1151
    .end local v6    # "deviceInfo":Ljava/lang/String;
    :cond_a
    :goto_5
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldWorkers:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    if-nez v35, :cond_b

    .line 1158
    const-string/jumbo v35, "java.util.concurrent.ThreadPoolExecutor"

    invoke-static/range {v35 .. v35}, Lc8/Mef;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1159
    .local v4, "clazz":Ljava/lang/Class;
    const-string/jumbo v35, "java.util.concurrent.ThreadPoolExecutor$Worker"

    invoke-static/range {v35 .. v35}, Lc8/Mef;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1160
    .local v5, "clazzWorker":Ljava/lang/Class;
    const-string/jumbo v35, "workers"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Mef;->mFieldWorkers:Ljava/lang/reflect/Field;

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldWorkers:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1162
    const-string/jumbo v35, "thread"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Mef;->mFieldThread:Ljava/lang/reflect/Field;

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldThread:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1165
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "clazzWorker":Ljava/lang/Class;
    :cond_b
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v35, 0x400

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1166
    .local v28, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .local v30, "stringPoolThread":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldWorkers:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldWorkers:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashSet;

    .line 1169
    .local v11, "hashSetWorkers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    const/16 v16, 0x1

    .line 1170
    .restart local v16    # "index":I
    if-eqz v11, :cond_12

    .line 1171
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .line 1172
    .local v22, "objWorker":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->mFieldThread:Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Thread;

    .line 1173
    .local v32, "thread":Ljava/lang/Thread;
    if-eqz v32, :cond_c

    .line 1174
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    .line 1175
    .local v14, "id":J
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v27

    .line 1176
    .local v27, "stackTraceElements":[Ljava/lang/StackTraceElement;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v33

    .line 1177
    .local v33, "threadName":Ljava/lang/String;
    const/16 v35, 0x1

    move/from16 v0, v16

    move/from16 v1, v35

    if-le v0, v1, :cond_d

    .line 1178
    const-string/jumbo v35, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_d
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3001

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2d

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x3a

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    const/16 v35, 0xa

    move/from16 v0, v35

    if-ge v12, v0, :cond_10

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v12, v0, :cond_10

    .line 1183
    aget-object v35, v27, v12

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x20

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1107
    .end local v11    # "hashSetWorkers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":J
    .end local v16    # "index":I
    .end local v22    # "objWorker":Ljava/lang/Object;
    .end local v27    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v30    # "stringPoolThread":Ljava/lang/StringBuilder;
    .end local v32    # "thread":Ljava/lang/Thread;
    .end local v33    # "threadName":Ljava/lang/String;
    .restart local v23    # "queueSize":I
    :cond_e
    const-string/jumbo v35, "QueueThread"

    const-string/jumbo v36, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto/16 :goto_3

    .line 1139
    .end local v23    # "queueSize":I
    :cond_f
    const-string/jumbo v35, "false"

    goto/16 :goto_4

    .line 1147
    :catch_1
    move-exception v9

    .line 1148
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1185
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "hashSetWorkers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .restart local v12    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "id":J
    .restart local v16    # "index":I
    .restart local v22    # "objWorker":Ljava/lang/Object;
    .restart local v27    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .restart local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v30    # "stringPoolThread":Ljava/lang/StringBuilder;
    .restart local v32    # "thread":Ljava/lang/Thread;
    .restart local v33    # "threadName":Ljava/lang/String;
    :cond_10
    const/16 v35, 0x3b

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1186
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 1189
    .end local v12    # "i":I
    .end local v14    # "id":J
    .end local v22    # "objWorker":Ljava/lang/Object;
    .end local v27    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v32    # "thread":Ljava/lang/Thread;
    .end local v33    # "threadName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v35, "PoolThreadDetail"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1190
    const-string/jumbo v35, "PoolThread"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1195
    .end local v11    # "hashSetWorkers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "index":I
    :cond_12
    sget-boolean v35, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v35, :cond_13

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mef;->TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "\u7ebf\u7a0b\u6c60\u961f\u5217\u592a\u957f\uff1a"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_13
    const-string/jumbo v35, "system"

    const-string/jumbo v36, "ThreadPoolProblem"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public onWhiteScreen(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;III)V
    .locals 8
    .param p1, "stat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "widthContentPercent"    # I
    .param p4, "heightContentPercent"    # I
    .param p5, "useTime"    # I

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lc8/Mef;->mWhiteScreenRegisted:Z

    if-nez v4, :cond_2

    .line 1210
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "activityName"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "CpuCore"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "APILevel"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "IsLowMemroy"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "MemoryLevel"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 1212
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "WidthPercent"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "HeightPercent"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "UseTime"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "DeviceMem"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "CpuMaxFreq"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "DeviceAvailMem"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "TotalUsedMem"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "RemainMem"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "NativeHeapSize"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "JavaHeapSize"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "SysCpuPercent"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "PidCpuPercent"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "SysLoadAvg"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "RuntimeThread"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "RunningThread"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "DeviceScore"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "SysScore"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "PidScore"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "RunningProgress"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "RunningService"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 1226
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/Mef;->mWhiteScreenRegisted:Z

    .line 1227
    const-string/jumbo v4, "system"

    const-string/jumbo v5, "WhiteScreen"

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v0, v6}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 1230
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 1231
    .local v1, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 1233
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "WidthPercent"

    int-to-double v6, p3

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1234
    const-string/jumbo v4, "HeightPercent"

    int-to-double v6, p4

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1235
    const-string/jumbo v4, "UseTime"

    int-to-double v6, p5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1237
    const-string/jumbo v4, "CpuMaxFreq"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1238
    const-string/jumbo v4, "DeviceAvailMem"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->deviceAvailMemory:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1239
    const-string/jumbo v4, "TotalUsedMem"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalUsedMemory:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1240
    const-string/jumbo v4, "RemainMem"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->remainAvailMemory:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1241
    const-string/jumbo v4, "NativeHeapSize"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-wide v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->nativePss:J

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1242
    const-string/jumbo v4, "JavaHeapSize"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->dalvikPss:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1243
    const-string/jumbo v4, "SysCpuPercent"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->sysAvgCPUPercent:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1244
    const-string/jumbo v4, "PidCpuPercent"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->myPidCPUPercent:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1245
    const-string/jumbo v4, "SysLoadAvg"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->pidPerCpuLoadAvg:F

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1246
    const-string/jumbo v4, "RuntimeThread"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runTimeThreadCount:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1247
    const-string/jumbo v4, "RunningThread"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->runningThreadCount:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1248
    const-string/jumbo v4, "DeviceScore"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1249
    const-string/jumbo v4, "SysScore"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1250
    const-string/jumbo v4, "PidScore"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1251
    const-string/jumbo v4, "RunningProgress"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningProgress:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1252
    const-string/jumbo v4, "RunningService"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->sysRunningService:I

    int-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1256
    const-string/jumbo v4, "CpuCore"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuProcessCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1257
    const-string/jumbo v4, "activityName"

    invoke-virtual {v1, v4, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1258
    const-string/jumbo v4, "APILevel"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1259
    const-string/jumbo v5, "IsLowMemroy"

    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget-boolean v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "true"

    :goto_1
    invoke-virtual {v1, v5, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1260
    const-string/jumbo v4, "MemoryLevel"

    iget-object v5, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iget v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1262
    iget-object v4, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-boolean v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->isEmulator:Z

    if-nez v4, :cond_0

    .line 1266
    const-string/jumbo v4, "system"

    const-string/jumbo v5, "WhiteScreen"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 1270
    .end local v1    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1259
    .restart local v1    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v3    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_3
    const-string/jumbo v4, "false"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
