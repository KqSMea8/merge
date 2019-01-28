.class public final Lc8/osf;
.super Ljava/lang/Object;
.source "OnLineMonitorApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nsf;
    }
.end annotation


# static fields
.field public static sAdvertisementTime:I

.field static sApplication:Landroid/app/Application;

.field public static sBackInGroundOnBoot:Z

.field public static sBgCpuUseTreshold:S

.field public static sBgCpuUseTresholdTimes:S

.field static sBootAcitvityCount:S

.field static sBootActivityAry:[Ljava/lang/String;

.field static sBootCorrectAry:[Z

.field static sBootExtraType:Ljava/lang/String;

.field static sColdBootCheck:Lc8/Hrf;

.field public static sColdOpenMaxTimesForStatistics:I

.field static sDisableJitOnBoot:Z

.field static sEnableConfig:Z

.field public static sEnableSimpleAnaliseOnDebug:Z

.field public static sFinalizerThreshold:I

.field static sFirstActivityTime:J

.field static sHeapUtilization:F

.field public static sHotOpenMaxTimesForStatistics:I

.field public static sInstanceOccupySize:I

.field static sIsBootCorrect:Z

.field static sIsCodeBoot:Z

.field public static sIsDebug:Z

.field static sIsHardWareAcce:Z

.field private static sIsInit:Z

.field static sIsLargeHeap:Z

.field static sIsPerformanceTest:Z

.field static sIsStartMethodTrace:Z

.field static sLaunchTime:J

.field static sMainThreadStartCpu:J

.field public static sMaxBootTotalTime:I

.field static sMethodDisableJitCompilation:Ljava/lang/reflect/Method;

.field static sMethodStartJitCompilation:Ljava/lang/reflect/Method;

.field public static sPerformanceReportNotification:Z

.field static sPropertiesFileName:Ljava/lang/String;

.field static sPropertyFilePath:Ljava/lang/String;

.field public static sPublishRelease:Z

.field public static sRunFinalizerOnThreshold:Z

.field static sSmoothStepInterval:I

.field public static sThreadDeviceCpuPercentForStatistics:I

.field public static sThreadPidCpuPercentForStatistics:I

.field static sThreadPoolQueueCommitSize:I

.field static sToSleepTime:I

.field static sVMRuntime:Ljava/lang/Object;

.field public static sWhiteScreenMaxHeightPercent:I

.field public static sWhiteScreenMaxWidthPercent:I

.field static sWritePerformanceInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lc8/osf;->sIsInit:Z

    .line 23
    sput-boolean v2, Lc8/osf;->sEnableSimpleAnaliseOnDebug:Z

    .line 35
    const/16 v0, 0xa

    sput-short v0, Lc8/osf;->sBgCpuUseTreshold:S

    .line 39
    const/4 v0, 0x3

    sput-short v0, Lc8/osf;->sBgCpuUseTresholdTimes:S

    .line 43
    const/16 v0, 0x7530

    sput v0, Lc8/osf;->sMaxBootTotalTime:I

    .line 47
    const v0, 0x7d000

    sput v0, Lc8/osf;->sInstanceOccupySize:I

    .line 51
    const/16 v0, 0x5a

    sput v0, Lc8/osf;->sWhiteScreenMaxWidthPercent:I

    .line 55
    const/16 v0, 0xf

    sput v0, Lc8/osf;->sWhiteScreenMaxHeightPercent:I

    .line 59
    sput v1, Lc8/osf;->sAdvertisementTime:I

    .line 63
    const/16 v0, 0x1f40

    sput v0, Lc8/osf;->sFinalizerThreshold:I

    .line 64
    sput-boolean v1, Lc8/osf;->sRunFinalizerOnThreshold:Z

    .line 68
    const/4 v0, 0x4

    sput v0, Lc8/osf;->sColdOpenMaxTimesForStatistics:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lc8/osf;->sHotOpenMaxTimesForStatistics:I

    .line 70
    const/16 v0, 0x32

    sput v0, Lc8/osf;->sThreadPidCpuPercentForStatistics:I

    .line 71
    const/16 v0, 0x1e

    sput v0, Lc8/osf;->sThreadDeviceCpuPercentForStatistics:I

    .line 72
    sput-boolean v1, Lc8/osf;->sPerformanceReportNotification:Z

    .line 74
    sput-boolean v1, Lc8/osf;->sDisableJitOnBoot:Z

    .line 75
    const/16 v0, 0x10

    sput v0, Lc8/osf;->sSmoothStepInterval:I

    .line 80
    const/16 v0, 0x14

    sput v0, Lc8/osf;->sThreadPoolQueueCommitSize:I

    .line 84
    const-string/jumbo v0, "0"

    sput-object v0, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    .line 85
    sput-boolean v2, Lc8/osf;->sIsCodeBoot:Z

    .line 89
    sput-wide v4, Lc8/osf;->sLaunchTime:J

    .line 93
    sput-wide v4, Lc8/osf;->sFirstActivityTime:J

    .line 100
    sput-boolean v1, Lc8/osf;->sIsBootCorrect:Z

    .line 104
    const-string/jumbo v0, "OnLineMonitor.txt"

    sput-object v0, Lc8/osf;->sPropertiesFileName:Ljava/lang/String;

    .line 109
    sput-boolean v2, Lc8/osf;->sEnableConfig:Z

    .line 110
    const v0, 0x493e0

    sput v0, Lc8/osf;->sToSleepTime:I

    .line 111
    const/16 v0, 0x3a98

    sput v0, Lc8/osf;->sWritePerformanceInfo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static disableJitOnBoot(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 135
    sput-boolean p0, Lc8/osf;->sDisableJitOnBoot:Z

    .line 136
    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Application;Landroid/content/Context;)V
    .locals 14
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "baseContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 180
    const-class v10, Lc8/osf;

    monitor-enter v10

    :try_start_0
    sput-object p0, Lc8/osf;->sApplication:Landroid/app/Application;

    .line 181
    sget-boolean v9, Lc8/osf;->sIsInit:Z

    if-nez v9, :cond_7

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-lt v9, v11, :cond_7

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 183
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v9, Lc8/osf;->sEnableSimpleAnaliseOnDebug:Z

    if-eqz v9, :cond_0

    .line 184
    iget v9, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    .line 185
    .local v4, "isDebug":Z
    :goto_0
    sput-boolean v4, Lc8/osf;->sIsDebug:Z

    .line 186
    if-eqz v4, :cond_0

    .line 187
    const/4 v9, 0x1

    sput-boolean v9, Lc8/msf;->sIsTraceDetail:Z

    .line 188
    const/4 v9, 0x1

    sput-boolean v9, Lc8/Asf;->sMemoryLeakDetector:Z

    .line 189
    const/4 v9, 0x1

    sput-boolean v9, Lc8/Asf;->sTraceActivityManager:Z

    .line 191
    const/4 v9, 0x1

    sput-boolean v9, Lc8/Asf;->sTraceBundler:Z

    .line 193
    const v9, 0xea60

    sput v9, Lc8/osf;->sToSleepTime:I

    .line 194
    sget v9, Lc8/msf;->sApiLevel:I

    const/16 v11, 0x10

    if-lt v9, v11, :cond_9

    .line 195
    new-instance v9, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v9}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v9

    invoke-static {v9}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 208
    .end local v4    # "isDebug":Z
    :cond_0
    :goto_1
    iget v9, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x100000

    and-int/2addr v9, v11

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_2
    sput-boolean v9, Lc8/osf;->sIsLargeHeap:Z

    .line 209
    iget v9, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x20000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_3
    sput-boolean v9, Lc8/osf;->sIsHardWareAcce:Z

    .line 210
    sget-boolean v9, Lc8/osf;->sPublishRelease:Z

    if-nez v9, :cond_2

    .line 211
    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, "baseFile":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    .line 214
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "/OnLine_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ".txt"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 216
    const/4 v9, 0x1

    sput-boolean v9, Lc8/msf;->sIsTraceDetail:Z

    .line 217
    const/16 v9, 0xbb8

    sput v9, Lc8/osf;->sWritePerformanceInfo:I

    .line 218
    const/4 v9, 0x1

    sput-boolean v9, Lc8/osf;->sIsPerformanceTest:Z

    .line 220
    :cond_1
    invoke-static {p1}, Lc8/osf;->readConfig(Landroid/content/Context;)V

    .line 224
    .end local v0    # "baseFile":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-gt v9, v11, :cond_6

    sget-boolean v9, Lc8/osf;->sDisableJitOnBoot:Z

    if-nez v9, :cond_3

    sget v9, Lc8/osf;->sHeapUtilization:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    .line 227
    :cond_3
    :try_start_1
    const-string/jumbo v9, "dalvik.system.VMRuntime"

    invoke-static {v9}, Lc8/osf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 228
    .local v8, "vmRuntime":Ljava/lang/Class;
    if-eqz v8, :cond_5

    .line 229
    const-string/jumbo v9, "THE_ONE"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 230
    .local v6, "runtime":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sput-object v9, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    .line 232
    const-string/jumbo v9, "startJitCompilation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 233
    sput-object v9, Lc8/osf;->sMethodStartJitCompilation:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 234
    const-string/jumbo v9, "disableJitCompilation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 235
    sput-object v9, Lc8/osf;->sMethodDisableJitCompilation:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 236
    sget-object v9, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 237
    sget-boolean v9, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v9, :cond_4

    .line 238
    const-string/jumbo v9, "OnLineMonitor"

    const-string/jumbo v11, "\u5173\u95edJIT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_4
    sget-boolean v9, Lc8/osf;->sDisableJitOnBoot:Z

    if-eqz v9, :cond_5

    .line 241
    sget-object v9, Lc8/osf;->sMethodDisableJitCompilation:Ljava/lang/reflect/Method;

    sget-object v11, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lc8/osf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v6    # "runtime":Ljava/lang/reflect/Field;
    :cond_5
    sget v9, Lc8/osf;->sHeapUtilization:F

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    .line 249
    const-string/jumbo v9, "setTargetHeapUtilization"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 250
    .local v7, "setTargetHeapUtilization":Ljava/lang/reflect/Method;
    sget-object v9, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget v13, Lc8/osf;->sHeapUtilization:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v9, v11}, Lc8/osf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-boolean v9, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v9, :cond_6

    .line 252
    const-string/jumbo v9, "OnLineMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setTargetHeapUtilization="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lc8/osf;->sHeapUtilization:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v7    # "setTargetHeapUtilization":Ljava/lang/reflect/Method;
    .end local v8    # "vmRuntime":Ljava/lang/Class;
    :cond_6
    :goto_4
    :try_start_2
    new-instance v5, Lc8/Grf;

    invoke-direct {v5, p1}, Lc8/Grf;-><init>(Landroid/content/Context;)V

    .line 262
    .local v5, "lifecycleCallback":Lc8/Grf;
    new-instance v9, Lc8/msf;

    invoke-direct {v9, p1, v5}, Lc8/msf;-><init>(Landroid/content/Context;Lc8/Grf;)V

    .line 263
    invoke-virtual {p0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 264
    const/4 v9, 0x1

    sput-boolean v9, Lc8/osf;->sIsInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "lifecycleCallback":Lc8/Grf;
    :cond_7
    monitor-exit v10

    return-void

    .line 184
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 201
    .restart local v4    # "isDebug":Z
    :cond_9
    :try_start_3
    new-instance v9, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v9}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v9

    invoke-static {v9}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 180
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isDebug":Z
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 208
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 209
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method static isBootCorrect()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 530
    sget-object v3, Lc8/osf;->sBootCorrectAry:[Z

    if-nez v3, :cond_0

    .line 545
    .local v0, "i":I
    :goto_0
    return v1

    .line 533
    .end local v0    # "i":I
    :cond_0
    sget-boolean v3, Lc8/osf;->sIsBootCorrect:Z

    if-eqz v3, :cond_1

    .line 534
    sget-boolean v1, Lc8/osf;->sIsBootCorrect:Z

    goto :goto_0

    .line 537
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v3, Lc8/osf;->sBootCorrectAry:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 538
    sget-object v3, Lc8/osf;->sBootCorrectAry:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    .line 539
    invoke-static {}, Lc8/osf;->startJitCompilation()V

    goto :goto_0

    .line 537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    :cond_3
    sput-boolean v2, Lc8/osf;->sIsBootCorrect:Z

    move v1, v2

    .line 545
    goto :goto_0
.end method

.method public static isCodeBoot()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lc8/osf;->sIsCodeBoot:Z

    return v0
.end method

.method static readConfig(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p0, :cond_0

    sget-boolean v8, Lc8/osf;->sEnableConfig:Z

    if-nez v8, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lc8/osf;->sPropertiesFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "file":Ljava/io/File;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 278
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "isWaitForDebug":Z
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 281
    .local v7, "s":Ljava/io/FileInputStream;
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 282
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 283
    const-string/jumbo v8, "NormalDebug"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 285
    const/4 v8, 0x1

    sput-boolean v8, Lc8/msf;->sIsNormalDebug:Z

    .line 287
    :cond_2
    const-string/jumbo v8, "DetailDebug"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    if-eqz v5, :cond_3

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 289
    const/4 v8, 0x1

    sput-boolean v8, Lc8/msf;->sIsDetailDebug:Z

    .line 292
    :cond_3
    const-string/jumbo v8, "TraceDetail"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    if-eqz v5, :cond_0

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 294
    const/4 v8, 0x1

    sput-boolean v8, Lc8/msf;->sIsTraceDetail:Z

    .line 295
    const-string/jumbo v8, "TraceThread"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    if-eqz v5, :cond_4

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 297
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThread:Z

    .line 299
    :cond_4
    const-string/jumbo v8, "RecoredBootStepInfo"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    if-eqz v5, :cond_5

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 301
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sRecoredBootStepInfo:Z

    .line 303
    :cond_5
    const-string/jumbo v8, "TraceThreadStack"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 304
    if-eqz v5, :cond_6

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 305
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThreadStack:Z

    .line 307
    :cond_6
    const-string/jumbo v8, "TraceBundler"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    if-eqz v5, :cond_7

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 309
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceBundler:Z

    .line 311
    :cond_7
    const-string/jumbo v8, "TraceStatisticsThread"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    if-eqz v5, :cond_8

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 313
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceStatisticsThread:Z

    .line 315
    :cond_8
    const-string/jumbo v8, "TraceStatisticsPercent"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    if-eqz v5, :cond_9

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 317
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceStatisticsPercent:Z

    .line 319
    :cond_9
    const-string/jumbo v8, "TraceMemory"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    if-eqz v5, :cond_a

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 321
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceMemory:Z

    .line 323
    :cond_a
    const-string/jumbo v8, "TraceBigBitmap"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    if-eqz v5, :cond_b

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 325
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceBigBitmap:Z

    .line 327
    :cond_b
    const-string/jumbo v8, "TraceMemoryInstance"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    if-eqz v5, :cond_c

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 329
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceMemoryInstance:Z

    .line 331
    :cond_c
    const-string/jumbo v8, "MemoryLeakDetector"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    if-eqz v5, :cond_d

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 333
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sMemoryLeakDetector:Z

    .line 339
    :cond_d
    const-string/jumbo v8, "MemoryAnalysis"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    if-eqz v5, :cond_e

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 341
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sMemoryAnalysis:Z

    .line 343
    :cond_e
    const-string/jumbo v8, "MemoryOccupySize"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    if-eqz v5, :cond_f

    .line 345
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/Asf;->sMemoryOccupySize:I

    .line 347
    :cond_f
    const-string/jumbo v8, "InstanceOccupySize"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    if-eqz v5, :cond_10

    .line 349
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/osf;->sInstanceOccupySize:I

    .line 351
    :cond_10
    const-string/jumbo v8, "TraceRegThreadThreshold"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_11

    .line 353
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/Asf;->sTraceRegThreadThreshold:I

    .line 355
    :cond_11
    const-string/jumbo v8, "TraceBootProgress"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    if-eqz v5, :cond_12

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 357
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceBootProgress:Z

    .line 359
    :cond_12
    const-string/jumbo v8, "CheckOverDraw"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    if-eqz v5, :cond_13

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 361
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sCheckOverDraw:Z

    .line 363
    :cond_13
    const-string/jumbo v8, "TraceActivityManager"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    if-eqz v5, :cond_14

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 365
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceActivityManager:Z

    .line 367
    :cond_14
    const-string/jumbo v8, "MethodTrace"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    if-eqz v5, :cond_16

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 369
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "OnlineTrace.trace"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, "fileTemp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 373
    :cond_15
    const/4 v8, 0x1

    sput-boolean v8, Lc8/osf;->sIsStartMethodTrace:Z

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x800000

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 376
    .end local v3    # "fileTemp":Ljava/io/File;
    :cond_16
    const-string/jumbo v8, "TraceMainThread"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    if-eqz v5, :cond_17

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 378
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceMainThread:Z

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    sput-object v8, Lc8/Asf;->sMainThread:Ljava/lang/Thread;

    .line 381
    :cond_17
    const-string/jumbo v8, "ThreadExecuteTimeInterval"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    if-eqz v5, :cond_18

    .line 383
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    sput-short v8, Lc8/Asf;->sThreadExecuteTimeInterval:S

    .line 385
    :cond_18
    const-string/jumbo v8, "TraceActivityCount"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    if-eqz v5, :cond_19

    .line 387
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    sput-short v8, Lc8/Asf;->sTraceActivityCount:S

    .line 389
    :cond_19
    const-string/jumbo v8, "TraceThreadInterval"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    if-eqz v5, :cond_1a

    .line 391
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    sput-short v8, Lc8/Asf;->sTraceThreadInterval:S

    .line 393
    :cond_1a
    const-string/jumbo v8, "SleepTime"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 394
    if-eqz v5, :cond_1b

    .line 395
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/osf;->sToSleepTime:I

    .line 397
    :cond_1b
    const-string/jumbo v8, "TraceThreadPool"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    if-eqz v5, :cond_1c

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 399
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThreadPool:Z

    .line 400
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 402
    :cond_1c
    const-string/jumbo v8, "DisableJitOnBoot"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    if-eqz v5, :cond_1d

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 404
    const/4 v8, 0x1

    sput-boolean v8, Lc8/osf;->sDisableJitOnBoot:Z

    .line 406
    :cond_1d
    const-string/jumbo v8, "WaitForDebug"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    if-eqz v5, :cond_1e

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 408
    const/4 v4, 0x1

    .line 410
    :cond_1e
    const-string/jumbo v8, "TraceThreadWait"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    if-eqz v5, :cond_1f

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 412
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThreadWait:Z

    .line 414
    :cond_1f
    const-string/jumbo v8, "TraceMemoryAllocator"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 415
    if-eqz v5, :cond_20

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 416
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceMemoryAllocator:Z

    .line 418
    :cond_20
    const-string/jumbo v8, "TraceMemoryAllocatorActivity"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    if-eqz v5, :cond_21

    .line 420
    sput-object v5, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    .line 422
    :cond_21
    const-string/jumbo v8, "HeapUtilization"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    if-eqz v5, :cond_22

    .line 424
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sput v8, Lc8/osf;->sHeapUtilization:F

    .line 426
    :cond_22
    const-string/jumbo v8, "TraceLog"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    if-eqz v5, :cond_23

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 428
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceLog:Z

    .line 429
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 431
    :cond_23
    const-string/jumbo v8, "TraceThrowable"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 432
    if-eqz v5, :cond_24

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 433
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThrowable:Z

    .line 434
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 436
    :cond_24
    const-string/jumbo v8, "TraceGetStack"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 437
    if-eqz v5, :cond_25

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 438
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceGetStack:Z

    .line 439
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 441
    :cond_25
    const-string/jumbo v8, "TraceSoFile"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    if-eqz v5, :cond_26

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 443
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceSoFile:Z

    .line 444
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 446
    :cond_26
    const-string/jumbo v8, "TraceWakelock"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    if-eqz v5, :cond_27

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 448
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceWakelock:Z

    .line 449
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 451
    :cond_27
    const-string/jumbo v8, "TraceSharedPreferences"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    if-eqz v5, :cond_28

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 453
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceSharedPreferences:Z

    .line 454
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 456
    :cond_28
    const-string/jumbo v8, "TraceThreadPriority"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 457
    if-eqz v5, :cond_29

    const-string/jumbo v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 458
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sTraceThreadPriority:Z

    .line 459
    const/4 v8, 0x1

    sput-boolean v8, Lc8/Asf;->sNeedHook:Z

    .line 461
    :cond_29
    sget-boolean v8, Lc8/Asf;->sNeedHook:Z

    if-eqz v8, :cond_2a

    .line 462
    const-string/jumbo v8, "HookDelayTime"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    if-eqz v5, :cond_2a

    .line 464
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/Asf;->sHookDelayTime:I

    .line 467
    :cond_2a
    const-string/jumbo v8, "TraceOnLineDuration"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    if-eqz v5, :cond_2b

    .line 469
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lc8/Asf;->sTraceOnLineDuration:I

    .line 471
    :cond_2b
    if-eqz v4, :cond_0

    .line 472
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 478
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "isWaitForDebug":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "properties":Ljava/util/Properties;
    .end local v7    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static resetBootArray([Ljava/lang/String;)V
    .locals 5
    .param p0, "bootActivityAry"    # [Ljava/lang/String;

    .prologue
    .line 498
    if-eqz p0, :cond_0

    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v3, p0

    sget-object v4, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 499
    sput-object p0, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    .line 500
    array-length v3, p0

    sget-object v4, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 501
    sget-object v1, Lc8/osf;->sBootCorrectAry:[Z

    .line 502
    .local v1, "old":[Z
    sget-short v2, Lc8/osf;->sBootAcitvityCount:S

    .line 503
    .local v2, "oldLen":I
    sget-object v3, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v3, v3

    int-to-short v3, v3

    .line 505
    sput-short v3, Lc8/osf;->sBootAcitvityCount:S

    new-array v3, v3, [Z

    sput-object v3, Lc8/osf;->sBootCorrectAry:[Z

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 507
    sget-object v3, Lc8/osf;->sBootCorrectAry:[Z

    aget-boolean v4, v1, v0

    aput-boolean v4, v3, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "i":I
    .end local v1    # "old":[Z
    .end local v2    # "oldLen":I
    :cond_0
    return-void
.end method

.method public static setBootExtraType(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static setBootExtraType(Ljava/lang/String;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 175
    sput-object p0, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static setBootInfo([Ljava/lang/String;J)V
    .locals 4
    .param p0, "bootActivityAry"    # [Ljava/lang/String;
    .param p1, "start"    # J

    .prologue
    .line 485
    if-eqz p0, :cond_0

    .line 486
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    sput-wide v0, Lc8/osf;->sMainThreadStartCpu:J

    .line 488
    sput-object p0, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    array-length v0, p0

    int-to-short v0, v0

    .line 489
    sput-short v0, Lc8/osf;->sBootAcitvityCount:S

    new-array v0, v0, [Z

    sput-object v0, Lc8/osf;->sBootCorrectAry:[Z

    .line 490
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lc8/osf;->sLaunchTime:J

    .line 493
    :cond_0
    new-instance v0, Lc8/Hrf;

    invoke-direct {v0}, Lc8/Hrf;-><init>()V

    .line 494
    sput-object v0, Lc8/osf;->sColdBootCheck:Lc8/Hrf;

    invoke-virtual {v0}, Lc8/Hrf;->startChecker()V

    .line 495
    return-void
.end method

.method public static setPropertiesFileName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    sput-object p0, Lc8/osf;->sPropertiesFileName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public static setSmoothStepInterval(I)V
    .locals 0
    .param p0, "interval"    # I

    .prologue
    .line 144
    sput p0, Lc8/osf;->sSmoothStepInterval:I

    .line 145
    return-void
.end method

.method static startJitCompilation()V
    .locals 4

    .prologue
    .line 514
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    sget-boolean v1, Lc8/osf;->sDisableJitOnBoot:Z

    if-nez v1, :cond_1

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_0
    sget-object v1, Lc8/osf;->sMethodStartJitCompilation:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 519
    sget-boolean v1, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v1, :cond_2

    .line 520
    const-string/jumbo v1, "OnLineMonitor"

    const-string/jumbo v2, "\u5f00\u542fJIT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_2
    sget-object v1, Lc8/osf;->sMethodStartJitCompilation:Ljava/lang/reflect/Method;

    sget-object v2, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/osf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
