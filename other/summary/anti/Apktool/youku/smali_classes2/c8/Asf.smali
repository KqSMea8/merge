.class public final Lc8/Asf;
.super Ljava/lang/Object;
.source "TraceDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vsf;,
        Lc8/zsf;,
        Lcom/taobao/onlinemonitor/TraceDetail$ActivityLifeInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;,
        Lc8/wsf;,
        Lcom/taobao/onlinemonitor/TraceDetail$SmStat;,
        Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;,
        Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;,
        Lc8/ysf;,
        Lc8/xsf;
    }
.end annotation


# static fields
.field static final LOW_API:Ljava/lang/String; = "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

.field static final TABLE_TD:Ljava/lang/String; = "<td class=\"TableBody2\">"

.field static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static sCheckOverDraw:Z

.field public static sHookDelayTime:I

.field static sMainThread:Ljava/lang/Thread;

.field public static sMemoryAnalysis:Z

.field public static sMemoryLeakDetector:Z

.field public static sMemoryOccupySize:I

.field public static sNeedHook:Z

.field public static sOnlineHookMethod:Lc8/xsf;

.field public static sOnlineHookedMethod:Lc8/ysf;

.field public static sRecoredBootStepInfo:Z

.field public static sThreadExecuteTimeInterval:S

.field public static sTraceActivityCount:S

.field public static sTraceActivityManager:Z

.field public static sTraceBigBitmap:Z

.field public static sTraceBootProgress:Z

.field public static sTraceBundler:Z

.field public static sTraceFinalizer:Z

.field public static sTraceGetStack:Z

.field public static sTraceLog:Z

.field public static sTraceMainThread:Z

.field public static sTraceMemory:Z

.field public static sTraceMemoryAllocator:Z

.field public static sTraceMemoryAllocatorActivity:Ljava/lang/String;

.field public static sTraceMemoryInstance:Z

.field public static sTraceOnLineDuration:I

.field public static sTraceOnLineListener:Z

.field public static sTraceRegThreadThreshold:I

.field public static sTraceSharedPreferences:Z

.field public static sTraceSoFile:Z

.field public static sTraceStatisticsPercent:Z

.field public static sTraceStatisticsThread:Z

.field public static sTraceThread:Z

.field public static sTraceThreadInterval:S

.field public static sTraceThreadPool:Z

.field public static sTraceThreadPriority:Z

.field public static sTraceThreadStack:Z

.field public static sTraceThreadWait:Z

.field public static sTraceThrowable:Z

.field public static sTraceWakelock:Z

.field public static sTracedActivityCount:S


