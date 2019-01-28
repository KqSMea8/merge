.class public Lc8/jF;
.super Lc8/RD;
.source "WVNativeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private detectYearClass(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 41
    iget-object v2, p0, Lc8/jF;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/AF;->get(Landroid/content/Context;)I

    move-result v1

    .line 43
    .local v1, "year":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 47
    .local v0, "result":Lc8/kE;
    const-string/jumbo v2, "deviceYear"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method

.method private getCurrentUsage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const-wide/32 v8, 0x100000

    .line 65
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 66
    .local v3, "result":Lc8/kE;
    sget-object v6, Lc8/xB;->context:Landroid/app/Application;

    if-nez v6, :cond_0

    .line 67
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v6, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v6}, Lc8/yF;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-float v4, v6

    .line 70
    .local v4, "totalMemory":F
    invoke-static {}, Lc8/yF;->getProcessCpuRate()F

    move-result v0

    .line 71
    .local v0, "cpuUsage":F
    sget-object v6, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v6}, Lc8/yF;->getFreeMemorySize(Landroid/content/Context;)J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-float v1, v6

    .line 72
    .local v1, "freeMemory":F
    sub-float v5, v4, v1

    .line 73
    .local v5, "usedMemory":F
    div-float v2, v5, v4

    .line 74
    .local v2, "memoryUsage":F
    const-string/jumbo v6, "cpuUsage"

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v6, "memoryUsage"

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v6, "totalMemory"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v6, "usedMemory"

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method

.method private getPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 98
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 101
    .local v2, "result":Lc8/kE;
    :try_start_0
    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v3

    iget-object v1, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    .line 102
    .local v1, "performanceInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;
    const-string/jumbo v3, "deviceScore"

    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string/jumbo v3, "systemScore"

    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v3, "cpuScore"

    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->cpuScore:I

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v3, "gpuScore"

    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->gpuScore:I

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v3, "memScore"

    iget v4, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->memScore:I

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "performanceInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "errMsg"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method private isSimulator(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 83
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 85
    .local v2, "result":Lc8/kE;
    :try_start_0
    new-instance v5, Landroid/content/ContextWrapper;

    iget-object v6, p0, Lc8/jF;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 86
    .local v3, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    move-result-object v4

    .line 87
    .local v4, "simulatorDetectComp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    invoke-interface {v4}, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;->isSimulator()Z

    move-result v1

    .line 88
    .local v1, "isSimulator":Z
    const-string/jumbo v5, "WVNativeDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current phone is simulator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v5, "isSimulator"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "isSimulator":Z
    .end local v3    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v4    # "simulatorDetectComp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "errMsg"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 21
    const-string/jumbo v1, "getDeviceYear"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-direct {p0, p2, p3}, Lc8/jF;->detectYearClass(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 37
    :goto_0
    return v0

    .line 24
    :cond_0
    const-string/jumbo v1, "getCurrentUsage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-direct {p0, p2, p3}, Lc8/jF;->getCurrentUsage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo v1, "getModelInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p0, p3, p2}, Lc8/jF;->getModelInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    const-string/jumbo v1, "isSimulator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-direct {p0, p2, p3}, Lc8/jF;->isSimulator(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo v1, "getPerformanceInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-direct {p0, p2, p3}, Lc8/jF;->getPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 37
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 54
    .local v0, "result":Lc8/kE;
    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 57
    return-void
.end method
