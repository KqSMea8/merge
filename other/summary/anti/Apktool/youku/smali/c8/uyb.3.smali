.class public Lc8/uyb;
.super Ljava/lang/Object;
.source "TransformConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tyb;
    }
.end annotation


# static fields
.field private static final ORANGE_GROUP:Ljava/lang/String; = "pagetransform"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static blockTransform3D()Z
    .locals 8

    .prologue
    .line 35
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "model":Ljava/lang/String;
    invoke-static {}, Lc8/uyb;->transitionBlackList()Lc8/tyb;

    move-result-object v0

    .line 37
    .local v0, "deviceList":Lc8/tyb;
    const/4 v1, 0x0

    .line 38
    .local v1, "inBlack":Z
    invoke-virtual {v0, v4}, Lc8/tyb;->isInBlackList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    const/4 v1, 0x1

    .line 41
    :cond_0
    const/4 v6, 0x1

    .line 42
    .local v6, "threshold":Z
    if-nez v1, :cond_1

    .line 43
    const-string/jumbo v7, "0.7"

    invoke-static {v7}, Lc8/uyb;->getTransitionMemoryThreshold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v2

    .line 44
    .local v2, "memoryThreshold":F
    const-string/jumbo v7, "70"

    invoke-static {v7}, Lc8/uyb;->getTransitionMinDeviceScore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v3

    .line 45
    .local v3, "minDeviceScope":F
    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v7

    iget-object v5, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    .line 46
    .local v5, "performanceInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;
    if-eqz v5, :cond_1

    iget v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_1

    .line 47
    invoke-static {v2}, Lc8/uyb;->isOverThreshold(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 49
    const/4 v6, 0x0

    .line 53
    .end local v2    # "memoryThreshold":F
    .end local v3    # "minDeviceScope":F
    .end local v5    # "performanceInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 24
    .local v0, "configAdapter":Lc8/Hob;
    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v1, "pagetransform"

    invoke-interface {v0, v1, p0, p1}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTransitionMemoryThreshold(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v0, "memoryThreshold"

    invoke-static {v0, p0}, Lc8/uyb;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTransitionMinDeviceScore(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "deviceScore"

    invoke-static {v0, p0}, Lc8/uyb;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isOverThreshold(F)Z
    .locals 6
    .param p0, "threshold"    # F

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-float v1, v4

    .line 66
    .local v1, "maxMemory":F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 68
    .local v2, "freeMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-float v0, v4

    .line 69
    .local v0, "allocMemory":F
    div-float v4, v0, v1

    cmpl-float v4, v4, p0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static transitionBlackList()Lc8/tyb;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lc8/tyb;

    const-string/jumbo v1, "transitionDevices"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lc8/uyb;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/tyb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