# instance fields
.field mActivityLifeCycleName:[Ljava/lang/String;

.field mActivityLifeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ActivityLifeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mActivityRuntimeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mActivityWeakMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAsyncTaskInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBootCpuPercentTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mBootDiffThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBootPidCpuPercents:Landroid/util/SparseIntArray;

.field mBootStepClass:[I

.field mBootStepCpu:[I

.field mBootStepCpuLoad:[F

.field mBootStepGcCount:[I

.field mBootStepIoWait:[I

.field mBootStepMainThreadTime:[J

.field mBootStepMem:[I

.field mBootStepPidTime:[J

.field mBootStepSched:[F

.field mBootStepThread:[I

.field mBootSysCpuPercents:Landroid/util/SparseIntArray;

.field mBroadCastInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$BroadCastInfo;",
            ">;"
        }
    .end annotation
.end field

.field volatile mBroadCastSize:I

.field mCheckThreadCount:S

.field mClassContextImpl:Ljava/lang/Class;

.field mClassSQLiteDebug:Ljava/lang/Class;

.field mClassV4Fragment:Ljava/lang/Class;

.field mCloseGuardInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCountInstancesOfClass:Ljava/lang/reflect/Method;

.field mCpuPercentTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mDataBaseMemoryUsed:Ljava/lang/reflect/Field;

.field mDestroyedActivityName:Ljava/lang/String;

.field mEditorImpl:Ljava/lang/Class;

.field mEnableRecentAllocations:Ljava/lang/reflect/Method;

.field mExecuteThreadInfoBootSize:I

.field mExecuteThreadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mExternalPath:Ljava/lang/String;

.field mFieldThreadCount:Ljava/lang/reflect/Field;

.field mFileToZipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mFillStackTraceElements:Ljava/lang/reflect/Method;

.field mFinalizerObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFirstMobileRxBytes:J

.field mFirstMobileTxBytes:J

.field mFirstTotalRxBytes:J

.field mFirstTotalTxBytes:J

.field mGetDatabaseInfo:Ljava/lang/reflect/Method;

.field mGetGlobalAllocCount:Ljava/lang/reflect/Method;

.field mGetGlobalAllocSize:Ljava/lang/reflect/Method;

.field mGetGlobalAssetCount:Ljava/lang/reflect/Method;

.field mGetGlobalAssetManagerCount:Ljava/lang/reflect/Method;

.field mGetRecentAllocations:Ljava/lang/reflect/Method;

.field mGetViewInstanceCount:Ljava/lang/reflect/Method;

.field mGetViewRootImplCount:Ljava/lang/reflect/Method;

.field mHasMemroyLeack:Z

.field mInstallBundleInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field mJiffyMillis:I

.field mLifeCycleArray:[Ljava/lang/String;

.field mMainThreadBlockGuardInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMainThreadEndCpu:J

.field mMainThreadNice:I

.field mMainThreadPriority:I

.field mMainThreadTid:I

.field mMajorFaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mMemoryLevels:Landroid/util/SparseIntArray;

.field mMethodInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNewTheadCountAyr:[I

.field mOnActivityLifeCycleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnActivityLifeCycleTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnBackForGroundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnBootFinishedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnLineMonitor:Lc8/msf;

.field mOnLineMonitorNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnLineMonitorNotifyTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPerCpuLoads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mPidCpuPercentRecords:Landroid/util/SparseIntArray;

.field mRunningFinalizerCount:Landroid/util/SparseIntArray;

.field mRunningPidScores:Landroid/util/SparseIntArray;

.field mRunningSysScores:Landroid/util/SparseIntArray;

.field mRunningThreadsCount:Landroid/util/SparseIntArray;

.field mServiceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSparseArrayBootProgressEnd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSparseArrayBootProgressName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSparseArrayBootProgressStart:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSparseArrayThreadName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStartBundleInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSysCpuPercentRecords:Landroid/util/SparseIntArray;

.field mSysIoWaitCounts:Landroid/util/SparseIntArray;

.field mSysIoWaitPercent:Landroid/util/SparseIntArray;

.field mSysIoWaitSums:Landroid/util/SparseIntArray;

.field mSysLoads1Min:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mSysLoads5Min:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mSysSchedWaitCounts:Landroid/util/SparseIntArray;

.field mSysSchedWaitSums:Landroid/util/SparseIntArray;

.field mSysThreadsCount:Landroid/util/SparseIntArray;

.field mSystemRunCpuTimeEnd:J

.field mSystemRunCpuTimeStart:J

.field mSystemTotalCpuTimeEnd:J

.field mSystemTotalCpuTimeStart:J

.field mTemplateZipFile:Ljava/lang/String;

.field mThreadAllocatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/vsf;",
            ">;"
        }
    .end annotation
.end field

.field mThreadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mThreadPoolInfoMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;",
            ">;"
        }
    .end annotation
.end field

.field mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field mThreadStackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mThreadStackTraceTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;",
            ">;"
        }
    .end annotation
.end field

.field mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTraceSharedPreferencesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTraceSoFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTraceThreadPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVmStackClass:Ljava/lang/Class;

.field mVmThreadsCount:Landroid/util/SparseIntArray;

.field mWakeLockInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;"
        }
    .end annotation
.end field

.field sTemplateName:Ljava/lang/String;

.field sTemplateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 124
    sput v1, Lc8/Asf;->sTraceRegThreadThreshold:I

    .line 137
    const/16 v0, 0x400

    sput v0, Lc8/Asf;->sMemoryOccupySize:I

    .line 138
    const/16 v0, 0x32

    sput-short v0, Lc8/Asf;->sTraceActivityCount:S

    .line 139
    const/16 v0, 0x1f4

    sput-short v0, Lc8/Asf;->sTraceThreadInterval:S

    .line 145
    sput-short v1, Lc8/Asf;->sThreadExecuteTimeInterval:S

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Asf;->sTraceOnLineListener:Z

    .line 148
    const/16 v0, 0x1e

    sput v0, Lc8/Asf;->sTraceOnLineDuration:I

    .line 149
    const/4 v0, 0x0

    sput v0, Lc8/Asf;->sHookDelayTime:I

    return-void
.end method

.method constructor <init>(Lc8/msf;)V
    .locals 12
    .param p1, "online"    # Lc8/msf;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v7, "/OnLineMonitorTemplate.zip"

    iput-object v7, p0, Lc8/Asf;->sTemplateName:Ljava/lang/String;

    .line 80
    const-string/jumbo v7, "https://os.alipayobjects.com/rmsportal/kOKzRQMUAScJhkFVDOfC.zip"

    iput-object v7, p0, Lc8/Asf;->sTemplateUrl:Ljava/lang/String;

    .line 165
    const/4 v7, 0x4

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepCpu:[I

    .line 166
    const/4 v7, 0x4

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepThread:[I

    .line 167
    const/4 v7, 0x4

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepIoWait:[I

    .line 168
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepGcCount:[I

    .line 169
    const/4 v7, 0x2

    new-array v7, v7, [J

    iput-object v7, p0, Lc8/Asf;->mBootStepPidTime:[J

    .line 170
    const/4 v7, 0x2

    new-array v7, v7, [J

    iput-object v7, p0, Lc8/Asf;->mBootStepMainThreadTime:[J

    .line 171
    const/4 v7, 0x6

    new-array v7, v7, [F

    iput-object v7, p0, Lc8/Asf;->mBootStepSched:[F

    .line 172
    const/4 v7, 0x2

    new-array v7, v7, [F

    iput-object v7, p0, Lc8/Asf;->mBootStepCpuLoad:[F

    .line 173
    const/4 v7, 0x6

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepMem:[I

    .line 174
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mBootStepClass:[I

    .line 182
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lc8/Asf;->mFirstMobileRxBytes:J

    .line 223
    new-instance v7, Ljava/util/LinkedHashMap;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mBootDiffThreadMap:Ljava/util/Map;

    .line 225
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lc8/Asf;->mLifeCycleArray:[Ljava/lang/String;

    .line 226
    const/4 v7, 0x0

    iput-short v7, p0, Lc8/Asf;->mCheckThreadCount:S

    .line 227
    const/4 v7, 0x0

    iput v7, p0, Lc8/Asf;->mBroadCastSize:I

    .line 233
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    .line 234
    new-instance v7, Ljava/util/WeakHashMap;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mActivityWeakMap:Ljava/util/WeakHashMap;

    .line 245
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "onActivityIdle"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "onActivityCreate"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "onActivityStarted"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "onActivityResume"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "onActivityPaused"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "onActivityStoped"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "onActivityDestroyed"

    aput-object v9, v7, v8

    iput-object v7, p0, Lc8/Asf;->mActivityLifeCycleName:[Ljava/lang/String;

    .line 246
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x1f4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mExecuteThreadInfoList:Ljava/util/ArrayList;

    .line 252
    const/4 v7, 0x3

    new-array v7, v7, [I

    iput-object v7, p0, Lc8/Asf;->mNewTheadCountAyr:[I

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    .line 259
    const/4 v7, 0x5

    iput v7, p0, Lc8/Asf;->mMainThreadPriority:I

    .line 281
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x1e

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mThreadStackTraceTimeList:Ljava/util/ArrayList;

    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mWakeLockInfoList:Ljava/util/ArrayList;

    .line 303
    iput-object p1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    .line 304
    sget-object v7, Lc8/msf;->sOnLineMonitorFileDir:Ljava/lang/String;

    iput-object v7, p0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    .line 305
    iget-object v7, p0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/Asf;->sTemplateName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mTemplateZipFile:Ljava/lang/String;

    .line 309
    :cond_0
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    .line 310
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    .line 311
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    .line 312
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mRunningPidScores:Landroid/util/SparseIntArray;

    .line 313
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysThreadsCount:Landroid/util/SparseIntArray;

    .line 314
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mVmThreadsCount:Landroid/util/SparseIntArray;

    .line 315
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    .line 316
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mCpuPercentTimestamps:Ljava/util/ArrayList;

    .line 317
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mMajorFaults:Ljava/util/List;

    .line 318
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    .line 319
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    .line 320
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    .line 321
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    .line 322
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    .line 323
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mMemoryLevels:Landroid/util/SparseIntArray;

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mPerCpuLoads:Ljava/util/ArrayList;

    .line 325
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysLoads1Min:Ljava/util/ArrayList;

    .line 326
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mSysLoads5Min:Ljava/util/ArrayList;

    .line 327
    new-instance v7, Landroid/util/SparseIntArray;

    const/16 v8, 0x190

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    .line 328
    sget-boolean v7, Lc8/osf;->sIsPerformanceTest:Z

    if-nez v7, :cond_1

    .line 329
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    .line 330
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    .line 333
    :cond_1
    sget-boolean v7, Lc8/Asf;->sTraceMainThread:Z

    if-eqz v7, :cond_2

    .line 334
    new-instance v7, Lc8/zsf;

    const-string/jumbo v8, "MainThreadCheck"

    invoke-direct {v7, p0, v8}, Lc8/zsf;-><init>(Lc8/Asf;Ljava/lang/String;)V

    invoke-virtual {v7}, Lc8/zsf;->start()V

    .line 336
    :cond_2
    sget-boolean v7, Lc8/Asf;->sTraceThreadPool:Z

    if-eqz v7, :cond_3

    .line 338
    :try_start_0
    new-instance v7, Ljava/util/LinkedHashMap;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    .line 339
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mThreadInfoList:Ljava/util/ArrayList;

    .line 340
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mAsyncTaskInfoList:Ljava/util/ArrayList;

    .line 341
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_3
    :goto_0
    sget-boolean v7, Lc8/Asf;->sTraceLog:Z

    if-eqz v7, :cond_4

    .line 347
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 349
    :cond_4
    sget-boolean v7, Lc8/Asf;->sTraceThrowable:Z

    if-eqz v7, :cond_5

    .line 350
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 352
    :cond_5
    sget-boolean v7, Lc8/Asf;->sTraceGetStack:Z

    if-eqz v7, :cond_6

    .line 353
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 355
    :cond_6
    sget-boolean v7, Lc8/Asf;->sTraceLog:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lc8/Asf;->sTraceThrowable:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lc8/Asf;->sTraceGetStack:Z

    if-eqz v7, :cond_8

    .line 357
    :cond_7
    :try_start_1
    const-string/jumbo v7, "dalvik.system.VMStack"

    invoke-static {v7}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mVmStackClass:Ljava/lang/Class;

    .line 358
    iget-object v7, p0, Lc8/Asf;->mVmStackClass:Ljava/lang/Class;

    const-string/jumbo v8, "fillStackTraceElements"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Thread;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, [Ljava/lang/StackTraceElement;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mFillStackTraceElements:Ljava/lang/reflect/Method;

    .line 359
    iget-object v7, p0, Lc8/Asf;->mFillStackTraceElements:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    :cond_8
    :goto_1
    sget-boolean v7, Lc8/Asf;->sTraceSoFile:Z

    if-eqz v7, :cond_9

    .line 366
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceSoFileList:Ljava/util/ArrayList;

    .line 368
    :cond_9
    sget-boolean v7, Lc8/Asf;->sTraceThreadPriority:Z

    if-eqz v7, :cond_a

    .line 369
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceThreadPriorityList:Ljava/util/ArrayList;

    .line 371
    :cond_a
    sget-boolean v7, Lc8/Asf;->sTraceSharedPreferences:Z

    if-eqz v7, :cond_b

    .line 372
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mTraceSharedPreferencesList:Ljava/util/ArrayList;

    .line 374
    :cond_b
    sget-boolean v7, Lc8/Asf;->sNeedHook:Z

    if-eqz v7, :cond_c

    sget v7, Lc8/Asf;->sHookDelayTime:I

    if-nez v7, :cond_c

    .line 375
    invoke-virtual {p0}, Lc8/Asf;->traceHook()V

    .line 380
    :cond_c
    sget-boolean v7, Lc8/Asf;->sTraceActivityManager:Z

    if-eqz v7, :cond_d

    .line 381
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mBroadCastInfoList:Ljava/util/ArrayList;

    .line 382
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mServiceInfoList:Ljava/util/ArrayList;

    .line 383
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mMethodInfoList:Ljava/util/ArrayList;

    .line 384
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lc8/Asf;->mActivityLifeList:Ljava/util/ArrayList;

    .line 387
    :cond_d
    sget-boolean v7, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v7, :cond_e

    .line 388
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnBootFinishedList:Ljava/util/ArrayList;

    .line 389
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnBackForGroundList:Ljava/util/ArrayList;

    .line 390
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    .line 391
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    .line 392
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnActivityLifeCycleTimeList:Ljava/util/ArrayList;

    .line 393
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc8/Asf;->mOnLineMonitorNotifyTimeList:Ljava/util/ArrayList;

    .line 395
    :cond_e
    sget-object v7, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 397
    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lc8/Asf;->mTemplateZipFile:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_f

    .line 400
    const-string/jumbo v5, "download"

    .line 401
    .local v5, "serviceString":Ljava/lang/String;
    iget-object v7, p1, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 402
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    iget-object v7, p0, Lc8/Asf;->sTemplateUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 403
    .local v6, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 404
    .local v4, "request":Landroid/app/DownloadManager$Request;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 405
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 414
    .end local v1    # "downloadManager":Landroid/app/DownloadManager;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "serviceString":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_f
    :goto_2
    sget-boolean v7, Lc8/Asf;->sTraceMemory:Z

    if-nez v7, :cond_10

    sget-boolean v7, Lc8/osf;->sIsDebug:Z

    if-eqz v7, :cond_11

    .line 415
    :cond_10
    sget v7, Lc8/msf;->sApiLevel:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_11

    .line 417
    :try_start_3
    const-class v7, Landroid/os/Debug;

    const-string/jumbo v8, "countInstancesOfClass"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    .line 418
    iget-object v7, p0, Lc8/Asf;->mCountInstancesOfClass:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 419
    const-class v7, Landroid/view/ViewDebug;

    const-string/jumbo v8, "getViewInstanceCount"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetViewInstanceCount:Ljava/lang/reflect/Method;

    .line 420
    iget-object v7, p0, Lc8/Asf;->mGetViewInstanceCount:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 421
    const-class v7, Landroid/view/ViewDebug;

    const-string/jumbo v8, "getViewRootImplCount"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetViewRootImplCount:Ljava/lang/reflect/Method;

    .line 422
    iget-object v7, p0, Lc8/Asf;->mGetViewRootImplCount:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 423
    const-class v7, Landroid/content/res/AssetManager;

    const-string/jumbo v8, "getGlobalAssetCount"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetGlobalAssetCount:Ljava/lang/reflect/Method;

    .line 424
    iget-object v7, p0, Lc8/Asf;->mGetGlobalAssetCount:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 425
    const-class v7, Landroid/content/res/AssetManager;

    const-string/jumbo v8, "getGlobalAssetManagerCount"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetGlobalAssetManagerCount:Ljava/lang/reflect/Method;

    .line 426
    iget-object v7, p0, Lc8/Asf;->mGetGlobalAssetManagerCount:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 427
    const-class v7, Landroid/os/Parcel;

    const-string/jumbo v8, "getGlobalAllocSize"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetGlobalAllocSize:Ljava/lang/reflect/Method;

    .line 428
    iget-object v7, p0, Lc8/Asf;->mGetGlobalAllocSize:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 429
    const-class v7, Landroid/os/Parcel;

    const-string/jumbo v8, "getGlobalAllocCount"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetGlobalAllocCount:Ljava/lang/reflect/Method;

    .line 430
    iget-object v7, p0, Lc8/Asf;->mGetGlobalAllocCount:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 431
    const-string/jumbo v7, "android.database.sqlite.SQLiteDebug"

    invoke-static {v7}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mClassSQLiteDebug:Ljava/lang/Class;

    .line 432
    const-string/jumbo v7, "android.app.ContextImpl"

    invoke-static {v7}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mClassContextImpl:Ljava/lang/Class;

    .line 434
    iget-object v7, p0, Lc8/Asf;->mClassSQLiteDebug:Ljava/lang/Class;

    const-string/jumbo v8, "getDatabaseInfo"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    .line 435
    iget-object v7, p0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 436
    const-string/jumbo v7, "android.database.sqlite.SQLiteDebug$PagerStats"

    invoke-static {v7}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 437
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "memoryUsed"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mDataBaseMemoryUsed:Ljava/lang/reflect/Field;

    .line 438
    iget-object v7, p0, Lc8/Asf;->mDataBaseMemoryUsed:Ljava/lang/reflect/Field;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 443
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_3
    :try_start_4
    const-string/jumbo v7, "android.support.v4.app.Fragment"

    invoke-static {v7}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lc8/Asf;->mClassV4Fragment:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 469
    :cond_11
    :goto_4
    sget-boolean v7, Lc8/msf;->sIsTraceDetail:Z

    .line 494
    return-void

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 361
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 362
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_4

    :catch_3
    move-exception v7

    goto :goto_3

    :catch_4
    move-exception v7

    goto/16 :goto_2
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

.method private createBasicInfo()Ljava/util/HashMap;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2537
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2538
    .local v4, "basic":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v40, "model"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileModel:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    const-string/jumbo v40, "brand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileBrand:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    const-string/jumbo v40, "app"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    const-string/jumbo v40, "version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lc8/msf;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    const-string/jumbo v40, "api"

    sget v41, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    const-string/jumbo v40, "root"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lc8/msf;->mIsRooted:Z

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    const-string/jumbo v40, "cpucount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    const-string/jumbo v40, "devmem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    const-string/jumbo v40, "devremainmem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_0

    .line 2548
    const-string/jumbo v40, "devremainmempercent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mAvailMemory:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x64

    mul-long v42, v42, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mDeviceTotalMemory:J

    move-wide/from16 v44, v0

    div-long v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    :cond_0
    const-string/jumbo v40, "threshold"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mMemoryThreshold:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    move-object/from16 v40, v0

    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMaxFreq:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-eqz v40, :cond_9

    .line 2553
    const/16 v18, 0x0

    .local v18, "maxsize":I
    const/16 v20, 0x0

    .line 2554
    .local v20, "minSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mCpuProcessCount:S

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v9, v0, :cond_3

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    move-object/from16 v40, v0

    aget v40, v40, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mCpuMaxFreq:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-nez v40, :cond_1

    .line 2556
    add-int/lit8 v18, v18, 0x1

    .line 2558
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuFreqArray:[F

    move-object/from16 v40, v0

    aget v40, v40, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-nez v40, :cond_2

    .line 2559
    add-int/lit8 v20, v20, 0x1

    .line 2554
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2562
    :cond_3
    if-lez v18, :cond_8

    if-lez v20, :cond_8

    .line 2563
    const-string/jumbo v40, "cpufreq"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/msf;->mCpuMaxFreq:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " * "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "<br>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuMinFreq:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " * "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    .end local v9    # "i":I
    .end local v18    # "maxsize":I
    .end local v20    # "minSize":I
    :goto_1
    const-string/jumbo v40, "pidmem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mTotalUsedMemory:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    const-string/jumbo v40, "maxcanusejavamem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mMaxCanUseJavaMemory:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    const-string/jumbo v40, "pidremainmem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mRemainAvailMemory:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    const-string/jumbo v40, "pidmempercent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalMemoryPercent:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuMaxFreq:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_a

    .line 2576
    const-string/jumbo v40, "gpufreq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuMaxFreq:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    :goto_2
    const-string/jumbo v40, "gpumodel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuModel:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    const-string/jumbo v40, "gpubrand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->gpuBrand:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const-string/jumbo v40, "cpumodel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuModel:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    const-string/jumbo v40, "cpubrand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->cpuBrand:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    const-string/jumbo v40, "opengl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOpenGlVersion:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    const-string/jumbo v40, "screenwidth"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenWidth:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    const-string/jumbo v40, "screenheight"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenHeght:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    const-string/jumbo v40, "screendensity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->density:F

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    const-string/jumbo v40, "majorfault"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mMajorFault:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    const-string/jumbo v40, "javaheap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mDalvikPss:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    const-string/jumbo v40, "javaheapalloc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mDalvikAllocated:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    const-string/jumbo v40, "javaheapfree"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mDalvikFree:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    const-string/jumbo v40, "sBackInGroundOnBoot"

    sget-boolean v41, Lc8/osf;->sBackInGroundOnBoot:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    const-string/jumbo v40, "sIsBootCorrect"

    sget-boolean v41, Lc8/osf;->sIsBootCorrect:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    const-string/jumbo v40, "mBootTotalTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mBootTotalTime:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    const-string/jumbo v40, "mBootUsedTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mBootUsedTime:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    const-string/jumbo v40, "mPreparePidTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->preparePidTime:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    const-string/jumbo v40, "sBackInGroundOnBoot"

    sget-boolean v41, Lc8/osf;->sBackInGroundOnBoot:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    const-string/jumbo v40, "sAdvertisementTime"

    sget v41, Lc8/osf;->sAdvertisementTime:I

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    const-string/jumbo v40, "sIsBootCorrect"

    sget-boolean v41, Lc8/osf;->sIsBootCorrect:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    const-string/jumbo v40, "sIsCodeBoot"

    sget-boolean v41, Lc8/osf;->sIsCodeBoot:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    const-string/jumbo v40, "sFirstActivityTime"

    sget-wide v42, Lc8/osf;->sFirstActivityTime:J

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    const-string/jumbo v40, "sLaunchTime"

    sget-wide v42, Lc8/osf;->sLaunchTime:J

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    const-string/jumbo v40, "nativeheap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    const-string/jumbo v40, "nativeheapalloc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mNativeHeapAllocatedSize:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    const-string/jumbo v40, "nativeheapfree"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mNativeHeapPss:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mNativeHeapAllocatedSize:J

    move-wide/from16 v44, v0

    sub-long v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mMobileRxBytes:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mFirstMobileRxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v22, v40, v42

    .line 2612
    .local v22, "mobileRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mMobileTxBytes:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mFirstMobileTxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v24, v40, v42

    .line 2613
    .local v24, "mobileTxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mTotalRxBytes:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mFirstTotalRxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v36, v40, v42

    .line 2614
    .local v36, "totalRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mTotalTxBytes:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mFirstTotalTxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v38, v40, v42

    .line 2615
    .local v38, "totalTxBytes":J
    const-wide/16 v40, 0x400

    cmp-long v40, v24, v40

    if-ltz v40, :cond_b

    .line 2616
    const-string/jumbo v40, "mobiletx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v24, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    :goto_3
    const-wide/16 v40, 0x400

    cmp-long v40, v22, v40

    if-ltz v40, :cond_c

    .line 2622
    const-string/jumbo v40, "mobilerx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v22, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    :goto_4
    const-wide/16 v40, 0x400

    cmp-long v40, v38, v40

    if-ltz v40, :cond_d

    .line 2627
    const-string/jumbo v40, "totaltx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v38, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    :goto_5
    const-wide/16 v40, 0x400

    cmp-long v40, v36, v40

    if-ltz v40, :cond_e

    .line 2632
    const-string/jumbo v40, "totalrx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v36, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2637
    :goto_6
    const-string/jumbo v40, "startbattery"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mInitBatteryPercent:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2638
    const-string/jumbo v40, "endbattery"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mBatteryPercent:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    const-string/jumbo v41, "batterycharging"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mBatteryStatus:I

    move/from16 v40, v0

    const/16 v42, 0x2

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_f

    const/16 v40, 0x1

    :goto_7
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mBatteryHealth:I

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    .line 2642
    const-string/jumbo v40, "batteryhealth"

    const-string/jumbo v41, "<font color=red>\u7535\u6c60\u8fc7\u70ed</font>"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2651
    :goto_8
    const-string/jumbo v40, "sratrunningapp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mInitRunningProgress:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    const-string/jumbo v40, "sratrunningser"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mInitRunningService:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mRunningProgress:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mInitRunningProgress:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_13

    .line 2654
    const-string/jumbo v40, "endrunningapp"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/msf;->mRunningProgress:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " <font color=red>\u6709 "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/msf;->mInitRunningProgress:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lc8/msf;->mRunningProgress:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " \u4e2a\u88ab\u56de\u6536</font>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    :goto_9
    sget v40, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v41, 0x13

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_14

    .line 2660
    new-instance v19, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2661
    .local v19, "meminfo":Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v19 .. v19}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 2662
    const/16 v34, 0x0

    .line 2663
    .local v34, "totalPrivateClean":I
    const-string/jumbo v40, "ussmem"

    invoke-virtual/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v41

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x400

    move/from16 v41, v0

    add-int v41, v41, v34

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const-string/jumbo v40, "privateclean"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    const-string/jumbo v40, "privatedirty"

    invoke-virtual/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v41

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x400

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    const-string/jumbo v40, "shareddirty"

    invoke-virtual/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v41

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x400

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    const-string/jumbo v40, "sharedclean"

    invoke-virtual/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v41

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x400

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    const-string/jumbo v40, "swappablepss"

    invoke-virtual/range {v19 .. v19}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v41

    move/from16 v0, v41

    div-int/lit16 v0, v0, 0x400

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    .end local v19    # "meminfo":Landroid/os/Debug$MemoryInfo;
    .end local v34    # "totalPrivateClean":I
    :goto_a
    const-string/jumbo v40, "endrunningser"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mRunningService:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2679
    const-string/jumbo v40, "devscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2680
    const-string/jumbo v40, "lowperformance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->isLowPerformance:Z

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    const/16 v35, 0x0

    .line 2682
    .local v35, "trimStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mTrimMemoryLevel:I

    move/from16 v40, v0

    sparse-switch v40, :sswitch_data_0

    .line 2716
    :goto_b
    const-string/jumbo v40, "memorytrim"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    const-string/jumbo v40, "maxthreadcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mMaxThreadCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    const-string/jumbo v40, "maxruntimethreadcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mMaxRuntimeThreadCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    const-string/jumbo v40, "maxrunningthreadcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mMaxRunningThreadCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    const-string/jumbo v40, "runtimethreadcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mRuntimeThreadCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    const-string/jumbo v40, "threadcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mThreadCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2724
    const-string/jumbo v40, "isbackground"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lc8/msf;->mIsInBackGround:Z

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    const-string/jumbo v40, "largeheap"

    sget-boolean v41, Lc8/osf;->sIsLargeHeap:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2726
    const-string/jumbo v40, "hardwareacce"

    sget-boolean v41, Lc8/osf;->sIsHardWareAcce:Z

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x5a

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_15

    .line 2730
    const-string/jumbo v5, "<font color=red>\u65d7\u8230\u673a</font>"

    .line 2744
    .local v5, "devClass":Ljava/lang/String;
    :goto_c
    const-string/jumbo v40, "devclass"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    const-string/jumbo v40, "sysinitscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mFirstSystemRunningScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mFirstSystemRunningScore:S

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lc8/Asf;->getRunStatus(I)Ljava/lang/String;

    move-result-object v5

    .line 2747
    const-string/jumbo v40, "sysinitclass"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mTotalPidRunningScoreCount:I

    move/from16 v40, v0

    if-lez v40, :cond_4

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mTotalPidRunningScore:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mTotalPidRunningScoreCount:I

    move/from16 v41, v0

    div-int v26, v40, v41

    .line 2750
    .local v26, "pidScore":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lc8/Asf;->getRunStatus(I)Ljava/lang/String;

    move-result-object v5

    .line 2751
    const-string/jumbo v40, "pidavgscore"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    const-string/jumbo v40, "pidclass"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    .end local v26    # "pidScore":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mTotalSysRunningScoreCount:I

    move/from16 v40, v0

    if-lez v40, :cond_5

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mTotalSysRunningScore:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mTotalSysRunningScoreCount:I

    move/from16 v41, v0

    div-int v28, v40, v41

    .line 2756
    .local v28, "sysScore":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/Asf;->getRunStatus(I)Ljava/lang/String;

    move-result-object v5

    .line 2757
    const-string/jumbo v40, "sysclass"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2758
    const-string/jumbo v40, "sysavgscore"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    .end local v28    # "sysScore":I
    :cond_5
    const-string/jumbo v40, "sysmaxscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mMaxSystemRunningScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2762
    const-string/jumbo v40, "sysminscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mMinSystemRunningScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    const-string/jumbo v40, "pidmaxscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mMaxPidRunningScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    const-string/jumbo v40, "pidminscore"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-short v0, v0, Lc8/msf;->mMinPidRunningScore:S

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mSystemTotalCpuTimeEnd:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    move-wide/from16 v42, v0

    sub-long v14, v40, v42

    .line 2767
    .local v14, "intervalCpu":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mSystemRunCpuTimeEnd:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Asf;->mSystemRunCpuTimeStart:J

    move-wide/from16 v42, v0

    sub-long v16, v40, v42

    .line 2768
    .local v16, "intervalRun":J
    sget-boolean v40, Lc8/osf;->sIsBootCorrect:Z

    if-eqz v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v14, v40

    if-lez v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v16, v40

    if-lez v40, :cond_6

    .line 2769
    const-string/jumbo v40, "bootsyscpu"

    const-wide/16 v42, 0x64

    mul-long v42, v42, v16

    div-long v42, v42, v14

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    const-string/jumbo v40, "bootpidcpu"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mBootJiffyTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x64

    mul-long v42, v42, v44

    div-long v42, v42, v14

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    const-string/jumbo v40, "bootpidrelativecpu"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mBootJiffyTime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x64

    mul-long v42, v42, v44

    div-long v42, v42, v16

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mUIHiddenTime:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-lez v40, :cond_1b

    .line 2775
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v40

    const-wide/32 v42, 0xf4240

    div-long v40, v40, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lc8/msf;->mUIHiddenTime:J

    move-wide/from16 v42, v0

    sub-long v30, v40, v42

    .line 2776
    .local v30, "time":J
    const-string/jumbo v40, "uihidetime"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    .end local v30    # "time":J
    :goto_d
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lc8/msf;->mTotalRxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v36, v40, v42

    .line 2782
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lc8/msf;->mTotalTxBytes:J

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v38, v40, v42

    .line 2783
    const-wide/16 v40, 0x400

    cmp-long v40, v38, v40

    if-ltz v40, :cond_1c

    .line 2784
    const-string/jumbo v40, "bgtotaltx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v38, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    :goto_e
    const-wide/16 v40, 0x400

    cmp-long v40, v36, v40

    if-ltz v40, :cond_1d

    .line 2789
    const-string/jumbo v40, "bgtotalrx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v42, 0x400

    div-long v42, v36, v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " M"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    :goto_f
    sget v40, Lc8/msf;->sApiLevel:I

    const/16 v41, 0x17

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_1f

    .line 2795
    const-string/jumbo v40, "gccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    const-string/jumbo v40, "blockgccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mBlockingGCCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lc8/msf;->mTotalBlockingGCTime:J

    move-wide/from16 v30, v0

    .line 2800
    .restart local v30    # "time":J
    const-wide/32 v40, 0xea60

    cmp-long v40, v30, v40

    if-ltz v40, :cond_1e

    .line 2801
    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v40, v0

    const v41, 0x476a6000    # 60000.0f

    div-float v29, v40, v41

    .line 2802
    .local v29, "time1":F
    const-string/jumbo v40, "blockgctime"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " \u5206"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    .end local v29    # "time1":F
    .end local v30    # "time":J
    :goto_10
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeFreesize:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v10, v0

    .line 2815
    .local v10, "freesize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->storeTotalSize:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v12, v0

    .line 2817
    .local v12, "innerSize":J
    const-string/jumbo v40, "innerstore"

    const-wide/16 v42, 0x64

    mul-long v42, v42, v12

    const-wide/16 v44, 0x64

    div-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    const-string/jumbo v40, "innerstorefree"

    const-wide/16 v42, 0x64

    mul-long v42, v42, v10

    const-wide/16 v44, 0x400

    div-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 2821
    .local v21, "path":Ljava/lang/String;
    new-instance v27, Landroid/os/StatFs;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2822
    .local v27, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getBlockSize()I

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    .line 2823
    .local v6, "blockSize":J
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getBlockCount()I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 2824
    .local v32, "totalBlocks":J
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    mul-long v40, v40, v6

    const-wide/16 v42, 0x400

    div-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v10, v40, v42

    .line 2825
    mul-long v40, v6, v32

    const-wide/16 v42, 0x400

    div-long v40, v40, v42

    const-wide/16 v42, 0x400

    div-long v12, v40, v42

    .line 2826
    const-string/jumbo v40, "externalstore"

    const-wide/16 v42, 0x64

    mul-long v42, v42, v12

    const-wide/16 v44, 0x400

    div-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    const-string/jumbo v40, "externalstorefree"

    const-wide/16 v42, 0x64

    mul-long v42, v42, v10

    const-wide/16 v44, 0x400

    div-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2832
    .end local v6    # "blockSize":J
    .end local v10    # "freesize":J
    .end local v12    # "innerSize":J
    .end local v21    # "path":Ljava/lang/String;
    .end local v27    # "stat":Landroid/os/StatFs;
    .end local v32    # "totalBlocks":J
    :goto_11
    const-string/jumbo v40, "avg1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    const-string/jumbo v40, "avg5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    const-string/jumbo v40, "avg15"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mSystemLoadAvg:[F

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    const-string/jumbo v40, "pidwaitsum"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mPidWaitSum:F

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    mul-float v41, v41, v42

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Asf;->mJiffyMillis:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    const-string/jumbo v40, "pidwaitmax"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mPidWaitMax:F

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    mul-float v41, v41, v42

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Asf;->mJiffyMillis:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x42c80000    # 100.0f

    div-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    const-string/jumbo v40, "pidwaitcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mPidWaitCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mOpenFileCount:I

    move/from16 v40, v0

    if-lez v40, :cond_20

    .line 2839
    const-string/jumbo v40, "openfilecount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mOpenFileCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    :goto_12
    const-string/jumbo v40, "iowiatcount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mPidIoWaitCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    const-string/jumbo v40, "iowiattime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mPidIoWaitSum:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Asf;->mJiffyMillis:I

    move/from16 v42, v0

    mul-int v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    const-string/jumbo v40, "initnewthread"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mNewTheadCountAyr:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    const-string/jumbo v40, "bootactivitythread"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mNewTheadCountAyr:[I

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    const-string/jumbo v40, "bootendthread"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mNewTheadCountAyr:[I

    move-object/from16 v41, v0

    const/16 v42, 0x2

    aget v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    const-string/jumbo v40, "threa_time_threshold"

    sget v41, Lc8/Asf;->sTraceRegThreadThreshold:I

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    const-string/jumbo v40, "statissize"

    sget v41, Lc8/Asf;->sMemoryOccupySize:I

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7

    .line 2853
    :try_start_1
    const-string/jumbo v40, "currentthread"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mFieldThreadCount:Ljava/lang/reflect/Field;

    move-object/from16 v41, v0

    const-class v42, Ljava/lang/Thread;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2859
    :cond_7
    :goto_13
    const-string/jumbo v40, "mBootStepCpu"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepCpu:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    const-string/jumbo v40, "mBootStepGcCount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepGcCount:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2861
    const-string/jumbo v40, "mBootStepMem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepMem:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    const-string/jumbo v40, "mBootStepIoWait"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepIoWait:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2863
    const-string/jumbo v40, "mBootStepSched"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepSched:[F

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    const-string/jumbo v40, "mBootStepCpuLoad"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepCpuLoad:[F

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    const-string/jumbo v40, "mBootStepThread"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepThread:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    const-string/jumbo v40, "mBootStepClass"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepClass:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    const-string/jumbo v40, "mBootStepPidTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepPidTime:[J

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    const-string/jumbo v40, "mBootStepMainThreadTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mBootStepMainThreadTime:[J

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    const-string/jumbo v40, "mProcessCpuTracker"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    const-string/jumbo v40, "mBootEndTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Lc8/msf;->mBootEndTime:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    const-string/jumbo v40, "mBootActivityLoadTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mBootActivityLoadTime:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    return-object v4

    .line 2565
    .end local v5    # "devClass":Ljava/lang/String;
    .end local v14    # "intervalCpu":J
    .end local v16    # "intervalRun":J
    .end local v22    # "mobileRxBytes":J
    .end local v24    # "mobileTxBytes":J
    .end local v35    # "trimStr":Ljava/lang/String;
    .end local v36    # "totalRxBytes":J
    .end local v38    # "totalTxBytes":J
    .restart local v9    # "i":I
    .restart local v18    # "maxsize":I
    .restart local v20    # "minSize":I
    :cond_8
    const-string/jumbo v40, "cpufreq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mCpuMaxFreq:F

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2568
    .end local v9    # "i":I
    .end local v18    # "maxsize":I
    .end local v20    # "minSize":I
    :cond_9
    const-string/jumbo v40, "cpufreq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mCpuMaxFreq:F

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2578
    :cond_a
    const-string/jumbo v40, "gpufreq"

    const-string/jumbo v41, "Unknown"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2618
    .restart local v22    # "mobileRxBytes":J
    .restart local v24    # "mobileTxBytes":J
    .restart local v36    # "totalRxBytes":J
    .restart local v38    # "totalTxBytes":J
    :cond_b
    const-string/jumbo v40, "mobiletx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2624
    :cond_c
    const-string/jumbo v40, "mobilerx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2629
    :cond_d
    const-string/jumbo v40, "totaltx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2634
    :cond_e
    const-string/jumbo v40, "totalrx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 2639
    :cond_f
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 2643
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mBatteryHealth:I

    move/from16 v40, v0

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_11

    .line 2644
    const-string/jumbo v40, "batteryhealth"

    const-string/jumbo v41, "\u7535\u6c60\u826f\u597d"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 2645
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lc8/msf;->mBatteryHealth:I

    move/from16 v40, v0

    const/16 v41, 0x5

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 2646
    const-string/jumbo v40, "batteryhealth"

    const-string/jumbo v41, "<font color=red>\u7535\u538b\u8fc7\u9ad8</font>"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 2648
    :cond_12
    const-string/jumbo v40, "batteryhealth"

    const-string/jumbo v41, "\u672a\u77e5"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 2656
    :cond_13
    const-string/jumbo v40, "endrunningapp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mRunningProgress:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 2670
    :cond_14
    const-string/jumbo v40, "ussmem"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    const-string/jumbo v40, "privateclean"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    const-string/jumbo v40, "privatedirty"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string/jumbo v40, "shareddirty"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string/jumbo v40, "sharedclean"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    const-string/jumbo v40, "swappablepss"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 2684
    .restart local v35    # "trimStr":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v35, "0,\u6b63\u5e38"

    .line 2685
    goto/16 :goto_b

    .line 2688
    :sswitch_1
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u8bbe\u5907\u53ef\u4ee5\u4f7f\u7528\u7684\u5185\u5b58\u975e\u5e38\u4f4e, \u53ef\u4ee5\u628a\u4e0d\u7528\u7684\u8d44\u6e90\u91ca\u653e\u4e00\u4e9b\'>5</title></font>"

    .line 2689
    goto/16 :goto_b

    .line 2692
    :sswitch_2
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u8bbe\u5907\u4f7f\u7528\u7684\u5185\u5b58\u6bd4\u8f83\u4f4e, \u7cfb\u7edf\u7ea7\u4f1a\u6740\u6389\u4e00\u4e9b\u5176\u5b83\u7684\u7f13\u5b58\u5e94\u7528\'>10</title></font>"

    .line 2693
    goto/16 :goto_b

    .line 2696
    :sswitch_3
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u7cfb\u7edf\u5df2\u7ecf\u628a\u5927\u591a\u6570\u7f13\u5b58\u5e94\u7528\u6740\u6389\u4e86, \u4f60\u5fc5\u987b\u91ca\u653e\u6389\u4e0d\u662f\u975e\u5e38\u5173\u952e\u7684\u8d44\u6e90\'>15</title></font>"

    .line 2697
    goto/16 :goto_b

    .line 2700
    :sswitch_4
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u5185\u5b58\u4e0d\u8db3\uff0c\u5e76\u4e14\u8be5\u8fdb\u7a0b\u7684UI\u5df2\u7ecf\u4e0d\u53ef\u89c1\u4e86\'>20</title></font>"

    .line 2701
    goto/16 :goto_b

    .line 2704
    :sswitch_5
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u5185\u5b58\u4e0d\u8db3\uff0c\u8be5\u8fdb\u7a0b\u662f\u540e\u53f0\u8fdb\u7a0b\uff0c\u7cfb\u7edf\u5df2\u7ecf\u5f00\u59cb\u6e05\u9664\u7f13\u5b58\u5217\u8868\'>40</title></font>"

    .line 2705
    goto/16 :goto_b

    .line 2708
    :sswitch_6
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u5185\u5b58\u4e0d\u8db3\uff0c\u8fdb\u7a0b\u5728\u540e\u53f0\u8fdb\u7a0b\u5217\u8868\u7684\u4e2d\u90e8\uff0c\u5185\u5b58\u7ee7\u7eed\u4e0d\u8db3\uff0c\u5f88\u53ef\u80fd\u5c06\u88ab\u6740\'>60</title></font>"

    .line 2709
    goto/16 :goto_b

    .line 2712
    :sswitch_7
    const-string/jumbo v35, "<font color=red><a href=\'#\' title=\'\u5185\u5b58\u4e0d\u8db3\uff0c\u5e76\u4e14\u8be5\u8fdb\u7a0b\u5728\u540e\u53f0\u8fdb\u7a0b\u5217\u8868\u6700\u540e\u4e00\u4e2a\uff0c\u9a6c\u4e0a\u5c31\u8981\u88ab\u6e05\u7406\'>80</title></font>"

    goto/16 :goto_b

    .line 2731
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x55

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_16

    .line 2732
    const-string/jumbo v5, "<font color=red>\u504f\u9ad8\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2733
    .end local v5    # "devClass":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x4b

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_17

    .line 2734
    const-string/jumbo v5, "<font color=red>\u4e2d\u9ad8\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2735
    .end local v5    # "devClass":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x3c

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_18

    .line 2736
    const-string/jumbo v5, "<font color=red>\u4e2d\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2737
    .end local v5    # "devClass":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x32

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_19

    .line 2738
    const-string/jumbo v5, "<font color=red>\u4e2d\u4f4e\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2739
    .end local v5    # "devClass":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    move/from16 v40, v0

    const/16 v41, 0x28

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_1a

    .line 2740
    const-string/jumbo v5, "<font color=red>\u4f4e\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2742
    .end local v5    # "devClass":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v5, "<font color=red>\u975e\u5e38\u4f4e\u7aef</font>"

    .restart local v5    # "devClass":Ljava/lang/String;
    goto/16 :goto_c

    .line 2778
    .restart local v14    # "intervalCpu":J
    .restart local v16    # "intervalRun":J
    :cond_1b
    const-string/jumbo v40, "uihidetime"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 2786
    :cond_1c
    const-string/jumbo v40, "bgtotaltx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 2791
    :cond_1d
    const-string/jumbo v40, "bgtotalrx"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " K"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 2804
    .restart local v30    # "time":J
    :cond_1e
    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x447a0000    # 1000.0f

    div-float v29, v40, v41

    .line 2805
    .restart local v29    # "time1":F
    const-string/jumbo v40, "blockgctime"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " \u79d2"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2808
    .end local v29    # "time1":F
    .end local v30    # "time":J
    :cond_1f
    const-string/jumbo v40, "gccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lc8/msf;->mTotalGcCount:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    const-string/jumbo v40, "blockgccount"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    const-string/jumbo v40, "blockgctime"

    const-string/jumbo v41, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 2841
    :cond_20
    const-string/jumbo v40, "openfilecount"

    const-string/jumbo v41, "\u672c\u624b\u673a\u65e0\u6743\u9650"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 2854
    :catch_0
    move-exception v8

    .line 2855
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v40

    goto/16 :goto_11

    .line 2682
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_4
        0x28 -> :sswitch_5
        0x3c -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3170
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3173
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3174
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3176
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3182
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 3178
    :catch_0
    move-exception v0

    .line 3179
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;
    .locals 4
    .param p1, "array"    # Landroid/util/SparseIntArray;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 2523
    new-instance v2, Landroid/util/SparseIntArray;

    sub-int v3, p3, p2

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 2524
    .local v2, "result":Landroid/util/SparseIntArray;
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2525
    .local v1, "len":I
    const/4 v3, 0x0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "index":I
    :goto_0
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2526
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2528
    :cond_0
    return-object v2
.end method

.method public static zipFiles(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 11
    .param p1, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "resFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v7, 0x0

    .line 581
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const v10, 0x19000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v6, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 583
    .local v6, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 584
    .local v5, "resFile":Ljava/io/File;
    const/16 v8, 0x2800

    new-array v0, v8, [B

    .line 585
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2800

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 587
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/util/zip/ZipEntry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 589
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "realLength":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 590
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 600
    .end local v0    # "buffer":[B
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "realLength":I
    .end local v5    # "resFile":Ljava/io/File;
    .end local v6    # "zipout":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v7

    .line 592
    .restart local v0    # "buffer":[B
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "realLength":I
    .restart local v5    # "resFile":Ljava/io/File;
    .restart local v6    # "zipout":Ljava/util/zip/ZipOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 593
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 594
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 596
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "realLength":I
    .end local v5    # "resFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 598
    const-string/jumbo v8, "OnLineMonitor"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    const/4 v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method checkLifiCycle(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2896
    .local p1, "arrayListLeakObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v7, Lc8/osf;->sApplication:Landroid/app/Application;

    if-eqz v7, :cond_2

    .line 2898
    :try_start_0
    const-class v7, Landroid/app/Application;

    const-string/jumbo v8, "mActivityLifecycleCallbacks"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2899
    .local v1, "activityLifecycleCallbacks":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2900
    sget-object v7, Lc8/osf;->sApplication:Landroid/app/Application;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2901
    .local v2, "callback":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2902
    .local v6, "pageInfo":Ljava/lang/StringBuilder;
    instance-of v7, v2, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2903
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 2904
    .local v5, "list":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 2905
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onlinemonitor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2908
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u3001"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<br><br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2915
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/ArrayList;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2921
    .end local v1    # "activityLifecycleCallbacks":Ljava/lang/reflect/Field;
    .end local v2    # "callback":Ljava/lang/Object;
    .end local v6    # "pageInfo":Ljava/lang/StringBuilder;
    :goto_1
    return-object v7

    .line 2917
    :catch_0
    move-exception v3

    .line 2918
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2921
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 688
    iput-wide v2, p0, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    .line 689
    iput-wide v2, p0, Lc8/Asf;->mSystemTotalCpuTimeEnd:J

    .line 690
    iput-object v0, p0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    .line 691
    iput-object v0, p0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;

    .line 692
    iget-object v0, p0, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v0, p0, Lc8/Asf;->mWakeLockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 694
    iput-short v1, p0, Lc8/Asf;->mCheckThreadCount:S

    .line 695
    sput-short v1, Lc8/Asf;->sTracedActivityCount:S

    .line 696
    iget-object v0, p0, Lc8/Asf;->mThreadStackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lc8/Asf;->mThreadStackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 770
    :cond_0
    return-void
.end method

.method generateOutputData(Ljava/lang/String;Z)V
    .locals 179
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isToSleep"    # Z

    .prologue
    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    if-nez v4, :cond_1

    .line 2520
    :cond_0
    return-void

    .line 1586
    :cond_1
    new-instance v137, Lcom/taobao/onlinemonitor/OutputData;

    invoke-direct/range {v137 .. v137}, Lcom/taobao/onlinemonitor/OutputData;-><init>()V

    .line 1587
    .local v137, "outputData":Lcom/taobao/onlinemonitor/OutputData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mBootJiffyTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iput-wide v8, v4, Lc8/msf;->mBootJiffyTime:J

    .line 1594
    :cond_2
    :try_start_0
    sget v4, Lc8/msf;->sApiLevel:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lc8/Asf;->mJiffyMillis:I

    if-nez v4, :cond_6

    .line 1595
    const-string/jumbo v4, "libcore.io.Libcore"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 1596
    .local v42, "clazz":Ljava/lang/Class;
    const-string/jumbo v4, "libcore.io.Os"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v135

    .line 1597
    .local v135, "oszz":Ljava/lang/Class;
    const-string/jumbo v4, "os"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v74

    .line 1598
    .local v74, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1599
    move-object/from16 v0, v74

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v134

    .line 1600
    .local v134, "os":Ljava/lang/Object;
    const-string/jumbo v4, "sysconf"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v6

    move-object/from16 v0, v135

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v166

    .line 1601
    .local v166, "sysconf":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v166

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1602
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v166

    move-object/from16 v1, v134

    invoke-static {v0, v1, v4}, Lc8/Asf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v102

    .line 1603
    .local v102, "jiffyHz":J
    const-wide/16 v4, 0x3e8

    div-long v4, v4, v102

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lc8/Asf;->mJiffyMillis:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    .end local v42    # "clazz":Ljava/lang/Class;
    .end local v74    # "f":Ljava/lang/reflect/Field;
    .end local v102    # "jiffyHz":J
    .end local v134    # "os":Ljava/lang/Object;
    .end local v135    # "oszz":Ljava/lang/Class;
    .end local v166    # "sysconf":Ljava/lang/reflect/Method;
    :goto_0
    sget-boolean v4, Lc8/Asf;->sTraceThread:Z

    if-eqz v4, :cond_3

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lc8/Asf;->traceThreadInfo()V

    .line 1614
    :cond_3
    sget-boolean v4, Lc8/Asf;->sTraceThreadWait:Z

    if-nez v4, :cond_4

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lc8/Asf;->getThreadIoWaitTime()V

    .line 1619
    :cond_4
    invoke-direct/range {p0 .. p0}, Lc8/Asf;->createBasicInfo()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    .line 1620
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mBootCpuTime"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v8, v6, Lc8/msf;->mBootJiffyTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mBootDeviceCpuTime"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Asf;->mSystemTotalCpuTimeEnd:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mJiffyMillis"

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Asf;->mJiffyMillis:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mActivityLifeCycleName"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mActivityLifeCycleName:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sEnableSimpleAnaliseOnDebug"

    sget-boolean v6, Lc8/osf;->sEnableSimpleAnaliseOnDebug:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBackInGroundOnBoot"

    sget-boolean v6, Lc8/osf;->sBackInGroundOnBoot:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sPublishRelease"

    sget-boolean v6, Lc8/osf;->sPublishRelease:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBgCpuUseTreshold"

    sget-short v6, Lc8/osf;->sBgCpuUseTreshold:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sMaxBootTotalTime"

    sget v6, Lc8/osf;->sMaxBootTotalTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sInstanceOccupySize"

    sget v6, Lc8/osf;->sInstanceOccupySize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sDisableJitOnBoot"

    sget-boolean v6, Lc8/osf;->sDisableJitOnBoot:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sSmoothStepInterval"

    sget v6, Lc8/osf;->sSmoothStepInterval:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sHeapUtilization"

    sget v6, Lc8/osf;->sHeapUtilization:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBootExtraType"

    sget-object v6, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sIsCodeBoot"

    sget-boolean v6, Lc8/osf;->sIsCodeBoot:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sLaunchTime"

    sget-wide v8, Lc8/osf;->sLaunchTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sFirstActivityTime"

    sget-wide v8, Lc8/osf;->sFirstActivityTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBootActivityAry"

    sget-object v6, Lc8/osf;->sBootActivityAry:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBootAcitvityCount"

    sget-short v6, Lc8/osf;->sBootAcitvityCount:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sBootCorrectAry"

    sget-object v6, Lc8/osf;->sBootCorrectAry:[Z

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sIsBootCorrect"

    sget-boolean v6, Lc8/osf;->sIsBootCorrect:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sIsLargeHeap"

    sget-boolean v6, Lc8/osf;->sIsLargeHeap:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sIsHardWareAcce"

    sget-boolean v6, Lc8/osf;->sIsHardWareAcce:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sColdBootCheck"

    sget-object v6, Lc8/osf;->sColdBootCheck:Lc8/Hrf;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sPropertiesFileName"

    sget-object v6, Lc8/osf;->sPropertiesFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sMethodStartJitCompilation"

    sget-object v6, Lc8/osf;->sMethodStartJitCompilation:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sMethodDisableJitCompilation"

    sget-object v6, Lc8/osf;->sMethodDisableJitCompilation:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sVMRuntime"

    sget-object v6, Lc8/osf;->sVMRuntime:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sEnableConfig"

    sget-boolean v6, Lc8/osf;->sEnableConfig:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sToSleepTime"

    sget v6, Lc8/osf;->sToSleepTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sMainThreadStartCpu"

    sget-wide v8, Lc8/osf;->sMainThreadStartCpu:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sPropertyFilePath"

    sget-object v6, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sIsStartMethodTrace"

    sget-boolean v6, Lc8/osf;->sIsStartMethodTrace:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->activities:Ljava/util/List;

    .line 1659
    new-instance v30, Ljava/util/ArrayList;

    const/16 v4, 0xc8

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1661
    .local v30, "arrayListLeakObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lc8/msf;->checkMemoryLeack(Ljava/util/ArrayList;)V

    .line 1663
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->allthreads:Ljava/util/List;

    .line 1664
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v175

    .line 1665
    .local v175, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    invoke-interface/range {v175 .. v175}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .local v92, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/Map$Entry;

    .line 1666
    .local v53, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    if-eqz v53, :cond_5

    .line 1667
    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Ljava/lang/String;

    .line 1668
    .local v105, "key":Ljava/lang/String;
    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 1669
    .local v173, "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v105, :cond_5

    if-eqz v173, :cond_5

    .line 1672
    move-object/from16 v0, v173

    iget-object v4, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    const-string/jumbo v5, "\\u0000"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v173

    iput-object v4, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    .line 1673
    move-object/from16 v0, v173

    iget-object v4, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    const-string/jumbo v5, "\\n"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v173

    iput-object v4, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    .line 1674
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->allthreads:Ljava/util/List;

    move-object/from16 v0, v173

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1605
    .end local v30    # "arrayListLeakObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v53    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v105    # "key":Ljava/lang/String;
    .end local v173    # "threadInfo":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v175    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    :cond_6
    const/16 v4, 0xa

    :try_start_1
    move-object/from16 v0, p0

    iput v4, v0, Lc8/Asf;->mJiffyMillis:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1607
    :catch_0
    move-exception v51

    .line 1608
    .local v51, "e":Ljava/lang/Exception;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 1609
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iput v4, v0, Lc8/Asf;->mJiffyMillis:I

    goto/16 :goto_0

    .line 1678
    .end local v51    # "e":Ljava/lang/Exception;
    .restart local v30    # "arrayListLeakObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v92    # "i$":Ljava/util/Iterator;
    .restart local v175    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v117

    .line 1679
    .local v117, "mapLastThread":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v117, :cond_b

    .line 1680
    invoke-interface/range {v117 .. v117}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v153

    .line 1681
    .local v153, "setLastThread":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    invoke-interface/range {v153 .. v153}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    :cond_8
    :goto_2
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/Map$Entry;

    .line 1682
    .local v56, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v56, :cond_8

    .line 1683
    invoke-interface/range {v56 .. v56}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v172

    check-cast v172, Ljava/lang/Thread;

    .line 1684
    .local v172, "thread":Ljava/lang/Thread;
    if-eqz v172, :cond_8

    .line 1685
    invoke-interface/range {v56 .. v56}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v158

    check-cast v158, [Ljava/lang/StackTraceElement;

    .line 1686
    .local v158, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v7, 0x0

    .line 1687
    .local v7, "threadId":I
    move-object/from16 v0, v172

    instance-of v0, v0, Landroid/os/HandlerThread;

    move/from16 v98, v0

    .line 1688
    .local v98, "isHandlerThread":Z
    if-eqz v98, :cond_9

    .line 1689
    const/4 v7, 0x1

    .line 1691
    :cond_9
    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object/from16 v0, v158

    invoke-static {v0, v4, v5}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v26

    .line 1692
    .local v26, "stackTraceElement":Ljava/lang/String;
    new-instance v3, Lcom/taobao/onlinemonitor/ThreadInfo;

    invoke-virtual/range {v172 .. v172}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual/range {v172 .. v172}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v172 .. v172}, Ljava/lang/Thread;->isDaemon()Z

    move-result v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v3 .. v26}, Lcom/taobao/onlinemonitor/ThreadInfo;-><init>(ILjava/lang/String;IIJJZIJJJZLjava/lang/String;IIIILjava/lang/String;)V

    .line 1694
    .local v3, "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->lastthreads:Ljava/util/List;

    if-nez v4, :cond_a

    .line 1695
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {v117 .. v117}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->lastthreads:Ljava/util/List;

    .line 1697
    :cond_a
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->lastthreads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1708
    .end local v3    # "info":Lcom/taobao/onlinemonitor/ThreadInfo;
    .end local v7    # "threadId":I
    .end local v26    # "stackTraceElement":Ljava/lang/String;
    .end local v56    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v98    # "isHandlerThread":Z
    .end local v153    # "setLastThread":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    .end local v158    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v172    # "thread":Ljava/lang/Thread;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mExecuteThreadInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->statisticsthread:Ljava/util/List;

    .line 1709
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mMainThreadTid"

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Asf;->mMainThreadTid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mExecuteThreadInfoBootSize"

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Asf;->mExecuteThreadInfoBootSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "mMainThreadPriority"

    move-object/from16 v0, p0

    iget v6, v0, Lc8/Asf;->mMainThreadPriority:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "packageName"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceCount"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceRetainedSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticCount"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticRetainedSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonCount"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonRetainedSize"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mThreadStackTraceTimeList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mainthreadtime:Ljava/util/List;

    .line 1727
    if-nez p2, :cond_1d

    .line 1729
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1730
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ActivityManager;

    .line 1731
    .local v28, "activityManager":Landroid/app/ActivityManager;
    if-eqz v28, :cond_1d

    .line 1732
    const/16 v4, 0xc8

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v111

    .line 1733
    .local v111, "listService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v109

    .line 1734
    .local v109, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v109, :cond_13

    .line 1735
    invoke-interface/range {v109 .. v109}, Ljava/util/List;->size()I

    move-result v157

    .line 1737
    .local v157, "size":I
    move/from16 v0, v157

    new-array v0, v0, [I

    move-object/from16 v143, v0

    .line 1738
    .local v143, "pidList":[I
    const/16 v91, 0x0

    .local v91, "i":I
    :goto_3
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_c

    .line 1739
    move-object/from16 v0, v109

    move/from16 v1, v91

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1740
    .local v29, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v29

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v4, v143, v91

    .line 1738
    add-int/lit8 v91, v91, 0x1

    goto :goto_3

    .line 1742
    .end local v29    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v122

    .line 1743
    .local v122, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    move/from16 v0, v157

    new-array v0, v0, [Lc8/wsf;

    move-object/from16 v124, v0

    .line 1744
    .local v124, "memoryRunningAppArray":[Lc8/wsf;
    const/16 v91, 0x0

    :goto_4
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_d

    .line 1745
    new-instance v4, Lc8/wsf;

    invoke-direct {v4}, Lc8/wsf;-><init>()V

    aput-object v4, v124, v91

    .line 1746
    aget-object v4, v124, v91

    aget-object v5, v122, v91

    iput-object v5, v4, Lc8/wsf;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 1747
    aget-object v5, v124, v91

    move-object/from16 v0, v109

    move/from16 v1, v91

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iput-object v4, v5, Lc8/wsf;->app:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1744
    add-int/lit8 v91, v91, 0x1

    goto :goto_4

    .line 1752
    :cond_d
    const/16 v91, 0x0

    :goto_5
    add-int/lit8 v4, v157, -0x1

    move/from16 v0, v91

    if-ge v0, v4, :cond_10

    .line 1753
    add-int/lit8 v101, v91, 0x1

    .local v101, "j":I
    :goto_6
    move/from16 v0, v101

    move/from16 v1, v157

    if-ge v0, v1, :cond_f

    .line 1754
    aget-object v4, v124, v91

    iget-object v4, v4, Lc8/wsf;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    aget-object v5, v124, v101

    iget-object v5, v5, Lc8/wsf;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 1755
    aget-object v168, v124, v91

    .line 1756
    .local v168, "tempm":Lc8/wsf;
    aget-object v4, v124, v101

    aput-object v4, v124, v91

    .line 1757
    aput-object v168, v124, v101

    .line 1753
    .end local v168    # "tempm":Lc8/wsf;
    :cond_e
    add-int/lit8 v101, v101, 0x1

    goto :goto_6

    .line 1752
    :cond_f
    add-int/lit8 v91, v91, 0x1

    goto :goto_5

    .line 1763
    .end local v101    # "j":I
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bgapps:Ljava/util/List;

    .line 1765
    const/16 v91, 0x0

    :goto_7
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_13

    const/16 v4, 0x1e

    move/from16 v0, v91

    if-ge v0, v4, :cond_13

    .line 1766
    aget-object v123, v124, v91

    .line 1767
    .local v123, "memoryRunningApp":Lc8/wsf;
    move-object/from16 v0, v123

    iget-object v0, v0, Lc8/wsf;->app:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v29, v0

    .line 1768
    .restart local v29    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v123

    iget-object v0, v0, Lc8/wsf;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    move-object/from16 v120, v0

    .line 1771
    .local v120, "memory":Landroid/os/Debug$MemoryInfo;
    new-instance v33, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;

    invoke-direct/range {v33 .. v33}, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;-><init>()V

    .line 1772
    .local v33, "bgapp":Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;
    add-int/lit8 v4, v91, 0x1

    move-object/from16 v0, v33

    iput v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->id:I

    .line 1773
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->processName:Ljava/lang/String;

    .line 1774
    invoke-virtual/range {v120 .. v120}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v33

    iput v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->totalMem:I

    .line 1775
    move-object/from16 v0, v120

    iget v4, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v33

    iput v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->javaMem:I

    .line 1776
    invoke-virtual/range {v120 .. v120}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v33

    iput v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->sharedMem:I

    .line 1777
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->serviceInfo:Ljava/util/List;

    .line 1778
    if-eqz v111, :cond_12

    .line 1779
    invoke-interface/range {v111 .. v111}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v92

    :cond_11
    :goto_8
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1780
    .local v3, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_11

    .line 1781
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;->serviceInfo:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " &nbsp;&nbsp;\u8fdb\u7a0b: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1785
    .end local v3    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_12
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bgapps:Ljava/util/List;

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    add-int/lit8 v91, v91, 0x1

    goto/16 :goto_7

    .line 1791
    .end local v29    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v33    # "bgapp":Lcom/taobao/onlinemonitor/OutputData$BackgroundAppInfo;
    .end local v91    # "i":I
    .end local v120    # "memory":Landroid/os/Debug$MemoryInfo;
    .end local v122    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v123    # "memoryRunningApp":Lc8/wsf;
    .end local v124    # "memoryRunningAppArray":[Lc8/wsf;
    .end local v143    # "pidList":[I
    .end local v157    # "size":I
    :cond_13
    sget-boolean v4, Lc8/Asf;->sTraceBootProgress:Z

    if-eqz v4, :cond_1d

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    if-eqz v4, :cond_1d

    .line 1794
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v91

    if-ge v0, v4, :cond_15

    .line 1795
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;

    move/from16 v0, v91

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v142

    .line 1796
    .local v142, "pid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    move/from16 v0, v142

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1798
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v142

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1794
    :cond_14
    add-int/lit8 v91, v91, 0x1

    goto :goto_9

    .line 1801
    .end local v142    # "pid":I
    :cond_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Asf;->mSystemTotalCpuTimeEnd:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Asf;->mSystemTotalCpuTimeStart:J

    sub-long v94, v4, v8

    .line 1802
    .local v94, "intervalCpu":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Asf;->mSystemRunCpuTimeEnd:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Asf;->mSystemRunCpuTimeStart:J

    sub-long v96, v4, v8

    .line 1803
    .local v96, "intervalRun":J
    const-wide/16 v4, 0x0

    cmp-long v4, v94, v4

    if-lez v4, :cond_1d

    .line 1804
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v157

    .line 1805
    .restart local v157    # "size":I
    new-instance v110, Ljava/util/ArrayList;

    move-object/from16 v0, v110

    move/from16 v1, v157

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1806
    .local v110, "listPinCpuTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;>;"
    const/16 v91, 0x0

    :goto_a
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_1b

    .line 1808
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    move/from16 v0, v91

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v142

    .line 1809
    .restart local v142    # "pid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressStart:Landroid/util/SparseArray;

    move/from16 v0, v142

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Long;

    .line 1810
    .local v49, "cpuTimeStart":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;

    move/from16 v0, v142

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Long;

    .line 1812
    .local v48, "cpuTimeEnd":Ljava/lang/Long;
    if-eqz v49, :cond_16

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1817
    :cond_16
    new-instance v138, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;

    invoke-direct/range {v138 .. v138}, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;-><init>()V

    .line 1818
    .local v138, "p":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    move/from16 v0, v142

    move-object/from16 v1, v138

    iput v0, v1, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->pid:I

    .line 1819
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    move/from16 v0, v142

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v138

    iput-object v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->name:Ljava/lang/String;

    .line 1820
    if-eqz v49, :cond_19

    if-nez v48, :cond_19

    .line 1822
    const-wide/16 v4, -0x1

    move-object/from16 v0, v138

    iput-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    .line 1830
    :cond_17
    :goto_b
    move-object/from16 v0, v110

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    .end local v138    # "p":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    :cond_18
    add-int/lit8 v91, v91, 0x1

    goto :goto_a

    .line 1823
    .restart local v138    # "p":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    :cond_19
    if-eqz v48, :cond_17

    .line 1824
    if-nez v49, :cond_1a

    const-wide/16 v170, 0x0

    .line 1825
    .local v170, "temps":J
    :goto_c
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v4, v170

    move-object/from16 v0, v138

    iput-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    .line 1826
    move-object/from16 v0, v138

    iget-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    move-wide/from16 v0, v94

    long-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, v138

    iput v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->percent:F

    .line 1827
    move-object/from16 v0, v138

    iget-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v6, v6, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    int-to-long v8, v6

    mul-long/2addr v4, v8

    move-object/from16 v0, v138

    iput-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    goto :goto_b

    .line 1824
    .end local v170    # "temps":J
    :cond_1a
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v170

    goto :goto_c

    .line 1832
    .end local v48    # "cpuTimeEnd":Ljava/lang/Long;
    .end local v49    # "cpuTimeStart":Ljava/lang/Long;
    .end local v138    # "p":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    .end local v142    # "pid":I
    :cond_1b
    invoke-virtual/range {v110 .. v110}, Ljava/util/ArrayList;->size()I

    move-result v157

    .line 1833
    move/from16 v0, v157

    new-array v0, v0, [Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;

    move-object/from16 v144, v0

    .line 1834
    .local v144, "pinCpuTimeAry":[Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    const/16 v91, 0x0

    :goto_d
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_1c

    .line 1835
    move-object/from16 v0, v110

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;

    aput-object v4, v144, v91

    .line 1834
    add-int/lit8 v91, v91, 0x1

    goto :goto_d

    .line 1837
    :cond_1c
    if-lez v157, :cond_1d

    .line 1838
    const-wide/16 v4, 0x64

    mul-long v4, v4, v96

    div-long v4, v4, v94

    long-to-int v0, v4

    move/from16 v141, v0

    .line 1839
    .local v141, "percent":I
    new-instance v176, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;

    invoke-direct/range {v176 .. v176}, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;-><init>()V

    .line 1840
    .local v176, "tmp":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v4, v4, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mJiffyMillis:I

    int-to-long v4, v4

    mul-long v4, v4, v96

    move-object/from16 v0, v176

    iput-wide v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->cputime:J

    .line 1841
    const/4 v4, 0x0

    move-object/from16 v0, v176

    iput v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->pid:I

    .line 1842
    move/from16 v0, v141

    int-to-float v4, v0

    move-object/from16 v0, v176

    iput v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->percent:F

    .line 1843
    const-string/jumbo v4, "\u542f\u52a8\u9636\u6bb5\u7cfb\u7edfCPU\u5e73\u5747\u4f7f\u7528\u7387"

    move-object/from16 v0, v176

    iput-object v4, v0, Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;->name:Ljava/lang/String;

    .line 1844
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bootcpu:Ljava/util/List;

    .line 1845
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bootcpu:Ljava/util/List;

    move-object/from16 v0, v176

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bootcpu:Ljava/util/List;

    invoke-static/range {v144 .. v144}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1855
    .end local v28    # "activityManager":Landroid/app/ActivityManager;
    .end local v91    # "i":I
    .end local v94    # "intervalCpu":J
    .end local v96    # "intervalRun":J
    .end local v109    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v110    # "listPinCpuTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;>;"
    .end local v111    # "listService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v141    # "percent":I
    .end local v144    # "pinCpuTimeAry":[Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    .end local v157    # "size":I
    .end local v176    # "tmp":Lcom/taobao/onlinemonitor/TraceDetail$PinCpuTime;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_21

    if-nez p2, :cond_21

    .line 1857
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v73

    .line 1858
    .local v73, "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;>;"
    if-eqz v73, :cond_21

    .line 1859
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->threadpoolinfo:Ljava/util/List;

    .line 1860
    invoke-interface/range {v73 .. v73}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    :cond_1e
    :goto_e
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/Map$Entry;

    .line 1861
    .local v55, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;"
    invoke-interface/range {v55 .. v55}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    .line 1862
    .local v3, "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    if-eqz v3, :cond_1e

    .line 1865
    iget v4, v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitExecuteCount:I

    if-nez v4, :cond_1f

    .line 1866
    const/4 v4, 0x1

    iput v4, v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitExecuteCount:I

    .line 1868
    :cond_1f
    iget-object v0, v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->threadPoolExecutor:Ljava/lang/ref/WeakReference;

    move-object/from16 v178, v0

    .line 1869
    .local v178, "weakthreadPoolExecutor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ThreadPoolExecutor;>;"
    if-nez v178, :cond_29

    const/16 v174, 0x0

    .line 1870
    .local v174, "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :goto_f
    if-eqz v174, :cond_20

    .line 1871
    invoke-virtual/range {v174 .. v174}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    iput v4, v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->activeCount:I

    .line 1872
    invoke-virtual/range {v174 .. v174}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->completeCount:J

    .line 1874
    :cond_20
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->threadpoolinfo:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    .line 1877
    .end local v3    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v55    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;"
    .end local v73    # "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;>;"
    .end local v174    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v178    # "weakthreadPoolExecutor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ThreadPoolExecutor;>;"
    :catch_1
    move-exception v51

    .line 1878
    .restart local v51    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 1882
    .end local v51    # "e":Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootDiffThreadMap:Ljava/util/Map;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootDiffThreadMap:Ljava/util/Map;

    .line 1885
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mThreadInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->newthreadinfo:Ljava/util/ArrayList;

    .line 1888
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mAsyncTaskInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->asynctaskinfo:Ljava/util/ArrayList;

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceThreadPriorityList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->threadprioritylist:Ljava/util/List;

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBroadCastInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->broadcasttrace:Ljava/util/List;

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mServiceInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->servicetrace:Ljava/util/List;

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMethodInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->activitymanagertrace:Ljava/util/List;

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mLifeCycleArray:[Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lc8/Asf;->checkLifiCycle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mLifeCycleArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->bootLifecycle:Ljava/lang/String;

    .line 1908
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mLifeCycleArray:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leakLifecycle:Ljava/lang/String;

    .line 1910
    if-nez p2, :cond_37

    .line 1914
    :try_start_3
    const-string/jumbo v4, "android.app.LoadedApk"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v44

    .line 1915
    .local v44, "clazzLoadedApk":Ljava/lang/Class;
    const-string/jumbo v4, "mReceivers"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v77

    .line 1916
    .local v77, "fieldReceivers":Ljava/lang/reflect/Field;
    const-string/jumbo v4, "mServices"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v78

    .line 1917
    .local v78, "fieldServices":Ljava/lang/reflect/Field;
    const-class v4, Landroid/app/Application;

    const-string/jumbo v5, "mLoadedApk"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v76

    .line 1918
    .local v76, "fieldLoadedApk":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1919
    const/4 v4, 0x1

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1920
    const/4 v4, 0x1

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1921
    sget-object v4, Lc8/osf;->sApplication:Landroid/app/Application;

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v129

    .line 1922
    .local v129, "objLoadedApk":Ljava/lang/Object;
    move-object/from16 v0, v77

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 1923
    .local v31, "arrayMapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    if-eqz v31, :cond_24

    .line 1924
    const/16 v146, 0x0

    .line 1926
    .local v146, "receiverContext":Ljava/lang/reflect/Field;
    :try_start_4
    const-string/jumbo v4, "android.app.LoadedApk$ReceiverDispatcher"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 1927
    .local v40, "classReceiverDispatcher":Ljava/lang/Class;
    const-string/jumbo v4, "mContext"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v146

    .line 1928
    const/4 v4, 0x1

    move-object/from16 v0, v146

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_f

    .line 1933
    .end local v40    # "classReceiverDispatcher":Ljava/lang/Class;
    :goto_10
    :try_start_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v67

    .line 1934
    .local v67, "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    if-eqz v67, :cond_24

    .line 1935
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leakbroadcast:Ljava/util/List;

    .line 1936
    invoke-interface/range {v67 .. v67}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .end local v92    # "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/util/Map$Entry;

    .line 1937
    .local v66, "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    invoke-interface/range {v66 .. v66}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Ljava/util/Map;

    .line 1938
    .local v118, "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    if-eqz v118, :cond_22

    .line 1939
    invoke-interface/range {v118 .. v118}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v64

    .line 1940
    .local v64, "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    if-eqz v64, :cond_22

    .line 1941
    invoke-interface/range {v64 .. v64}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v93

    .local v93, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/util/Map$Entry;

    .line 1942
    .local v57, "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    invoke-interface/range {v57 .. v57}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v37

    .line 1943
    .local v37, "broadcastReceiver":Ljava/lang/Object;
    invoke-interface/range {v57 .. v57}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    .line 1944
    .local v38, "broadcastReceiverVal":Ljava/lang/Object;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v145

    .line 1945
    .local v145, "receiveName":Ljava/lang/String;
    if-eqz v146, :cond_23

    if-eqz v38, :cond_23

    .line 1947
    :try_start_6
    move-object/from16 v0, v146

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v128

    .line 1948
    .local v128, "objContext":Ljava/lang/Object;
    move-object/from16 v0, v128

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_23

    .line 1949
    move-object/from16 v0, v128

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 1950
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v145

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \uff0c\u8be5\u5e7f\u64ad\u6cc4\u6f0f\u4e86Activity\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v128 .. v128}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v145

    .line 1952
    const-string/jumbo v4, "OnLineMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5185\u5b58\u6cc4\u6f0f\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v145

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1960
    .end local v2    # "act":Landroid/app/Activity;
    .end local v128    # "objContext":Ljava/lang/Object;
    :cond_23
    :goto_12
    :try_start_7
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leakbroadcast:Ljava/util/List;

    move-object/from16 v0, v145

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_11

    .line 1970
    .end local v37    # "broadcastReceiver":Ljava/lang/Object;
    .end local v38    # "broadcastReceiverVal":Ljava/lang/Object;
    .end local v57    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v64    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v66    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v67    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .end local v93    # "i$":Ljava/util/Iterator;
    .end local v118    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v145    # "receiveName":Ljava/lang/String;
    :catch_2
    move-exception v51

    .line 1971
    .restart local v51    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 1975
    .end local v51    # "e":Ljava/lang/Exception;
    .end local v146    # "receiverContext":Ljava/lang/reflect/Field;
    :cond_24
    move-object/from16 v0, v78

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 1976
    .local v32, "arrayMapServices":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    if-eqz v32, :cond_28

    .line 1977
    const/16 v149, 0x0

    .line 1979
    .local v149, "serviceContext":Ljava/lang/reflect/Field;
    :try_start_9
    const-string/jumbo v4, "android.app.LoadedApk$ServiceDispatcher"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v41

    .line 1980
    .local v41, "classServiceDispatcher":Ljava/lang/Class;
    const-string/jumbo v4, "mContext"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v149

    .line 1981
    const/4 v4, 0x1

    move-object/from16 v0, v149

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    .line 1986
    .end local v41    # "classServiceDispatcher":Ljava/lang/Class;
    :goto_13
    :try_start_a
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v70

    .line 1987
    .local v70, "entrySetServicesAll":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;>;"
    if-eqz v70, :cond_28

    .line 1988
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leakservice:Ljava/util/List;

    .line 1989
    invoke-interface/range {v70 .. v70}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    :cond_25
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/util/Map$Entry;

    .line 1990
    .local v68, "entrySetServiceAll":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Ljava/util/Map;

    .line 1991
    .local v119, "mapServicesAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v119, :cond_25

    .line 1992
    invoke-interface/range {v119 .. v119}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v69

    .line 1993
    .local v69, "entrySetServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    if-eqz v69, :cond_25

    .line 1994
    invoke-interface/range {v69 .. v69}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v93

    .restart local v93    # "i$":Ljava/util/Iterator;
    :cond_26
    :goto_14
    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/Map$Entry;

    .line 1995
    .local v61, "entryService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v106

    .line 1996
    .local v106, "keys":Ljava/lang/Object;
    if-eqz v106, :cond_26

    .line 1998
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v150

    .line 1999
    .local v150, "serviceKey":Ljava/lang/Object;
    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v152

    .line 2000
    .local v152, "serviceVal":Ljava/lang/Object;
    invoke-virtual/range {v150 .. v150}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v151

    .line 2001
    .local v151, "serviceName":Ljava/lang/String;
    if-eqz v149, :cond_27

    if-eqz v152, :cond_27

    .line 2003
    :try_start_b
    move-object/from16 v0, v149

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v128

    .line 2004
    .restart local v128    # "objContext":Ljava/lang/Object;
    move-object/from16 v0, v128

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_27

    .line 2005
    move-object/from16 v0, v128

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 2006
    .restart local v2    # "act":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v151

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \uff0c\u8be5Service\u6cc4\u6f0f\u4e86Activity\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v128 .. v128}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v151

    .line 2008
    const-string/jumbo v4, "OnLineMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5185\u5b58\u6cc4\u6f0f\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v151

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 2016
    .end local v2    # "act":Landroid/app/Activity;
    .end local v128    # "objContext":Ljava/lang/Object;
    :cond_27
    :goto_15
    :try_start_c
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leakservice:Ljava/util/List;

    move-object/from16 v0, v151

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_14

    .line 2024
    .end local v61    # "entryService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v68    # "entrySetServiceAll":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v69    # "entrySetServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v70    # "entrySetServicesAll":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;>;"
    .end local v93    # "i$":Ljava/util/Iterator;
    .end local v106    # "keys":Ljava/lang/Object;
    .end local v119    # "mapServicesAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v150    # "serviceKey":Ljava/lang/Object;
    .end local v151    # "serviceName":Ljava/lang/String;
    .end local v152    # "serviceVal":Ljava/lang/Object;
    :catch_3
    move-exception v51

    .line 2025
    .restart local v51    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 2036
    .end local v31    # "arrayMapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v32    # "arrayMapServices":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v44    # "clazzLoadedApk":Ljava/lang/Class;
    .end local v51    # "e":Ljava/lang/Exception;
    .end local v76    # "fieldLoadedApk":Ljava/lang/reflect/Field;
    .end local v77    # "fieldReceivers":Ljava/lang/reflect/Field;
    .end local v78    # "fieldServices":Ljava/lang/reflect/Field;
    .end local v129    # "objLoadedApk":Ljava/lang/Object;
    .end local v149    # "serviceContext":Ljava/lang/reflect/Field;
    :cond_28
    :goto_16
    :try_start_e
    const-string/jumbo v4, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v39

    .line 2037
    .local v39, "classLocalBroadcastManager":Ljava/lang/Class;
    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v89

    .line 2038
    .local v89, "getInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v89

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2039
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    move-object/from16 v0, v89

    move-object/from16 v1, v39

    invoke-static {v0, v1, v4}, Lc8/Asf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    .line 2040
    .local v113, "localBroadcastManager":Ljava/lang/Object;
    if-eqz v113, :cond_2c

    .line 2041
    const-string/jumbo v4, "mReceivers"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v81

    .line 2042
    .local v81, "fileReceivers":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2043
    move-object/from16 v0, v81

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v148

    check-cast v148, Ljava/util/HashMap;

    .line 2044
    .local v148, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    invoke-virtual/range {v148 .. v148}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v65

    .line 2045
    .local v65, "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;>;"
    if-eqz v65, :cond_2c

    .line 2046
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leaklocalbroadcast:Ljava/util/List;

    .line 2048
    invoke-interface/range {v65 .. v65}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/Map$Entry;

    .line 2049
    .local v58, "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    new-instance v147, Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;

    invoke-direct/range {v147 .. v147}, Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;-><init>()V

    .line 2050
    .local v147, "receiverInfo":Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;
    invoke-interface/range {v58 .. v58}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v147

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;->receiverName:Ljava/lang/String;

    .line 2054
    invoke-interface/range {v58 .. v58}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/util/ArrayList;

    .line 2055
    .local v87, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v147

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;->actions:Ljava/util/List;

    .line 2056
    if-eqz v87, :cond_2b

    .line 2057
    invoke-virtual/range {v87 .. v87}, Ljava/util/ArrayList;->size()I

    move-result v157

    .line 2058
    .restart local v157    # "size":I
    const/16 v101, 0x0

    .restart local v101    # "j":I
    :goto_18
    move/from16 v0, v101

    move/from16 v1, v157

    if-ge v0, v1, :cond_2b

    .line 2059
    move-object/from16 v0, v87

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/IntentFilter;

    .line 2060
    .local v86, "filter":Landroid/content/IntentFilter;
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_19
    if-eqz v86, :cond_2a

    invoke-virtual/range {v86 .. v86}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    move/from16 v0, v91

    if-ge v0, v4, :cond_2a

    .line 2061
    move-object/from16 v0, v86

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v27

    .line 2062
    .local v27, "action":Ljava/lang/String;
    move-object/from16 v0, v147

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;->actions:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 2060
    add-int/lit8 v91, v91, 0x1

    goto :goto_19

    .line 1869
    .end local v27    # "action":Ljava/lang/String;
    .end local v39    # "classLocalBroadcastManager":Ljava/lang/Class;
    .end local v58    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    .end local v65    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;>;"
    .end local v81    # "fileReceivers":Ljava/lang/reflect/Field;
    .end local v86    # "filter":Landroid/content/IntentFilter;
    .end local v87    # "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v89    # "getInstance":Ljava/lang/reflect/Method;
    .end local v91    # "i":I
    .end local v101    # "j":I
    .end local v113    # "localBroadcastManager":Ljava/lang/Object;
    .end local v147    # "receiverInfo":Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;
    .end local v148    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    .end local v157    # "size":I
    .restart local v3    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .restart local v55    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;"
    .restart local v73    # "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;>;"
    .restart local v178    # "weakthreadPoolExecutor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ThreadPoolExecutor;>;"
    :cond_29
    :try_start_f
    invoke-virtual/range {v178 .. v178}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-object/from16 v174, v4

    goto/16 :goto_f

    .line 2030
    .end local v3    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v55    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;"
    .end local v73    # "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;>;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v178    # "weakthreadPoolExecutor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ThreadPoolExecutor;>;"
    :catch_4
    move-exception v51

    .line 2031
    .local v51, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_16

    .line 2058
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v39    # "classLocalBroadcastManager":Ljava/lang/Class;
    .restart local v58    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    .restart local v65    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;>;"
    .restart local v81    # "fileReceivers":Ljava/lang/reflect/Field;
    .restart local v86    # "filter":Landroid/content/IntentFilter;
    .restart local v87    # "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v89    # "getInstance":Ljava/lang/reflect/Method;
    .restart local v91    # "i":I
    .restart local v92    # "i$":Ljava/util/Iterator;
    .restart local v101    # "j":I
    .restart local v113    # "localBroadcastManager":Ljava/lang/Object;
    .restart local v147    # "receiverInfo":Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;
    .restart local v148    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    .restart local v157    # "size":I
    :cond_2a
    add-int/lit8 v101, v101, 0x1

    goto :goto_18

    .line 2066
    .end local v86    # "filter":Landroid/content/IntentFilter;
    .end local v91    # "i":I
    .end local v101    # "j":I
    .end local v157    # "size":I
    :cond_2b
    :try_start_10
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leaklocalbroadcast:Ljava/util/List;

    move-object/from16 v0, v147

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_17

    .line 2070
    .end local v39    # "classLocalBroadcastManager":Ljava/lang/Class;
    .end local v58    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    .end local v65    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;>;"
    .end local v81    # "fileReceivers":Ljava/lang/reflect/Field;
    .end local v87    # "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v89    # "getInstance":Ljava/lang/reflect/Method;
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v113    # "localBroadcastManager":Ljava/lang/Object;
    .end local v147    # "receiverInfo":Lcom/taobao/onlinemonitor/OutputData$LocalBroadReceiverInfo;
    .end local v148    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Ljava/util/ArrayList<Landroid/content/IntentFilter;>;>;"
    :catch_5
    move-exception v51

    .line 2071
    .local v51, "e":Ljava/lang/Exception;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 2076
    .end local v51    # "e":Ljava/lang/Exception;
    :cond_2c
    :try_start_11
    const-class v4, Landroid/app/Application;

    const-string/jumbo v5, "mComponentCallbacks"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 2077
    .local v75, "fieldActivityLifecycleCallbacks":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2078
    sget-object v4, Lc8/osf;->sApplication:Landroid/app/Application;

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/ArrayList;

    .line 2079
    .local v46, "componentCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    if-eqz v46, :cond_2d

    .line 2080
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->componentcallbacks:Ljava/util/List;

    .line 2081
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/ComponentCallbacks;

    .line 2085
    .local v45, "componentCallback":Landroid/content/ComponentCallbacks;
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->componentcallbacks:Ljava/util/List;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_1a

    .line 2090
    .end local v45    # "componentCallback":Landroid/content/ComponentCallbacks;
    .end local v46    # "componentCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    .end local v75    # "fieldActivityLifecycleCallbacks":Ljava/lang/reflect/Field;
    .end local v92    # "i$":Ljava/util/Iterator;
    :catch_6
    move-exception v51

    .line 2091
    .restart local v51    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 2095
    .end local v51    # "e":Ljava/lang/Exception;
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/shared_prefs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v140

    .line 2096
    .local v140, "path":Ljava/lang/String;
    new-instance v80, Ljava/io/File;

    move-object/from16 v0, v80

    move-object/from16 v1, v140

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2097
    .local v80, "file":Ljava/io/File;
    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2101
    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v85

    .line 2102
    .local v85, "filesArray":[Ljava/io/File;
    if-eqz v85, :cond_0

    .line 2105
    move-object/from16 v0, v85

    array-length v0, v0

    move/from16 v157, v0

    .line 2108
    .restart local v157    # "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->sharedpreference:Ljava/util/List;

    .line 2110
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_1b
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_32

    .line 2111
    new-instance v100, Ljava/util/HashMap;

    invoke-direct/range {v100 .. v100}, Ljava/util/HashMap;-><init>()V

    .line 2113
    .local v100, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v80, v85, v91

    .line 2114
    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float v82, v4, v5

    .line 2116
    .local v82, "fileSize":F
    const-string/jumbo v4, "name"

    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v100

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    const-string/jumbo v4, "size"

    invoke-static/range {v82 .. v82}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v100

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    :try_start_12
    new-instance v88, Ljava/io/FileReader;

    move-object/from16 v0, v88

    move-object/from16 v1, v80

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 2121
    .local v88, "fr":Ljava/io/FileReader;
    new-instance v36, Ljava/io/BufferedReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v88

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2122
    .local v36, "br":Ljava/io/BufferedReader;
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v169

    .line 2124
    .local v169, "text":Ljava/lang/String;
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    .local v34, "bigStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v104, Ljava/util/ArrayList;

    invoke-direct/range {v104 .. v104}, Ljava/util/ArrayList;-><init>()V

    .line 2126
    .local v104, "jsonStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v90, Ljava/util/ArrayList;

    invoke-direct/range {v90 .. v90}, Ljava/util/ArrayList;-><init>()V

    .line 2127
    .local v90, "htmlStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1c
    if-eqz v169, :cond_31

    .line 2129
    const-string/jumbo v4, "\">"

    move-object/from16 v0, v169

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v159

    .line 2130
    .local v159, "start":I
    const-string/jumbo v4, "</"

    move-object/from16 v0, v169

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v52

    .line 2131
    .local v52, "end":I
    add-int/lit8 v160, v159, 0x2

    .line 2133
    .local v160, "startContext":I
    if-lez v52, :cond_30

    if-lez v159, :cond_30

    .line 2134
    const-string/jumbo v4, "name=\""

    move-object/from16 v0, v169

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v161

    .line 2135
    .local v161, "startName":I
    sub-int v108, v52, v160

    .line 2136
    .local v108, "len":I
    const/16 v4, 0x64

    move/from16 v0, v108

    if-le v0, v4, :cond_2e

    .line 2137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v161, 0x6

    move-object/from16 v0, v169

    move/from16 v1, v159

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v108

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    :cond_2e
    const-string/jumbo v4, "&quot;"

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2f

    const/16 v4, 0x7b

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_2f

    .line 2142
    add-int/lit8 v4, v161, 0x6

    move-object/from16 v0, v169

    move/from16 v1, v159

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v104

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    :cond_2f
    const-string/jumbo v4, "&amp;"

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_30

    const-string/jumbo v4, "&lt;"

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_30

    const-string/jumbo v4, "&gt;"

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_30

    const-string/jumbo v4, "&nbsp;"

    move-object/from16 v0, v169

    move/from16 v1, v160

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_30

    .line 2148
    add-int/lit8 v4, v161, 0x6

    move-object/from16 v0, v169

    move/from16 v1, v159

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v90

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2151
    .end local v108    # "len":I
    .end local v161    # "startName":I
    :cond_30
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v169

    .line 2152
    goto/16 :goto_1c

    .line 2153
    .end local v52    # "end":I
    .end local v159    # "start":I
    .end local v160    # "startContext":I
    :cond_31
    const-string/jumbo v4, "bigStrings"

    move-object/from16 v0, v100

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    const-string/jumbo v4, "jsonStrings"

    move-object/from16 v0, v100

    move-object/from16 v1, v104

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    const-string/jumbo v4, "htmlStrings"

    move-object/from16 v0, v100

    move-object/from16 v1, v90

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 2160
    .end local v34    # "bigStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "br":Ljava/io/BufferedReader;
    .end local v88    # "fr":Ljava/io/FileReader;
    .end local v90    # "htmlStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v104    # "jsonStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v169    # "text":Ljava/lang/String;
    :goto_1d
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->sharedpreference:Ljava/util/List;

    move-object/from16 v0, v100

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    add-int/lit8 v91, v91, 0x1

    goto/16 :goto_1b

    .line 2165
    .end local v82    # "fileSize":F
    .end local v100    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_32
    :try_start_13
    const-string/jumbo v4, "android.app.ContextImpl"

    invoke-static {v4}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 2167
    .local v43, "clazzContextImpl":Ljava/lang/Class;
    sget v4, Lc8/msf;->sApiLevel:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_34

    .line 2168
    const-string/jumbo v4, "sSharedPrefsCache"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 2173
    .local v79, "fieldSharedPrefs":Ljava/lang/reflect/Field;
    :goto_1e
    const/4 v4, 0x1

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2174
    sget-object v4, Lc8/osf;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v155

    check-cast v155, Ljava/util/Map;

    .line 2175
    .local v155, "sharedPrefsAllList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v155, :cond_37

    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v139

    .line 2177
    .local v139, "packageName":Ljava/lang/String;
    move-object/from16 v0, v155

    move-object/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Ljava/util/Map;

    .line 2178
    .local v156, "sharedPrefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v156 .. v156}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v72

    .line 2179
    .local v72, "entrySetShareds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v72, :cond_37

    .line 2180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->loadedsharedpreference:Ljava/util/List;

    .line 2181
    invoke-interface/range {v72 .. v72}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    :goto_1f
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/Map$Entry;

    .line 2183
    .local v71, "entrySetShared":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget v4, Lc8/msf;->sApiLevel:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_35

    .line 2184
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v132

    .line 2185
    .local v132, "object":Ljava/lang/Object;
    move-object/from16 v0, v132

    check-cast v0, Ljava/io/File;

    move-object/from16 v83, v0

    .line 2186
    .local v83, "fileSp":Ljava/io/File;
    invoke-virtual/range {v83 .. v83}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v105

    .line 2191
    .end local v83    # "fileSp":Ljava/io/File;
    .end local v132    # "object":Ljava/lang/Object;
    .restart local v105    # "key":Ljava/lang/String;
    :goto_20
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v130

    .line 2192
    .local v130, "objSharedImpl":Ljava/lang/Object;
    invoke-virtual/range {v130 .. v130}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mMap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 2193
    const/4 v4, 0x1

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2194
    move-object/from16 v0, v79

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Ljava/util/Map;

    .line 2195
    .local v116, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v47, 0x0

    .local v47, "contentSize":I
    const/16 v165, 0x0

    .local v165, "stringSize":I
    const/16 v164, 0x0

    .line 2196
    .local v164, "stringLen":I
    if-eqz v116, :cond_36

    .line 2197
    invoke-interface/range {v116 .. v116}, Ljava/util/Map;->size()I

    move-result v47

    .line 2198
    invoke-interface/range {v116 .. v116}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v60

    .line 2199
    .local v60, "entryMaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v93

    .restart local v93    # "i$":Ljava/util/Iterator;
    :cond_33
    :goto_21
    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    .line 2200
    .local v59, "entryMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v125

    .line 2201
    .local v125, "obj":Ljava/lang/Object;
    move-object/from16 v0, v125

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_33

    .line 2202
    add-int/lit8 v165, v165, 0x1

    .line 2203
    move-object/from16 v0, v125

    check-cast v0, Ljava/lang/String;

    move-object/from16 v163, v0

    .line 2204
    .local v163, "str":Ljava/lang/String;
    invoke-virtual/range {v163 .. v163}, Ljava/lang/String;->length()I

    move-result v4

    add-int v164, v164, v4

    goto :goto_21

    .line 2170
    .end local v47    # "contentSize":I
    .end local v59    # "entryMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v60    # "entryMaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v71    # "entrySetShared":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v72    # "entrySetShareds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v79    # "fieldSharedPrefs":Ljava/lang/reflect/Field;
    .end local v93    # "i$":Ljava/util/Iterator;
    .end local v105    # "key":Ljava/lang/String;
    .end local v116    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v125    # "obj":Ljava/lang/Object;
    .end local v130    # "objSharedImpl":Ljava/lang/Object;
    .end local v139    # "packageName":Ljava/lang/String;
    .end local v155    # "sharedPrefsAllList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v156    # "sharedPrefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v163    # "str":Ljava/lang/String;
    .end local v164    # "stringLen":I
    .end local v165    # "stringSize":I
    :cond_34
    const-string/jumbo v4, "sSharedPrefs"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .restart local v79    # "fieldSharedPrefs":Ljava/lang/reflect/Field;
    goto/16 :goto_1e

    .line 2188
    .restart local v71    # "entrySetShared":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v72    # "entrySetShareds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v139    # "packageName":Ljava/lang/String;
    .restart local v155    # "sharedPrefsAllList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v156    # "sharedPrefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_35
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Ljava/lang/String;

    .restart local v105    # "key":Ljava/lang/String;
    goto :goto_20

    .line 2208
    .restart local v47    # "contentSize":I
    .restart local v116    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v130    # "objSharedImpl":Ljava/lang/Object;
    .restart local v164    # "stringLen":I
    .restart local v165    # "stringSize":I
    :cond_36
    new-instance v112, Ljava/util/HashMap;

    invoke-direct/range {v112 .. v112}, Ljava/util/HashMap;-><init>()V

    .line 2209
    .local v112, "loadedSpinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "key"

    move-object/from16 v0, v112

    move-object/from16 v1, v105

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string/jumbo v4, "entryCount"

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v112

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    const-string/jumbo v4, "stringCount"

    invoke-static/range {v165 .. v165}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v112

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    const-string/jumbo v4, "stringLength"

    invoke-static/range {v164 .. v164}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v112

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->loadedsharedpreference:Ljava/util/List;

    move-object/from16 v0, v112

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_1f

    .line 2217
    .end local v43    # "clazzContextImpl":Ljava/lang/Class;
    .end local v47    # "contentSize":I
    .end local v71    # "entrySetShared":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v72    # "entrySetShareds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v79    # "fieldSharedPrefs":Ljava/lang/reflect/Field;
    .end local v105    # "key":Ljava/lang/String;
    .end local v112    # "loadedSpinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v116    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v130    # "objSharedImpl":Ljava/lang/Object;
    .end local v139    # "packageName":Ljava/lang/String;
    .end local v155    # "sharedPrefsAllList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v156    # "sharedPrefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v164    # "stringLen":I
    .end local v165    # "stringSize":I
    :catch_7
    move-exception v51

    .line 2218
    .restart local v51    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    .line 2223
    .end local v51    # "e":Ljava/lang/Exception;
    .end local v80    # "file":Ljava/io/File;
    .end local v85    # "filesArray":[Ljava/io/File;
    .end local v91    # "i":I
    .end local v140    # "path":Ljava/lang/String;
    .end local v157    # "size":I
    :cond_37
    sget-boolean v4, Lc8/Asf;->sTraceSharedPreferences:Z

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceSharedPreferencesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_38

    .line 2224
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceSharedPreferencesList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->sharedpreference_trace:Ljava/util/List;

    .line 2228
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnBootFinishedList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinebootnotify:Ljava/util/List;

    .line 2229
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnBackForGroundList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinebackforgroundnotify:Ljava/util/List;

    .line 2232
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinelifecyclelist:Ljava/util/List;

    .line 2235
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinenotifylist:Ljava/util/List;

    .line 2238
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnActivityLifeCycleTimeList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinelifecycletimelist:Ljava/util/List;

    .line 2241
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitorNotifyTimeList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->onlinenotifytimelist:Ljava/util/List;

    .line 2244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leak_onlinelifecyclelist:Ljava/util/List;

    .line 2245
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    if-eqz v4, :cond_39

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnActivityLifeCycleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Lc8/csf;

    .line 2247
    .local v99, "item":Lc8/csf;
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leak_onlinelifecyclelist:Ljava/util/List;

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2252
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v99    # "item":Lc8/csf;
    :cond_39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leak_onlinenotifylist:Ljava/util/List;

    .line 2253
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3a

    .line 2254
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Lc8/jsf;

    .line 2255
    .local v99, "item":Lc8/jsf;
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->leak_onlinenotifylist:Ljava/util/List;

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2259
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v99    # "item":Lc8/jsf;
    :cond_3a
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sTraceOnLineDuration"

    sget v6, Lc8/Asf;->sTraceOnLineDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceSoFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->sofiles:Ljava/util/List;

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mWakeLockInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mWakeLockInfoList:Ljava/util/ArrayList;

    .line 2265
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mCloseGuardInfo:Ljava/util/HashMap;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mCloseGuardInfo:Ljava/util/HashMap;

    .line 2266
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mMainThreadBlockGuardInfo:Ljava/util/HashMap;

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    .line 2268
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProblemCheck:Lc8/rsf;

    iget-object v4, v4, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    .line 2269
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mProblemCheck:Lc8/rsf;

    iget-object v4, v4, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    .line 2271
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_3c

    .line 2272
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBlockGuardThreadInfo:Ljava/util/ArrayList;

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    .line 2274
    .local v63, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_24
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v127

    check-cast v127, Ljava/util/Map$Entry;

    .line 2275
    .local v127, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    if-eqz v127, :cond_3b

    .line 2276
    invoke-interface/range {v127 .. v127}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .line 2277
    .local v177, "val":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    if-eqz v177, :cond_3b

    .line 2278
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBlockGuardThreadInfo:Ljava/util/ArrayList;

    move-object/from16 v0, v177

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 2284
    .end local v63    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v127    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    .end local v177    # "val":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_40

    if-nez p2, :cond_40

    .line 2285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mInstallBundleInfoList:Ljava/util/ArrayList;

    .line 2286
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mInstallBundleInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v62

    .line 2287
    .local v62, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_25
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v126

    check-cast v126, Ljava/util/Map$Entry;

    .line 2288
    .local v126, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;"
    if-eqz v126, :cond_3d

    .line 2289
    invoke-interface/range {v126 .. v126}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;

    .line 2290
    .local v3, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    if-eqz v3, :cond_3d

    .line 2291
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->activityName:Ljava/lang/String;

    if-nez v4, :cond_3e

    .line 2292
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->activityName:Ljava/lang/String;

    .line 2294
    :cond_3e
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    if-eqz v4, :cond_3f

    .line 2295
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    .line 2297
    :cond_3f
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mInstallBundleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 2302
    .end local v3    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    .end local v62    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v126    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;"
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 2303
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mStartBundleInfoList:Ljava/util/ArrayList;

    .line 2304
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mStartBundleInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v62

    .line 2305
    .restart local v62    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :cond_41
    :goto_26
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v126

    check-cast v126, Ljava/util/Map$Entry;

    .line 2306
    .restart local v126    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;"
    if-eqz v126, :cond_41

    .line 2307
    invoke-interface/range {v126 .. v126}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;

    .line 2308
    .restart local v3    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    if-eqz v3, :cond_41

    .line 2309
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->activityName:Ljava/lang/String;

    if-nez v4, :cond_42

    .line 2310
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->activityName:Ljava/lang/String;

    .line 2312
    :cond_42
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    if-eqz v4, :cond_43

    .line 2313
    iget-object v4, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;->resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->baseTheadMap:Ljava/util/Map;

    .line 2315
    :cond_43
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mStartBundleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2322
    .end local v3    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
    .end local v62    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v126    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;>;"
    :cond_44
    sget-boolean v4, Lc8/Asf;->sTraceLog:Z

    if-eqz v4, :cond_45

    if-nez p2, :cond_45

    .line 2323
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_45

    .line 2324
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->loginfos:Ljava/util/List;

    .line 2325
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v115

    .line 2326
    .local v115, "logSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    invoke-interface/range {v115 .. v115}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Ljava/util/Map$Entry;

    .line 2327
    .local v114, "logEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->loginfos:Ljava/util/List;

    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 2333
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v114    # "logEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    .end local v115    # "logSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    :cond_45
    sget-boolean v4, Lc8/Asf;->sTraceThrowable:Z

    if-eqz v4, :cond_46

    if-nez p2, :cond_46

    .line 2334
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_46

    .line 2335
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->throwablelist:Ljava/util/List;

    .line 2336
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v154

    .line 2337
    .local v154, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    invoke-interface/range {v154 .. v154}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/Map$Entry;

    .line 2338
    .local v54, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->throwablelist:Ljava/util/List;

    invoke-interface/range {v54 .. v54}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 2343
    .end local v54    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v154    # "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    :cond_46
    sget-boolean v4, Lc8/Asf;->sTraceGetStack:Z

    if-eqz v4, :cond_47

    if-nez p2, :cond_47

    .line 2344
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 2345
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->stacktracelist:Ljava/util/List;

    .line 2346
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v154

    .line 2347
    .restart local v154    # "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    invoke-interface/range {v154 .. v154}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/Map$Entry;

    .line 2348
    .restart local v54    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->stacktracelist:Ljava/util/List;

    invoke-interface/range {v54 .. v54}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 2386
    .end local v54    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;"
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v154    # "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;>;>;"
    :cond_47
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "sMemoryLeakDetector"

    sget-boolean v6, Lc8/Asf;->sMemoryLeakDetector:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_48

    .line 2388
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/Asf;->mHasMemroyLeack:Z

    .line 2393
    :cond_48
    :try_start_14
    sget-boolean v4, Lc8/Asf;->sMemoryLeakDetector:Z

    if-nez v4, :cond_49

    sget-boolean v4, Lc8/Asf;->sMemoryAnalysis:Z

    if-eqz v4, :cond_50

    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v4, v4, Lc8/msf;->mUIHiddenTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_50

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v8, v6, Lc8/msf;->mUIHiddenTime:J

    sub-long/2addr v4, v8

    sget v6, Lc8/osf;->sToSleepTime:I

    int-to-long v8, v6

    cmp-long v4, v4, v8

    if-lez v4, :cond_50

    .line 2395
    sget-boolean v4, Lc8/Asf;->sMemoryAnalysis:Z

    if-nez v4, :cond_4a

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4c

    .line 2396
    :cond_4a
    new-instance v121, Lc8/Srf;

    invoke-direct/range {v121 .. v121}, Lc8/Srf;-><init>()V

    .line 2397
    .local v121, "memoryDetector":Lc8/Srf;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v157

    .line 2398
    .restart local v157    # "size":I
    if-lez v157, :cond_4b

    .line 2399
    const-string/jumbo v4, "OnLineMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f00\u59cb\u5206\u6790 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v157

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6761\u5185\u5b58\u94fe\u8def,\u8bf7\u7a0d\u540e!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    move-object/from16 v0, v121

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lc8/Srf;->detectLeak(Ljava/util/List;)Ljava/util/List;

    move-result-object v107

    .line 2402
    .local v107, "leakResults":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;>;"
    if-eqz v107, :cond_4b

    invoke-interface/range {v107 .. v107}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4b

    .line 2403
    move-object/from16 v0, v107

    move-object/from16 v1, v137

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OutputData;->memoryleak:Ljava/util/List;

    .line 2406
    .end local v107    # "leakResults":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;>;"
    :cond_4b
    sget-boolean v4, Lc8/Asf;->sMemoryAnalysis:Z

    if-eqz v4, :cond_4c

    .line 2408
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "\u5f00\u59cb\u5206\u6790\u5185\u5b58\u4fe1\u606f\u8bf7\u7a0d\u540e!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "\u5206\u6790\u9759\u6001\u53d8\u91cf ..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-virtual/range {v121 .. v121}, Lc8/Srf;->findStaticVariables()Ljava/util/List;

    move-result-object v162

    .line 2412
    .local v162, "staticList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;>;"
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceCount"

    move-object/from16 v0, v121

    iget-wide v8, v0, Lc8/Srf;->mTotalInstanceCount:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceSize"

    move-object/from16 v0, v121

    iget-wide v8, v0, Lc8/Srf;->mTotalInstanceSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalInstanceRetainedSize"

    move-object/from16 v0, v121

    iget-wide v8, v0, Lc8/Srf;->mTotalInstanceRetainedSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticCount"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalStaticCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticSize"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalStaticSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalStaticRetainedSize"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalStaticRetainedSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonCount"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalSingletonCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonSize"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalSingletonSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->basic:Ljava/util/HashMap;

    const-string/jumbo v5, "totalSingletonRetainedSize"

    move-object/from16 v0, v121

    iget v6, v0, Lc8/Srf;->mTotalSingletonRetainedSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    move-object/from16 v0, v162

    move-object/from16 v1, v137

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OutputData;->memstaticlist:Ljava/util/List;

    .line 2423
    move-object/from16 v0, v121

    iget-object v4, v0, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->memusedlist:Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    .line 2440
    .end local v121    # "memoryDetector":Lc8/Srf;
    .end local v157    # "size":I
    .end local v162    # "staticList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;>;"
    :cond_4c
    :goto_2a
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mClassSQLiteDebug:Ljava/lang/Class;

    if-eqz v4, :cond_4d

    .line 2441
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mGetDatabaseInfo:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Asf;->mClassSQLiteDebug:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/Asf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v131

    .line 2442
    .local v131, "objdb":Ljava/lang/Object;
    if-eqz v131, :cond_4d

    .line 2443
    invoke-virtual/range {v131 .. v131}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "dbStats"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v84

    .line 2444
    .local v84, "filedDbStats":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v84

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2445
    move-object/from16 v0, v84

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/ArrayList;

    .line 2446
    .local v50, "dbStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, v50

    move-object/from16 v1, v137

    iput-object v0, v1, Lcom/taobao/onlinemonitor/OutputData;->mDbStats:Ljava/util/ArrayList;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 2453
    .end local v50    # "dbStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v84    # "filedDbStats":Ljava/lang/reflect/Field;
    .end local v131    # "objdb":Ljava/lang/Object;
    :cond_4d
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    if-nez v4, :cond_51

    const/16 v35, 0x0

    .line 2454
    .local v35, "bootsize":I
    :goto_2c
    if-lez v35, :cond_4e

    .line 2456
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysThreadsCount:Landroid/util/SparseIntArray;

    .line 2457
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mVmThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mVmThreadsCount:Landroid/util/SparseIntArray;

    .line 2458
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    .line 2461
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mRunningSysScores:Landroid/util/SparseIntArray;

    .line 2462
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningPidScores:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mRunningPidScores:Landroid/util/SparseIntArray;

    .line 2465
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    .line 2466
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    .line 2470
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootSysCpuPercents:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysCpuPercents:Landroid/util/SparseIntArray;

    .line 2471
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    .line 2473
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mCpuPercentTimestamps:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mCpuPercentTimestamps:Ljava/util/List;

    .line 2474
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootCpuPercentTimestamps:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootCpuPercentTimestamps:Ljava/util/List;

    .line 2476
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMajorFaults:Ljava/util/List;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mMajorFaults:Ljava/util/List;

    .line 2477
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    .line 2478
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    .line 2479
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    .line 2480
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    .line 2481
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    .line 2482
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMemoryLevels:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mMemoryLevels:Landroid/util/SparseIntArray;

    .line 2483
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mPerCpuLoads:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mPerCpuLoads:Ljava/util/List;

    .line 2484
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysLoads1Min:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysLoads1Min:Ljava/util/List;

    .line 2485
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysLoads5Min:Ljava/util/ArrayList;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mSysLoads5Min:Ljava/util/List;

    .line 2486
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mRunningFinalizerCount:Landroid/util/SparseIntArray;

    .line 2489
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootRunningSysScores:Landroid/util/SparseIntArray;

    .line 2490
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningSysScores:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Asf;->mRunningPidScores:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootRunningPidScores:Landroid/util/SparseIntArray;

    .line 2491
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysThreadsCount:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysThreadsCount:Landroid/util/SparseIntArray;

    .line 2492
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mVmThreadsCount:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootVmThreadsCount:Landroid/util/SparseIntArray;

    .line 2493
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mRunningThreadsCount:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootRunningThreadsCount:Landroid/util/SparseIntArray;

    .line 2494
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMajorFaults:Ljava/util/List;

    const/4 v5, 0x0

    move/from16 v0, v35

    invoke-interface {v4, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootMajorFaults:Ljava/util/List;

    .line 2495
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitCounts:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysIoWaitCounts:Landroid/util/SparseIntArray;

    .line 2496
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitSums:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysIoWaitSums:Landroid/util/SparseIntArray;

    .line 2497
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysIoWaitPercent:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysIoWaitPercent:Landroid/util/SparseIntArray;

    .line 2498
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysSchedWaitSums:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysSchedWaitSums:Landroid/util/SparseIntArray;

    .line 2499
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysSchedWaitCounts:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysSchedWaitCounts:Landroid/util/SparseIntArray;

    .line 2500
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mMemoryLevels:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v5, v1}, Lc8/Asf;->subSparseIntArray(Landroid/util/SparseIntArray;II)Landroid/util/SparseIntArray;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootMemoryLevels:Landroid/util/SparseIntArray;

    .line 2501
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mPerCpuLoads:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootPerCpuLoads:Ljava/util/List;

    .line 2502
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysLoads1Min:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysLoads1Min:Ljava/util/List;

    .line 2503
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mSysLoads5Min:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->mBootSysLoads5Min:Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 2509
    :cond_4e
    :goto_2d
    invoke-virtual/range {v137 .. v137}, Lcom/taobao/onlinemonitor/OutputData;->asJsData()Ljava/lang/String;

    move-result-object v136

    .line 2510
    .local v136, "output":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/data.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1, v4}, Lc8/Asf;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2512
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v157

    .line 2513
    .restart local v157    # "size":I
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_2e
    move/from16 v0, v91

    move/from16 v1, v157

    if-ge v0, v1, :cond_0

    .line 2514
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v91

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Lc8/psf;

    .line 2515
    .local v133, "onlineStatistics":Lc8/psf;
    if-eqz v133, :cond_4f

    .line 2516
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, v133

    move-object/from16 v1, v137

    invoke-interface {v0, v4, v1}, Lc8/psf;->onCreatePerformanceReport(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OutputData;)V

    .line 2513
    :cond_4f
    add-int/lit8 v91, v91, 0x1

    goto :goto_2e

    .line 2427
    .end local v35    # "bootsize":I
    .end local v91    # "i":I
    .end local v133    # "onlineStatistics":Lc8/psf;
    .end local v136    # "output":Ljava/lang/String;
    .end local v157    # "size":I
    :cond_50
    :try_start_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v137

    iput-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->arrayListLeakObject:Ljava/util/List;

    .line 2428
    const/16 v167, 0x1

    .line 2429
    .local v167, "tempIndex":I
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v92

    .restart local v92    # "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface/range {v92 .. v92}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    .line 2430
    .local v99, "item":Ljava/lang/Object;
    move-object/from16 v0, v137

    iget-object v4, v0, Lcom/taobao/onlinemonitor/OutputData;->arrayListLeakObject:Ljava/util/List;

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    const-string/jumbo v4, "OnLineMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u53d1\u73b0\u5185\u5b58\u6cc4\u6f0f\u70b9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v167

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    .line 2432
    add-int/lit8 v167, v167, 0x1

    .line 2433
    goto :goto_2f

    .line 2435
    .end local v92    # "i$":Ljava/util/Iterator;
    .end local v99    # "item":Ljava/lang/Object;
    .end local v167    # "tempIndex":I
    :catch_8
    move-exception v51

    .line 2436
    .local v51, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2a

    .line 2453
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Asf;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v35

    goto/16 :goto_2c

    .line 2504
    .restart local v35    # "bootsize":I
    :catch_9
    move-exception v51

    .line 2505
    .restart local v51    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2d

    .end local v35    # "bootsize":I
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v4

    goto/16 :goto_2b

    .restart local v80    # "file":Ljava/io/File;
    .restart local v82    # "fileSize":F
    .restart local v85    # "filesArray":[Ljava/io/File;
    .restart local v91    # "i":I
    .restart local v100    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v140    # "path":Ljava/lang/String;
    .restart local v157    # "size":I
    :catch_b
    move-exception v4

    goto/16 :goto_1d

    .end local v80    # "file":Ljava/io/File;
    .end local v82    # "fileSize":F
    .end local v85    # "filesArray":[Ljava/io/File;
    .end local v91    # "i":I
    .end local v100    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v140    # "path":Ljava/lang/String;
    .end local v157    # "size":I
    .restart local v31    # "arrayMapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v32    # "arrayMapServices":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v44    # "clazzLoadedApk":Ljava/lang/Class;
    .restart local v61    # "entryService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v68    # "entrySetServiceAll":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v69    # "entrySetServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v70    # "entrySetServicesAll":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;>;"
    .restart local v76    # "fieldLoadedApk":Ljava/lang/reflect/Field;
    .restart local v77    # "fieldReceivers":Ljava/lang/reflect/Field;
    .restart local v78    # "fieldServices":Ljava/lang/reflect/Field;
    .restart local v93    # "i$":Ljava/util/Iterator;
    .restart local v106    # "keys":Ljava/lang/Object;
    .restart local v119    # "mapServicesAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v129    # "objLoadedApk":Ljava/lang/Object;
    .restart local v149    # "serviceContext":Ljava/lang/reflect/Field;
    .restart local v150    # "serviceKey":Ljava/lang/Object;
    .restart local v151    # "serviceName":Ljava/lang/String;
    .restart local v152    # "serviceVal":Ljava/lang/Object;
    :catch_c
    move-exception v4

    goto/16 :goto_15

    .end local v61    # "entryService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v68    # "entrySetServiceAll":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v69    # "entrySetServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v70    # "entrySetServicesAll":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;>;"
    .end local v93    # "i$":Ljava/util/Iterator;
    .end local v106    # "keys":Ljava/lang/Object;
    .end local v119    # "mapServicesAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v150    # "serviceKey":Ljava/lang/Object;
    .end local v151    # "serviceName":Ljava/lang/String;
    .end local v152    # "serviceVal":Ljava/lang/Object;
    :catch_d
    move-exception v4

    goto/16 :goto_13

    .end local v32    # "arrayMapServices":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v149    # "serviceContext":Ljava/lang/reflect/Field;
    .restart local v37    # "broadcastReceiver":Ljava/lang/Object;
    .restart local v38    # "broadcastReceiverVal":Ljava/lang/Object;
    .restart local v57    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v64    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v66    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v67    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .restart local v93    # "i$":Ljava/util/Iterator;
    .restart local v118    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v145    # "receiveName":Ljava/lang/String;
    .restart local v146    # "receiverContext":Ljava/lang/reflect/Field;
    :catch_e
    move-exception v4

    goto/16 :goto_12

    .end local v37    # "broadcastReceiver":Ljava/lang/Object;
    .end local v38    # "broadcastReceiverVal":Ljava/lang/Object;
    .end local v57    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v64    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v66    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v67    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .end local v93    # "i$":Ljava/util/Iterator;
    .end local v118    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v145    # "receiveName":Ljava/lang/String;
    .restart local v92    # "i$":Ljava/util/Iterator;
    :catch_f
    move-exception v4

    goto/16 :goto_10
.end method

.method getBootOtherProgressInfo(Ljava/util/List;Z)Landroid/util/SparseArray;
    .locals 20
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;Z)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3062
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez p1, :cond_1

    .line 3063
    const/4 v15, 0x0

    .line 3108
    :cond_0
    :goto_0
    return-object v15

    .line 3065
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-object v13, v2, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    .line 3066
    .local v13, "readProcFile":Ljava/lang/reflect/Method;
    if-nez v13, :cond_2

    .line 3067
    const/4 v15, 0x0

    goto :goto_0

    .line 3070
    :cond_2
    sget-boolean v2, Lc8/Asf;->sTraceBootProgress:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 3071
    new-instance v2, Landroid/util/SparseArray;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    .line 3074
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 3075
    .local v14, "size":I
    const/4 v2, 0x6

    new-array v6, v2, [J

    .line 3077
    .local v6, "statsData":[J
    new-instance v15, Landroid/util/SparseArray;

    add-int/lit8 v2, v14, 0xa

    invoke-direct {v15, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 3078
    .local v15, "sparseArrayBootProgress":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_0

    .line 3079
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3080
    .local v8, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3081
    .local v3, "pid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3082
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    iget-object v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3084
    :cond_4
    if-eqz v13, :cond_7

    .line 3086
    const/4 v2, 0x0

    const/4 v4, 0x5

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "/proc/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/stat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v7

    const/4 v7, 0x1

    sget-object v16, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v16, v4, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    aput-object v16, v4, v7

    const/4 v7, 0x3

    aput-object v6, v4, v7

    const/4 v7, 0x4

    const/16 v16, 0x0

    aput-object v16, v4, v7

    invoke-static {v13, v2, v4}, Lc8/Asf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3088
    const/4 v5, 0x0

    .line 3089
    .local v5, "outStrings":[Ljava/lang/String;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 3090
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 3092
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->getProcInfo(II[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3093
    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 3094
    const/4 v2, 0x0

    aget-object v2, v5, v2

    iput-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3095
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    if-eqz v2, :cond_6

    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 3096
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Asf;->mSparseArrayBootProgressName:Landroid/util/SparseArray;

    iget-object v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3099
    :cond_6
    const/4 v2, 0x2

    aget-wide v16, v6, v2

    const/4 v2, 0x3

    aget-wide v18, v6, v2

    add-long v10, v16, v18

    .line 3100
    .local v10, "cputime":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    .end local v5    # "outStrings":[Ljava/lang/String;
    .end local v10    # "cputime":J
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 3103
    :catch_0
    move-exception v9

    .line 3104
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method getDeviceStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3004
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_0

    .line 3005
    const-string/jumbo v0, "\u65d7\u8230\u673a"

    .line 3019
    .local v0, "devClass":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3006
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x55

    if-lt v1, v2, :cond_1

    .line 3007
    const-string/jumbo v0, "\u504f\u9ad8\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 3008
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x4b

    if-lt v1, v2, :cond_2

    .line 3009
    const-string/jumbo v0, "\u4e2d\u9ad8\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 3010
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    .line 3011
    const-string/jumbo v0, "\u4e2d\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 3012
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x32

    if-lt v1, v2, :cond_4

    .line 3013
    const-string/jumbo v0, "\u4e2d\u4f4e\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 3014
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mDevicesScore:S

    const/16 v2, 0x28

    if-le v1, v2, :cond_5

    .line 3015
    const-string/jumbo v0, "\u4f4e\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 3017
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "\u975e\u5e38\u4f4e\u7aef"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0
.end method

.method getRunStatus(I)Ljava/lang/String;
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 2988
    const/16 v1, 0x55

    if-lt p1, v1, :cond_0

    .line 2989
    const-string/jumbo v0, "\u8fd0\u884c\u5f88\u6d41\u7545"

    .line 2999
    .local v0, "devClass":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2990
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x46

    if-lt p1, v1, :cond_1

    .line 2991
    const-string/jumbo v0, "\u8fd0\u884c\u8f83\u6d41\u7545"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 2992
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_2

    .line 2993
    const-string/jumbo v0, "\u8fd0\u884c\u4e00\u822c"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 2994
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x32

    if-lt p1, v1, :cond_3

    .line 2995
    const-string/jumbo v0, "\u8fd0\u884c\u504f\u6162"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0

    .line 2997
    .end local v0    # "devClass":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "\u8fd0\u884c\u5f88\u6162"

    .restart local v0    # "devClass":Ljava/lang/String;
    goto :goto_0
.end method

.method getThreadIoWaitTime()V
    .locals 6

    .prologue
    .line 1429
    sget-boolean v5, Lc8/Asf;->sTraceThread:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 1431
    :try_start_0
    iget-object v5, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v5, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    .line 1432
    .local v2, "threadInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1433
    .local v3, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1434
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 1435
    .local v4, "v":Lcom/taobao/onlinemonitor/ThreadInfo;
    iget v5, v4, Lcom/taobao/onlinemonitor/ThreadInfo;->mStatus:I

    if-lez v5, :cond_0

    .line 1436
    invoke-virtual {p0, v4}, Lc8/Asf;->getThreadSchedTime(Lcom/taobao/onlinemonitor/ThreadInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "threadInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    .end local v3    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    .end local v4    # "v":Lcom/taobao/onlinemonitor/ThreadInfo;
    :catch_0
    move-exception v5

    .line 1443
    :cond_1
    return-void
.end method

.method getThreadSchedTime(Lcom/taobao/onlinemonitor/ThreadInfo;)V
    .locals 8
    .param p1, "v"    # Lcom/taobao/onlinemonitor/ThreadInfo;

    .prologue
    .line 1357
    if-eqz p1, :cond_2

    iget-object v6, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v6, v6, Lc8/msf;->mFileSchedIsNotExists:Z

    if-nez v6, :cond_2

    .line 1358
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v7, v7, Lc8/msf;->mMyPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mThreadId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/sched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1359
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1362
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1363
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1365
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1369
    .local v5, "text":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_6

    .line 1370
    const-string/jumbo v6, ".wait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1371
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1372
    .local v4, "split":I
    if-lez v4, :cond_0

    .line 1373
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1374
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitSum:I

    .line 1417
    .end local v4    # "split":I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1376
    :cond_1
    const-string/jumbo v6, ".wait_max"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1377
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1378
    .restart local v4    # "split":I
    if-lez v4, :cond_0

    .line 1379
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1380
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitMax:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1421
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "split":I
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1422
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1426
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 1382
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v6, ".wait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1383
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1384
    .restart local v4    # "split":I
    if-lez v4, :cond_0

    .line 1385
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1386
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mSchedWaitCount:I

    goto :goto_1

    .line 1388
    .end local v4    # "split":I
    :cond_4
    const-string/jumbo v6, "iowait_sum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1389
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1390
    .restart local v4    # "split":I
    if-lez v4, :cond_0

    .line 1391
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1392
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mIoWaitTime:I

    goto :goto_1

    .line 1394
    .end local v4    # "split":I
    :cond_5
    const-string/jumbo v6, "iowait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1395
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1396
    .restart local v4    # "split":I
    if-lez v4, :cond_6

    .line 1397
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1398
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mIoWaitCount:I

    .line 1419
    .end local v4    # "split":I
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 1401
    :cond_7
    const-string/jumbo v6, "iowait_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1402
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1403
    .restart local v4    # "split":I
    if-lez v4, :cond_6

    .line 1404
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1405
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mIoWaitCount:I

    goto :goto_3

    .line 1408
    .end local v4    # "split":I
    :cond_8
    const-string/jumbo v6, "avg_per_cpu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1409
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1410
    .restart local v4    # "split":I
    if-lez v4, :cond_6

    .line 1411
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1412
    iget v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxAvgPerCpu:F

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p1, Lcom/taobao/onlinemonitor/ThreadInfo;->mMaxAvgPerCpu:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method memoryStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3023
    const-string/jumbo v0, ""

    .line 3024
    .local v0, "trimStr":Ljava/lang/String;
    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mTrimMemoryLevel:I

    sparse-switch v1, :sswitch_data_0

    .line 3058
    :goto_0
    return-object v0

    .line 3026
    :sswitch_0
    const-string/jumbo v0, "\u6b63\u5e38"

    .line 3027
    goto :goto_0

    .line 3030
    :sswitch_1
    const-string/jumbo v0, "\u8bbe\u5907\u53ef\u4ee5\u4f7f\u7528\u7684\u5185\u5b58\u975e\u5e38\u4f4e, \u53ef\u4ee5\u628a\u4e0d\u7528\u7684\u8d44\u6e90\u91ca\u653e\u4e00\u4e9b"

    .line 3031
    goto :goto_0

    .line 3034
    :sswitch_2
    const-string/jumbo v0, "\u8bbe\u5907\u4f7f\u7528\u7684\u5185\u5b58\u6bd4\u8f83\u4f4e, \u7cfb\u7edf\u7ea7\u4f1a\u6740\u6389\u4e00\u4e9b\u5176\u5b83\u7684\u7f13\u5b58\u5e94\u7528"

    .line 3035
    goto :goto_0

    .line 3038
    :sswitch_3
    const-string/jumbo v0, "\u7cfb\u7edf\u5df2\u7ecf\u628a\u5927\u591a\u6570\u7f13\u5b58\u5e94\u7528\u6740\u6389\u4e86, \u4f60\u5fc5\u987b\u91ca\u653e\u6389\u4e0d\u662f\u975e\u5e38\u5173\u952e\u7684\u8d44\u6e90"

    .line 3039
    goto :goto_0

    .line 3042
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8be5\u8fdb\u7a0b\u5360\u7528\u8f83\u591a\u5185\u5b58("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v2, Lc8/msf;->mTotalUsedMemory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M)\uff0c\u5e76\u4e14\u8be5\u8fdb\u7a0b\u7684UI\u5df2\u7ecf\u4e0d\u53ef\u89c1\u4e86"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3043
    goto :goto_0

    .line 3046
    :sswitch_5
    const-string/jumbo v0, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8be5\u8fdb\u7a0b\u662f\u540e\u53f0\u8fdb\u7a0b\uff0c\u7cfb\u7edf\u5df2\u7ecf\u5f00\u59cb\u6e05\u9664\u7f13\u5b58\u5217\u8868"

    .line 3047
    goto :goto_0

    .line 3050
    :sswitch_6
    const-string/jumbo v0, "\u5185\u5b58\u4e0d\u8db3\uff0c\u8fdb\u7a0b\u5728\u540e\u53f0\u8fdb\u7a0b\u5217\u8868\u7684\u4e2d\u90e8\uff0c\u5185\u5b58\u7ee7\u7eed\u4e0d\u8db3\uff0c\u5f88\u53ef\u80fd\u5c06\u88ab\u6740"

    .line 3051
    goto :goto_0

    .line 3054
    :sswitch_7
    const-string/jumbo v0, "\u5185\u5b58\u4e0d\u8db3\uff0c\u5e76\u4e14\u8be5\u8fdb\u7a0b\u5728\u540e\u53f0\u8fdb\u7a0b\u5217\u8868\u6700\u540e\u4e00\u4e2a\uff0c\u9a6c\u4e0a\u5c31\u8981\u88ab\u6e05\u7406"

    goto :goto_0

    .line 3024
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_4
        0x28 -> :sswitch_5
        0x3c -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method onActivityCreate(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1244
    iget-object v0, p0, Lc8/Asf;->mActivityWeakMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lc8/Asf;->mActivityWeakMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_0
    sget-boolean v0, Lc8/Asf;->sTraceMemoryAllocator:Z

    if-eqz v0, :cond_1

    sget-object v0, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Lc8/Asf;->startMemoryAllocator()V

    .line 1253
    :cond_1
    return-void
.end method

.method onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1255
    sget-boolean v0, Lc8/Asf;->sTraceMemoryAllocator:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Asf;->sTraceMemoryAllocatorActivity:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {p0}, Lc8/Asf;->stopMemoryAllocator()V

    .line 1259
    :cond_0
    return-void
.end method

.method onBootEnd()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2926
    :try_start_0
    iget-object v9, p0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    if-eqz v9, :cond_2

    .line 2928
    new-instance v9, Landroid/util/SparseIntArray;

    iget-object v10, p0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v9, p0, Lc8/Asf;->mBootSysCpuPercents:Landroid/util/SparseIntArray;

    .line 2929
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v9, p0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 2930
    iget-object v9, p0, Lc8/Asf;->mBootSysCpuPercents:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lc8/Asf;->mSysCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2929
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2932
    :cond_0
    new-instance v9, Landroid/util/SparseIntArray;

    iget-object v10, p0, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v9, p0, Lc8/Asf;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    .line 2933
    const/4 v5, 0x0

    :goto_1
    iget-object v9, p0, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 2934
    iget-object v9, p0, Lc8/Asf;->mBootPidCpuPercents:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lc8/Asf;->mPidCpuPercentRecords:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2933
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2936
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lc8/Asf;->mCpuPercentTimestamps:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lc8/Asf;->mBootCpuPercentTimestamps:Ljava/util/ArrayList;

    .line 2938
    .end local v5    # "index":I
    :cond_2
    iget-object v9, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v9, v9, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->update()I

    .line 2939
    iget-object v9, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v9, v9, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v10, v9, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iput-wide v10, p0, Lc8/Asf;->mSystemTotalCpuTimeEnd:J

    .line 2940
    iget-object v9, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v9, v9, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v10, v9, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iput-wide v10, p0, Lc8/Asf;->mSystemRunCpuTimeEnd:J

    .line 2941
    sget-boolean v9, Lc8/Asf;->sTraceBootProgress:Z

    if-eqz v9, :cond_4

    .line 2942
    sget v9, Lc8/msf;->sApiLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v10, 0x17

    if-ne v9, v10, :cond_5

    .line 2945
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/proc"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2946
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2947
    new-instance v3, Lc8/ksf;

    invoke-direct {v3}, Lc8/ksf;-><init>()V

    .line 2948
    .local v3, "fileNameFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v8

    .line 2949
    .local v8, "procList":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2950
    new-instance v7, Ljava/util/ArrayList;

    array-length v9, v8

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2951
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_3

    .line 2952
    new-instance v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2954
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_2
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 2955
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2951
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2960
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p0, v7, v9}, Lc8/Asf;->getBootOtherProgressInfo(Ljava/util/List;Z)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, p0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2982
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .end local v4    # "i":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v8    # "procList":[Ljava/lang/String;
    :cond_4
    :goto_4
    iget-object v9, p0, Lc8/Asf;->mLifeCycleArray:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lc8/Asf;->checkLifiCycle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 2983
    return-void

    .line 2963
    :catch_0
    move-exception v1

    .line 2964
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 2976
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2977
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2968
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v9, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v9, Lc8/msf;->mActivityManager:Landroid/app/ActivityManager;

    .line 2969
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_4

    .line 2971
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lc8/Asf;->getBootOtherProgressInfo(Ljava/util/List;Z)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, p0, Lc8/Asf;->mSparseArrayBootProgressEnd:Landroid/util/SparseArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileNameFilter":Ljava/io/FilenameFilter;
    .restart local v4    # "i":I
    .restart local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8    # "procList":[Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method onBootStep1()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1196
    sget-boolean v0, Lc8/Asf;->sRecoredBootStepInfo:Z

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, v4, v4, v4}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1198
    iget-object v0, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, v4}, Lc8/msf;->getMemInfo(Z)V

    .line 1199
    iget-object v0, p0, Lc8/Asf;->mBootStepCpu:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v1, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    aput v1, v0, v6

    .line 1200
    iget-object v0, p0, Lc8/Asf;->mBootStepCpu:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v1, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    aput v1, v0, v4

    .line 1201
    iget-object v0, p0, Lc8/Asf;->mBootStepThread:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mRuntimeThreadCount:I

    aput v1, v0, v6

    .line 1202
    iget-object v0, p0, Lc8/Asf;->mBootStepThread:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mRunningThreadCount:I

    aput v1, v0, v4

    .line 1203
    iget-object v0, p0, Lc8/Asf;->mBootStepIoWait:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidIoWaitCount:I

    aput v1, v0, v6

    .line 1204
    iget-object v0, p0, Lc8/Asf;->mBootStepIoWait:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidIoWaitSum:I

    aput v1, v0, v4

    .line 1205
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitCount:I

    int-to-float v1, v1

    aput v1, v0, v6

    .line 1206
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitSum:F

    aput v1, v0, v4

    .line 1207
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitMax:F

    aput v1, v0, v5

    .line 1208
    iget-object v0, p0, Lc8/Asf;->mBootStepCpuLoad:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidPerCpuLoad:F

    aput v1, v0, v6

    .line 1209
    iget-object v0, p0, Lc8/Asf;->mBootStepGcCount:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mTotalGcCount:I

    aput v1, v0, v6

    .line 1210
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v1, v2

    aput v1, v0, v6

    .line 1211
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mDalvikPss:J

    long-to-int v1, v2

    aput v1, v0, v4

    .line 1212
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mNativeHeapPss:J

    long-to-int v1, v2

    aput v1, v0, v5

    .line 1213
    iget-object v0, p0, Lc8/Asf;->mBootStepClass:[I

    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v1

    aput v1, v0, v6

    .line 1214
    iget-object v0, p0, Lc8/Asf;->mBootStepPidTime:[J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v2, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v4, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 1215
    iget-object v0, p0, Lc8/Asf;->mBootStepMainThreadTime:[J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v2, p0, Lc8/Asf;->mMainThreadTid:I

    invoke-virtual {v1, v2}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->loadTaskTime(I)J

    move-result-wide v2

    aput-wide v2, v0, v6

    .line 1217
    :cond_0
    return-void
.end method

.method onBootStep2()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 1220
    sget-boolean v0, Lc8/Asf;->sRecoredBootStepInfo:Z

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, v6, v6, v6}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 1222
    iget-object v0, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0, v6}, Lc8/msf;->getMemInfo(Z)V

    .line 1223
    iget-object v0, p0, Lc8/Asf;->mBootStepThread:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mRuntimeThreadCount:I

    aput v1, v0, v5

    .line 1224
    iget-object v0, p0, Lc8/Asf;->mBootStepThread:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mRunningThreadCount:I

    aput v1, v0, v4

    .line 1225
    iget-object v0, p0, Lc8/Asf;->mBootStepCpu:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v1, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalSysPercent:I

    aput v1, v0, v5

    .line 1226
    iget-object v0, p0, Lc8/Asf;->mBootStepCpu:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v1, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mMyPidPercent:I

    aput v1, v0, v4

    .line 1227
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mTotalUsedMemory:J

    long-to-int v1, v2

    aput v1, v0, v4

    .line 1228
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mDalvikPss:J

    long-to-int v1, v2

    aput v1, v0, v7

    .line 1229
    iget-object v0, p0, Lc8/Asf;->mBootStepMem:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-wide v2, v1, Lc8/msf;->mNativeHeapPss:J

    long-to-int v1, v2

    aput v1, v0, v8

    .line 1230
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitCount:I

    int-to-float v1, v1

    aput v1, v0, v4

    .line 1231
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitSum:F

    aput v1, v0, v7

    .line 1232
    iget-object v0, p0, Lc8/Asf;->mBootStepSched:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidWaitMax:F

    aput v1, v0, v8

    .line 1233
    iget-object v0, p0, Lc8/Asf;->mBootStepCpuLoad:[F

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidPerCpuLoad:F

    aput v1, v0, v6

    .line 1234
    iget-object v0, p0, Lc8/Asf;->mBootStepGcCount:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mTotalGcCount:I

    aput v1, v0, v6

    .line 1235
    iget-object v0, p0, Lc8/Asf;->mBootStepIoWait:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidIoWaitCount:I

    aput v1, v0, v5

    .line 1236
    iget-object v0, p0, Lc8/Asf;->mBootStepIoWait:[I

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget v1, v1, Lc8/msf;->mPidIoWaitSum:I

    aput v1, v0, v4

    .line 1237
    iget-object v0, p0, Lc8/Asf;->mBootStepClass:[I

    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v1

    aput v1, v0, v6

    .line 1238
    iget-object v0, p0, Lc8/Asf;->mBootStepPidTime:[J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v2, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessUserTime:J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v4, v1, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mProcessSystemTime:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 1239
    iget-object v0, p0, Lc8/Asf;->mBootStepMainThreadTime:[J

    iget-object v1, p0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v2, p0, Lc8/Asf;->mMainThreadTid:I

    invoke-virtual {v1, v2}, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->loadTaskTime(I)J

    move-result-wide v2

    aput-wide v2, v0, v6

    .line 1241
    :cond_0
    return-void
.end method

.method public saveBigBitmap(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 15
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3140
    .local p1, "arrayListBigBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 3165
    :cond_0
    return-void

    .line 3143
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/BigBitmap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3144
    .local v8, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3145
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3146
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3148
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3149
    .local v9, "path2":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3150
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3151
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3153
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3154
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 3155
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 3156
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 3157
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 3158
    .local v6, "heigt":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 3159
    .local v10, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 3160
    .local v2, "bmpByte":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 3161
    .local v3, "bmpConfig":Landroid/graphics/Bitmap$Config;
    const-string/jumbo v11, "OnLineMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u68c0\u6d4b\u5230\u5927\u56fe\u7247: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",\u5927\u5c0f\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x44800000    # 1024.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x44800000    # 1024.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " M "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-int/lit16 v12, v2, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "kb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-int/lit16 v12, v2, 0x400

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "m.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v9, v11}, Lc8/Asf;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    .end local v2    # "bmpByte":I
    .end local v3    # "bmpConfig":Landroid/graphics/Bitmap$Config;
    .end local v6    # "heigt":I
    .end local v10    # "width":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method startMemoryAllocator()V
    .locals 1

    .prologue
    .line 1263
    sget-boolean v0, Lc8/Asf;->sTraceMemoryAllocator:Z

    if-nez v0, :cond_0

    .line 1267
    :cond_0
    return-void
.end method

.method stopMemoryAllocator()V
    .locals 1

    .prologue
    .line 1270
    sget-boolean v0, Lc8/Asf;->sTraceMemoryAllocator:Z

    if-nez v0, :cond_0

    .line 1274
    :cond_0
    return-void
.end method

.method traceHook()V
    .locals 8

    .prologue
    .line 773
    sget-boolean v2, Lc8/Asf;->sNeedHook:Z

    if-eqz v2, :cond_0

    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    if-nez v2, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    sget-object v2, Lc8/Asf;->sOnlineHookedMethod:Lc8/ysf;

    if-nez v2, :cond_2

    .line 777
    new-instance v2, Lc8/usf;

    invoke-direct {v2, p0}, Lc8/usf;-><init>(Lc8/Asf;)V

    sput-object v2, Lc8/Asf;->sOnlineHookedMethod:Lc8/ysf;

    .line 1119
    :cond_2
    sget-boolean v2, Lc8/Asf;->sTraceThreadPool:Z

    if-eqz v2, :cond_3

    .line 1121
    :try_start_0
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v2, v3}, Lc8/xsf;->hookAllConstructors(Ljava/lang/Class;)V

    .line 1122
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "start"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/os/AsyncTask;

    const-string/jumbo v4, "execute"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/os/AsyncTask;

    const-string/jumbo v4, "executeOnExecutor"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v4, "execute"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v4, "beforeExecute"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Thread;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v4, "afterExecute"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Runnable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1133
    :cond_3
    :goto_1
    sget-boolean v2, Lc8/Asf;->sTraceLog:Z

    if-eqz v2, :cond_4

    .line 1135
    :try_start_1
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/util/Log;

    const-string/jumbo v4, "println_native"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lc8/xsf;->hookAllConstructors(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1142
    :cond_4
    :goto_2
    sget-boolean v2, Lc8/Asf;->sTraceGetStack:Z

    if-eqz v2, :cond_5

    .line 1144
    :try_start_2
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "getAllStackTraces"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "getStackTrace"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1150
    :cond_5
    :goto_3
    sget-boolean v2, Lc8/Asf;->sTraceThreadPriority:Z

    if-eqz v2, :cond_6

    .line 1152
    :try_start_3
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "setPriority"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/os/Process;

    const-string/jumbo v4, "setThreadPriority"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 1159
    :cond_6
    :goto_4
    sget-boolean v2, Lc8/Asf;->sTraceSoFile:Z

    if-eqz v2, :cond_7

    .line 1161
    :try_start_4
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Ljava/lang/System;

    const-string/jumbo v4, "loadLibrary"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 1167
    :cond_7
    :goto_5
    sget-boolean v2, Lc8/Asf;->sTraceWakelock:Z

    if-eqz v2, :cond_8

    .line 1169
    :try_start_5
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v4, "acquire"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Long;

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-class v3, Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v4, "acquire"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 1176
    :cond_8
    :goto_6
    sget-boolean v2, Lc8/Asf;->sTraceSharedPreferences:Z

    if-eqz v2, :cond_0

    .line 1178
    :try_start_6
    const-string/jumbo v2, "android.app.SharedPreferencesImpl$EditorImpl"

    invoke-static {v2}, Lc8/Asf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1179
    .local v0, "clazz":Ljava/lang/Class;
    iput-object v0, p0, Lc8/Asf;->mEditorImpl:Ljava/lang/Class;

    .line 1180
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "putString"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "putInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "putLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "putFloat"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "putBoolean"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "remove"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "apply"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    sget-object v2, Lc8/Asf;->sOnlineHookMethod:Lc8/xsf;

    const-string/jumbo v3, "commit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lc8/xsf;->hookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1188
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 1189
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1128
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1129
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1137
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 1138
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 1146
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 1147
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 1154
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 1155
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1162
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 1163
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 1171
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v1

    .line 1172
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6
.end method

.method traceThreadInfo()V
    .locals 22

    .prologue
    .line 1277
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    .line 1278
    .local v2, "ThreadTraceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-nez v2, :cond_1

    .line 1354
    :cond_0
    return-void

    .line 1281
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mSparseArrayThreadName:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 1282
    new-instance v18, Landroid/util/SparseArray;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x14

    invoke-direct/range {v18 .. v19}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Asf;->mSparseArrayThreadName:Landroid/util/SparseArray;

    .line 1287
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mThreadStackHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1288
    new-instance v18, Ljava/util/HashMap;

    const/16 v19, 0x80

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Asf;->mThreadStackHashMap:Ljava/util/HashMap;

    .line 1291
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v18, 0x12c

    move/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1292
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 1293
    .local v14, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1294
    .local v4, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v4, :cond_4

    .line 1295
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    .line 1296
    .local v13, "thread":Ljava/lang/Thread;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    .line 1297
    .local v11, "stackTraceElements":[Ljava/lang/StackTraceElement;
    if-eqz v13, :cond_4

    .line 1300
    const/16 v16, 0x0

    .line 1301
    .local v16, "threadid":I
    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    .line 1302
    const/16 v16, 0x1

    .line 1309
    :cond_5
    :goto_1
    if-nez v16, :cond_4

    .line 1310
    if-eqz v11, :cond_4

    .line 1311
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 1312
    aget-object v18, v11, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    const-string/jumbo v18, "<br>"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1304
    .end local v6    # "i":I
    :cond_6
    instance-of v0, v13, Landroid/os/HandlerThread;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object v5, v13

    .line 1305
    check-cast v5, Landroid/os/HandlerThread;

    .line 1306
    .local v5, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v16

    goto :goto_1

    .line 1315
    .end local v5    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v6    # "i":I
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1316
    .local v10, "stack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mThreadStackHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 1340
    .end local v4    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v6    # "i":I
    .end local v10    # "stack":Ljava/lang/String;
    .end local v11    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v13    # "thread":Ljava/lang/Thread;
    .end local v16    # "threadid":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 1342
    .local v15, "threadSetInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1343
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/onlinemonitor/ThreadInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/onlinemonitor/ThreadInfo;

    .line 1344
    .local v17, "v":Lcom/taobao/onlinemonitor/ThreadInfo;
    if-eqz v17, :cond_9

    .line 1345
    move-object/from16 v0, v17

    iget v0, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v17

    iget v8, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mId:I

    .line 1346
    .local v8, "id":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mSparseArrayThreadName:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1347
    .local v12, "tName":Ljava/lang/String;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 1348
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mName:Ljava/lang/String;

    goto :goto_3

    .line 1345
    .end local v8    # "id":I
    .end local v12    # "tName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    iget v8, v0, Lcom/taobao/onlinemonitor/ThreadInfo;->mThreadId:I

    goto :goto_4
.end method

.method public unZipFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "outputFolder"    # Ljava/lang/String;

    .prologue
    .line 632
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v9, "folder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 640
    :cond_2
    const/4 v11, 0x0

    .line 642
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 643
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 645
    .local v6, "emu":Ljava/util/Enumeration;
    const/16 v4, 0x800

    .line 647
    .local v4, "bufferSize":I
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 648
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 650
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 651
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 677
    .end local v4    # "bufferSize":I
    .end local v6    # "emu":Ljava/util/Enumeration;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v11, :cond_0

    .line 679
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 682
    :catch_1
    move-exception v13

    goto :goto_0

    .line 655
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufferSize":I
    .restart local v6    # "emu":Ljava/util/Enumeration;
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v8, "filetoZip":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 657
    .local v10, "parent":Ljava/io/File;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 658
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 662
    :cond_4
    new-array v3, v4, [B

    .line 663
    .local v3, "buffer":[B
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 664
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v12, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 665
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v1, v3, v13, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .local v5, "count":I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_6

    .line 667
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 677
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v5    # "count":I
    .end local v6    # "emu":Ljava/util/Enumeration;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "filetoZip":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    :catchall_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_4
    if-eqz v11, :cond_5

    .line 679
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 682
    :cond_5
    :goto_5
    throw v13

    .line 669
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "bufferSize":I
    .restart local v5    # "count":I
    .restart local v6    # "emu":Ljava/util/Enumeration;
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "filetoZip":Ljava/io/File;
    .restart local v10    # "parent":Ljava/io/File;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 670
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 671
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 672
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 677
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "count":I
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "filetoZip":Ljava/io/File;
    .end local v10    # "parent":Ljava/io/File;
    :cond_7
    if-eqz v12, :cond_8

    .line 679
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 682
    :catch_2
    move-exception v13

    goto/16 :goto_0

    .end local v4    # "bufferSize":I
    .end local v6    # "emu":Ljava/util/Enumeration;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v14

    goto :goto_5

    .line 677
    :catchall_1
    move-exception v13

    goto :goto_4

    :catch_4
    move-exception v13

    goto/16 :goto_2

    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "bufferSize":I
    .restart local v6    # "emu":Ljava/util/Enumeration;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_8
    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_0
.end method

.method writePageInfo(Z)V
    .locals 24
    .param p1, "isToSleep"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    sget-object v20, Lc8/osf;->sPropertyFilePath:Ljava/lang/String;

    if-nez v20, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1452
    .local v3, "c":Ljava/util/Calendar;
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1453
    .local v4, "day":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v12, v20, 0x1

    .line 1454
    .local v12, "month":I
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1455
    .local v8, "hour":I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1456
    .local v10, "minute":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileModel:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, " "

    const-string/jumbo v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1458
    .local v18, "strDate":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1460
    .local v15, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1462
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 1465
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lc8/Asf;->generateOutputData(Ljava/lang/String;Z)V

    .line 1466
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mTemplateZipFile:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1468
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lc8/Asf;->unZipFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 1471
    :cond_3
    sget-boolean v20, Lc8/Asf;->sTraceBigBitmap:Z

    if-eqz v20, :cond_4

    .line 1472
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/BigBitmap"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1473
    .local v16, "pathBigBmp":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v7, "filebigbmp":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1475
    new-instance v6, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/BigBitmap"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v6, "fileNew":Ljava/io/File;
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1490
    .end local v6    # "fileNew":Ljava/io/File;
    .end local v7    # "filebigbmp":Ljava/io/File;
    .end local v16    # "pathBigBmp":Ljava/lang/String;
    :cond_4
    const-string/jumbo v20, "OnLineMonitor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u6027\u80fd\u62a5\u544a\u5df2\u751f\u6210\uff0c\u4e0b\u8f7d\u53ef\u4ee5\u901a\u8fc7 adb pull /sdcard/android/data/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/files/OnlineMonitor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ./"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1493
    sget-boolean v20, Lc8/osf;->sPerformanceReportNotification:Z

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Asf;->mHasMemroyLeack:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1494
    :cond_5
    sget v20, Lc8/msf;->sApiLevel:I

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 1496
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "notification"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 1497
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    const/16 v19, 0x0

    .line 1498
    .local v19, "strSubText":Ljava/lang/String;
    sget v20, Lc8/osf;->sToSleepTime:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x476a6000    # 60000.0f

    div-float v11, v20, v21

    .line 1500
    .local v11, "minutes":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/msf;->mLeakMemoryWeakMap:Ljava/util/WeakHashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/WeakHashMap;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 1501
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\u53d1\u73b0\u5185\u5b58\u6cc4\u6f0f,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\u5206\u949f\u540e\u5f00\u59cb\u5206\u6790\u6cc4\u6f0f\u8def\u5f84!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1504
    :cond_6
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1505
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1506
    const-string/jumbo v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mExternalPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/index.html"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    const-string/jumbo v21, "text/html"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const-string/jumbo v20, "com.android.browser"

    const-string/jumbo v21, "com.android.browser.BrowserActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    const/high16 v22, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 1511
    .local v17, "pi":Landroid/app/PendingIntent;
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v21, "OnlineMonitor\u68c0\u6d4b\u62a5\u544a\u5df2\u7ecf\u751f\u6210"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x108008a

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string/jumbo v21, "OnlineMonitor\u68c0\u6d4b\u62a5\u544a"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string/jumbo v21, "\u70b9\u51fb\u53ef\u4ee5\u67e5\u770b\u6216\u8005\u901a\u8fc7Adb\u4e0b\u8f7d\u6587\u4ef6\u5939!"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 1518
    .local v13, "notification":Landroid/app/Notification;
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 1519
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1520
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1521
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1522
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "minutes":F
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notificationManager":Landroid/app/NotificationManager;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    .end local v19    # "strSubText":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_0
.end method

.method writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 3113
    const/4 v0, 0x0

    .line 3114
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3115
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3116
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3119
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3126
    if-eqz v1, :cond_1

    .line 3127
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3128
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3130
    :cond_1
    iget-object v4, p0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 3135
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 3132
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 3133
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 3135
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 3121
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 3122
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3126
    if-eqz v0, :cond_2

    .line 3127
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3128
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 3130
    :cond_2
    iget-object v4, p0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3132
    :catch_2
    move-exception v2

    .line 3133
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3125
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 3126
    :goto_2
    if-eqz v0, :cond_3

    .line 3127
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3128
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 3130
    :cond_3
    iget-object v5, p0, Lc8/Asf;->mFileToZipList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3134
    :goto_3
    throw v4

    .line 3132
    :catch_3
    move-exception v2

    .line 3133
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3125
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 3121
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_1
.end method
